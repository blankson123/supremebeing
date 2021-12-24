import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '/core/core.dart';
import '/core/presentation/presentation.dart';
import '/features/auth/presentation/widgets/category_card.dart';
import '/features/auth/presentation/widgets/sound_category_card.dart';
import '/features/supreme_being/presentation/widgets/audio_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                  children: <Widget>[
                    const AppSpacing(v: 20),
                    Padding(
                      padding: AppPaddings.mV.add(AppPaddings.homeH),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Ionicons.bag,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: _buildNotificationButton(context),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: AppPaddings.homeA,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile_image.jpg'),
                            radius: 30,
                          ),
                          const AppSpacing(h: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Nice to see you, Blankson!',
                                style: context.body1.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const AppSpacing(v: 5),
                              Text(
                                'How would you like to feel?',
                                style: context.caption.copyWith(
                                  color: context.colors.text,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // const AppSpacing(v: 20),
                    _buildColumnHeader(context, 'Categories', false,
                        padding: AppPaddings.homeH),
                    SizedBox(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const <Widget>[
                          AppSpacing(h: 28),
                          CategoryCard(
                            image: 'assets/icons/meditation.png',
                            title: 'CALMNESS',
                          ),
                          AppSpacing(h: 20),
                          CategoryCard(
                            image: 'assets/icons/witness.png',
                            title: 'CLARITY',
                          ),
                          AppSpacing(h: 20),
                          CategoryCard(
                            image: 'assets/icons/heart.png',
                            title: 'HEALTH',
                          ),
                          AppSpacing(h: 20),
                          CategoryCard(
                            image: 'assets/icons/happy.png',
                            title: 'HAPPINESS',
                          ),
                          AppSpacing(h: 28),
                        ],
                      ),
                    ),
                    const AppSpacing(v: 20),
                    _buildColumnHeader(context, 'Recent Videos', true,
                        padding: AppPaddings.homeH),
                    SizedBox(
                      height: 270,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const <Widget>[
                          AppSpacing(h: 28),
                          SoundCategoryCard(
                            image: 'assets/images/sound_bath.jpg',
                            title: '5 minutes sound bath meditation',
                            subtitle: 'Calmness',
                            duration: '04:47',
                          ),
                          AppSpacing(h: 20),
                          SoundCategoryCard(
                            image: 'assets/images/sound_bath.jpg',
                            title: '5 minutes sound bath meditation',
                            subtitle: 'Clarity',
                            duration: '04:47',
                          ),
                          AppSpacing(h: 20),
                          SoundCategoryCard(
                            image: 'assets/images/sound_bath.jpg',
                            title: '5 minutes sound bath meditation',
                            subtitle: 'Health',
                            duration: '04:47',
                          ),
                          AppSpacing(h: 28),
                        ],
                      ),
                    ),
                    _buildColumnHeader(context, 'Recent Audios', true,
                        padding: AppPaddings.homeH),
                    Padding(
                      padding: AppPaddings.homeH.add(AppPaddings.homeB),
                      child: Column(
                        children: const <Widget>[
                          AudioCard(),
                          AppSpacing(v: 5),
                          AudioCard(),
                          AppSpacing(v: 5),
                          AudioCard(),
                          AppSpacing(v: 5),
                          AudioCard(),
                          AppSpacing(v: 5),
                          AudioCard(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildAudioCard(BuildContext context) {
  //   return Row(
  //     children: <Widget>[
  //       Image.asset(
  //         'assets/images/sound_bath.jpg',
  //         height: 50,
  //         width: 50,
  //         fit: BoxFit.cover,
  //       ),
  //       const AppSpacing(h: 10),
  //       Expanded(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: <Widget>[
  //             Text(
  //               'Sound bath meditation',
  //               style: context.body1.copyWith(
  //                 color: Colors.white,
  //                 fontWeight: FontWeight.normal,
  //               ),
  //               overflow: TextOverflow.ellipsis,
  //             ),
  //             const AppSpacing(v: 8),
  //             Text(
  //               'Calmness',
  //               style: context.caption.copyWith(
  //                 color: context.colors.text,
  //                 fontWeight: FontWeight.normal,
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         children: <Widget>[
  //           IconButton(
  //             onPressed: () {},
  //             icon: const Icon(
  //               Ionicons.play,
  //               color: Colors.white,
  //             ),
  //           ),
  //           Text(
  //             '04:47',
  //             style: context.caption.copyWith(
  //                 color: context.colors.text, fontFamily: AppFonts.julius),
  //           )
  //         ],
  //       ),
  //     ],
  //   );
  // }

  Widget _buildColumnHeader(
      BuildContext context, String title, bool showViewAll,
      {EdgeInsetsGeometry padding = EdgeInsets.zero}) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: context.body1.copyWith(
              color: Colors.white,
              fontFamily: AppFonts.julius,
            ),
          ),
          if (showViewAll)
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: context.body1.copyWith(
                  color: context.colors.primary,
                  fontFamily: AppFonts.julius,
                ),
              ),
            )
          else
            const SizedBox.shrink(),
        ],
      ),
    );
  }

  Stack _buildNotificationButton(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Icon(
          Icons.notifications,
          size: 30,
          color: Colors.white,
        ),
        Positioned(
          right: 3,
          top: 2,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
              borderRadius: AppBorderRadius.largeAll,
              color: context.colors.error,
            ),
          ),
        ),
      ],
    );
  }
}

