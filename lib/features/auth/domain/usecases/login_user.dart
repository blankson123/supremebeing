import 'package:dartz/dartz.dart';

import '/core/core.dart';
import '/core/usecase/usecase.dart';
import '/features/auth/domain/repositories/auth_repository.dart';
import '/features/auth/domain/requests/login_request.dart';
import '../../data/models/user/user_model.dart';

class LoginUser implements UseCase<User, LoginRequest> {
  LoginUser({required this.authRepository});
  final AuthRepository authRepository;

  @override
  Future<Either<Failure, User>> call(LoginRequest params) {
    return authRepository.login(params);
  }
}
