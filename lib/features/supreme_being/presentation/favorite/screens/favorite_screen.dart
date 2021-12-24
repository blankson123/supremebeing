import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:supreme_being/features/supreme_being/presentation/widgets/audio_card.dart';

import '/core/core.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/auth_bg4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                alignment: Alignment.center,
                color: Colors.black.withOpacity(0.5),
                child: ListView(
                  padding: AppPaddings.homeH,
                  children: <Widget>[
                    Container(
                      // height: 56,
                      padding: AppPaddings.homeV,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'All Sound Bath Audios',
                        style: context.body1.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    AppTextInput(
                      // labelText: 'EMAIL ADDRESS',
                      // initialValue: state.emailAddress,
                      maxHeight: 41,
                      padding: const EdgeInsets.all(10),
                      hintText: 'Search sound bath audio',
                      backgroundColor: Colors.white,
                      suffixIcon: Icon(
                        Ionicons.search_outline,
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
                    const AppSpacing(v: 20),
                    const AudioCard(),
                    const AppSpacing(v: 20),
                    const AudioCard(),
                    const AppSpacing(v: 20),
                    const AudioCard(),
                    const AppSpacing(v: 20),
                    const AudioCard(),
                    const AppSpacing(v: 20),
                    const AudioCard(),
                    const AppSpacing(v: 20),
                    const AudioCard(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
