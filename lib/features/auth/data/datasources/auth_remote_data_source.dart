import '/features/auth/data/models/responses/login_response.dart';
import '/features/auth/domain/requests/login_request.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> login(LoginRequest request);
}
