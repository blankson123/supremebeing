import 'package:dartz/dartz.dart';

import '/core/core.dart';
import '/features/auth/domain/requests/login_request.dart';
import '../../data/models/user/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, User>> login(LoginRequest request);
  Future<Either<Failure, User>> loadUser();
}
