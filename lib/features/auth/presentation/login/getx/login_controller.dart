import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core/core.dart';
import '/core/presentation/widgets/app_snacks.dart';
import '/features/auth/data/models/user/user_model.dart';
import '/features/auth/domain/requests/login_request.dart';
import '/features/auth/domain/usecases/login_user.dart';

class LoginController extends GetxController {
  LoginController({
    required this.loginUser,
  });
  final LoginUser loginUser;

  RxBool isObscured = true.obs;
  RxBool isLoading = false.obs;
  RxString email = ''.obs;
  RxString password = ''.obs;

  void togglePasswordVisibility() {
    isObscured(!isObscured.value);
  }

  void login(BuildContext context) async {
    // ignore: unawaited_futures
    isLoading(true);

    final Either<Failure, User> failureOrUser = await loginUser(
      LoginRequest(
        email: email.value,
        password: password.value,
      ),
    );

    // ignore: unawaited_futures
    failureOrUser.fold(
      (Failure failure) {
        isLoading(false);
        AppSnacks.show(context, message: failure.message);
      },
      (User user) {
        isLoading(false);
        Get.offAllNamed<void>(AppRoutes.base);
      },
    );
  }

  void onEmailInputChanged(String value) {
    email(value);
  }

  void onPasswordInputChanged(String value) {
    password(value);
  }

  String? validateEmail(String? email) {
    String? errorMessage;
    if (email!.isEmpty) {
      errorMessage = 'Please enter email address';
    }
    return errorMessage;
  }

  String? validatePassword(String? password) {
    String? errorMessage;
    if (password!.isEmpty) {
      errorMessage = 'Please enter password';
    }
    return errorMessage;
  }

  bool get formIsValid =>
      validateEmail(email.value) == null &&
      validatePassword(password.value) == null;
}
