import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';

import '/core/core.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String route = 'LoginScreen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLoadingBox(
      loading: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.maxFinite,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/dion.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.black.withOpacity(0.7),
                  child: SingleChildScrollView(
                    padding: AppPaddings.bodyH,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        AppAnimatedColumn(
                          duration: const Duration(milliseconds: 1000),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const AppSpacing(v: 60),
                            Text(
                              'Welcome back',
                              style: context.h4.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const AppSpacing(v: 9),
                            Text(
                              'LOGIN TO CONTINUE',
                              style: context.body1.copyWith(
                                color: context.colors.yellow,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const AppSpacing(v: 57),
                            AppTextInput(
                              labelText: 'EMAIL ADDRESS',
                              // initialValue: state.emailAddress,
                              backgroundColor: context.colors.primary.shade100,
                              prefixIcon: Icon(
                                Ionicons.mail_outline,
                                color: context.colors.iconColor,
                              ),
                              lableStyle: context.overline.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              errorStyle: context.captionError.copyWith(
                                color: context.colors.error,
                              ),
                              validator: (String? value) {},
                              onChanged: (String emailAddress) {},
                            ),
                            const AppSpacing(v: 8),
                            AppTextInput(
                              obscureText: true,
                              labelText: 'PASSWORD',
                              showObscureTextToggle: true,
                              backgroundColor: context.colors.primary.shade100,
                              prefixIcon: Icon(
                                Ionicons.lock_closed_outline,
                                color: context.colors.iconColor,
                              ),
                              lableStyle: context.overline.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              errorStyle: context.captionError.copyWith(
                                color: context.colors.error,
                              ),
                              validator: (String? value) {},
                              onChanged: (String password) {},
                            ),
                            const AppSpacing(v: 10),
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: context.body2.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: context.colors.error,
                                  ),
                                ),
                              ),
                            ),
                            const AppSpacing(v: 12),
                            AppButton(
                              // enabled: state.formIsValid,
                              padding: EdgeInsets.zero,
                              backgroundColor: context.colors.primary,
                              onPressed: () =>
                                  Get.toNamed<void>(AppRoutes.main),
                              child: const Text(
                                'SIGN IN',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const AppSpacing(v: 10),
                            TextButton(
                              onPressed: () =>
                                  Get.toNamed<void>(AppRoutes.register),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: context.body2,
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: "Don't have an account? ",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Sign Up',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () => Get.toNamed<void>(
                                              AppRoutes.register),
                                        style: TextStyle(
                                          color: context.colors.primary,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const AppSpacing(v: 15),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
