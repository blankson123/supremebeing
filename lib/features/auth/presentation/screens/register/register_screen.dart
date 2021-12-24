import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:ionicons/ionicons.dart';

import '/core/core.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return AppLoadingBox(
      loading: false,
      child: Scaffold(
        backgroundColor: context.colors.background,
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
                      children: <Widget>[
                        AppAnimatedColumn(
                          direction: Axis.horizontal,
                          duration: const Duration(milliseconds: 1000),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const AppSpacing(v: 70),
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  text: 'SIGN UP WITH ',
                                  style: context.h5.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'SUPREME BEIGN',
                                      style: context.h5.copyWith(
                                        color: context.colors.yellow,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const AppSpacing(v: 30),
                            AppTextInput(
                              labelText: 'FIRST NAME',
                              prefixIcon: Icon(
                                Ionicons.person_outline,
                                color: context.colors.iconColor,
                              ),
                              initialValue: '',
                              backgroundColor: context.colors.primary.shade100,
                              lableStyle: context.overline.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              validator: (String firstName) {},
                              onChanged: (String firstName) {},
                            ),
                            const AppSpacing(v: 8),
                            AppTextInput(
                              labelText: 'LAST NAME',
                              prefixIcon: Icon(
                                Ionicons.person_outline,
                                color: context.colors.iconColor,
                              ),
                              initialValue: '',
                              backgroundColor: context.colors.primary.shade100,
                              lableStyle: context.overline.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              validator: (String lastName) {},
                              onChanged: (String lastName) {},
                            ),
                            const AppSpacing(v: 8),
                            AppTextInput(
                              labelText: 'EMAIL',
                              prefixIcon: Icon(
                                Ionicons.mail_outline,
                                color: context.colors.iconColor,
                              ),
                              initialValue: '',
                              backgroundColor: context.colors.primary.shade100,
                              lableStyle: context.overline.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              validator: (String email) {},
                              onChanged: (String email) {},
                            ),
                            const AppSpacing(v: 8),
                            AppTextInput(
                              labelText: 'PHONE NUMBER',
                              prefixIcon: Icon(
                                Ionicons.call_outline,
                                color: context.colors.iconColor,
                              ),
                              initialValue: '',
                              textInputType: TextInputType.phone,
                              backgroundColor: context.colors.primary.shade100,
                              lableStyle: context.overline.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                              ),
                              validator: (String phoneNumber) {},
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                                FilteringTextInputFormatter.deny(' '),
                              ],
                              onChanged: (String phoneNumber) {},
                            ),
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
                              validator: (String value) {},
                              onChanged: (String password) {},
                            ),
                            const AppSpacing(v: 49),
                            AppButton(
                              enabled: true,
                              borderRadius: AppBorderRadius.largeAll,
                              onPressed: () {},
                              child: const Text(
                                'SIGN UP',
                              ),
                            ),
                            const AppSpacing(v: 10),
                            TextButton(
                              onPressed: () =>
                                  Get.toNamed<void>(AppRoutes.login),
                              child: Center(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: context.body2,
                                    children: <TextSpan>[
                                      const TextSpan(
                                        text: 'Already have an account? ',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Sign In',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Get.toNamed<void>(AppRoutes.login);
                                          },
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
                            const AppSpacing(v: 70),
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
