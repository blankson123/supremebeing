import 'package:dartz/dartz.dart';

import '/core/core.dart';
import '/features/auth/data/datasources/auth_local_data_source.dart';
import '/features/auth/data/datasources/auth_remote_data_source.dart';
import '/features/auth/data/models/responses/login_response.dart';
import '/features/auth/domain/repositories/auth_repository.dart';
import '/features/auth/domain/requests/login_request.dart';
import '../models/user/user_model.dart';

class AuthRepositoryImpl extends Repository implements AuthRepository {
  AuthRepositoryImpl({
    required this.authRemoteDataSource,
    required this.authLocalDataSource,
  });

  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;

  @override
  Future<Either<Failure, User>> login(LoginRequest request) async {
    final Either<Failure, LoginResponse> response =
        await makeRequest(authRemoteDataSource.login(request));
    return response.fold((Failure failure) => left(failure),
        (LoginResponse response) async {
      await authLocalDataSource.persistAuthResponse(response);
      return right(response.user);
    });
  }

  @override
  Future<Either<Failure, User>> loadUser() async {
    final Either<Failure, LoginResponse> response =
        await makeLocalRequest(authLocalDataSource.getAuthResponse);
    return response.fold((Failure failure) => left(failure),
        (LoginResponse response) async {
      await authLocalDataSource.persistAuthResponse(response);
      return right(response.user);
    });
  }
}