// child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       const SizedBox(height: 20),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Text(
//                           'Explore Items',
//                           style:
//                               Theme.of(context).textTheme.headline4!.copyWith(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                         ),
//                       ),
//                       const SizedBox(height: 15),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Text(
//                           'Search our library and find more sound baths.',
//                           style: context.textTheme.subtitle1?.copyWith(
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'Find the key to calmness',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(15),
//                               borderSide: const BorderSide(
//                                 color: Color(0xFF000d35),
//                                 style: BorderStyle.solid,
//                                 width: 2,
//                               ),
//                             ),
//                             suffixIcon: const Icon(
//                               Ionicons.search_outline,
//                               size: 24,
//                               color: Colors.white,
//                             ),
//                             suffixIconConstraints: const BoxConstraints(
//                               maxHeight: 24,
//                               maxWidth: 24,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 40),
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20),
//                           child: Text(
//                             'Categories',
//                             style:
//                                 Theme.of(context).textTheme.headline5!.copyWith(
//                                       color: Colors.white,
//                                     ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Container(
//                         height: 120,
//                         padding: const EdgeInsets.symmetric(vertical: 8),
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: const <Widget>[
//                             SizedBox(width: 20),
//                             CategoryCard(
//                               image: 'assets/icons/meditation.png',
//                               title: 'Calmness',
//                             ),
//                             SizedBox(width: 20),
//                             CategoryCard(
//                               image: 'assets/icons/witness.png',
//                               title: 'Clarity',
//                             ),
//                             SizedBox(width: 20),
//                             CategoryCard(
//                               image: 'assets/icons/heart.png',
//                               title: 'Health',
//                             ),
//                             SizedBox(width: 20),
//                             CategoryCard(
//                               image: 'assets/icons/happy.png',
//                               title: 'Happiness',
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 30),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             'Recommended Sound Baths',
//                             style:
//                                 Theme.of(context).textTheme.headline5!.copyWith(
//                                       color: Colors.white,
//                                     ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       Container(
//                         height: 270,
//                         padding: const EdgeInsets.symmetric(vertical: 8),
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: const <Widget>[
//                             SizedBox(width: 20),
//                             SoundCategoryCard(
//                               image: 'assets/images/auth_bg2.jpg',
//                               title: 'Relax',
//                               subtitle: 'Spiritual Awareness',
//                               duration: '12min',
//                             ),
//                             SizedBox(width: 20),
//                             SoundCategoryCard(
//                               image: 'assets/images/auth_bg3.jpg',
//                               title: 'Focus',
//                               subtitle: 'MEDITATION',
//                               duration: '7min',
//                             ),
//                             SizedBox(width: 20),
//                             SoundCategoryCard(
//                               image: 'assets/images/auth_bg2.jpg',
//                               title: 'Mindfulness',
//                               subtitle: 'HEALING',
//                               duration: '12min',
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
