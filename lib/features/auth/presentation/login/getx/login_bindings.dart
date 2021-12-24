import 'package:get/get.dart';

import '/features/auth/domain/usecases/login_user.dart';
import 'login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(
        loginUser: LoginUser(
          authRepository: Get.find(),
        ),
      ),
    );
  }
}
