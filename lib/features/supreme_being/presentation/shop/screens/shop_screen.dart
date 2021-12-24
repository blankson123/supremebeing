import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ionicons/ionicons.dart';
import 'package:supreme_being/core/core.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

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
                child: Column(
                  children: <Widget>[
                    Container(
                      // height: 56,
                      padding: AppPaddings.homeV,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Shop Items',
                        style: context.body1.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: AppPaddings.homeH,
                      child: AppTextInput(
                        // labelText: 'EMAIL ADDRESS',
                        // initialValue: state.emailAddress,
                        maxHeight: 41,
                        padding: const EdgeInsets.all(10),
                        hintText: 'Search for items',
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
                    ),
                    Expanded(
                      child: GridView.count(
                        padding: AppPaddings.homeA,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 8.0,
                        childAspectRatio: 7 / 11,
                        children: <Widget>[
                          _buildShopCard(
                            context,
                            'assets/images/tshirt.jpg',
                            'Black t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/wh_tshirt.jpg',
                            'White t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/wh_crew_neck_tshirt.jpg',
                            'Crew neck t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/tshirt.jpg',
                            'Black t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/wh_tshirt.jpg',
                            'White t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/wh_crew_neck_tshirt.jpg',
                            'Crew neck t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/tshirt.jpg',
                            'Black t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/wh_tshirt.jpg',
                            'White t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/wh_crew_neck_tshirt.jpg',
                            'Crew neck t-shirt',
                          ),
                          _buildShopCard(
                            context,
                            'assets/images/tshirt.jpg',
                            'Black t-shirt',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShopCard(BuildContext context, String image, String name) {
    return GestureDetector(
      onTap: () {
        Get.toNamed<void>(AppRoutes.itemDetails);
      },
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const AppSpacing(v: 10),
              Text(
                name,
                style: context.body2.copyWith(
                  color: Colors.white,
                ),
              ),
              const AppSpacing(v: 5),
              Text(
                '\u{0024} 10.99',
                style: context.caption.copyWith(
                  color: context.colors.text,
                ),
              ),
            ],
          ),
          const Positioned(
            top: 10,
            right: 10,
            child: Icon(
              Ionicons.heart,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
