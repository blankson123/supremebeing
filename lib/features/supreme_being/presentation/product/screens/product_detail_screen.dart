import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ionicons/ionicons.dart';

import '/core/core.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/wh_crew_neck_tshirt.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Ionicons.close_outline,
                      color: context.colors.primary,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Ionicons.heart_outline,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: (MediaQuery.of(context).size.height) / 2 + 50,
              width: MediaQuery.of(context).size.width,
              padding: AppPaddings.homeA,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Crew neck t-shirt',
                      style: context.h5.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const AppSpacing(v: 10),
                    Text(
                      '\u{0024} 10.99',
                      style: context.body1.copyWith(
                        color: context.colors.text,
                      ),
                    ),
                    const AppSpacing(v: 20),
                    Text(
                      'Available Sizes',
                      style: context.body1.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const AppSpacing(v: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '28',
                            style: context.body1.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '30',
                            style: context.body1.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '32',
                            style: context.body1.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '35',
                            style: context.body1.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            '40',
                            style: context.body1.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const AppSpacing(v: 20),
                    Text(
                      'Available Colors',
                      style: context.body1.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const AppSpacing(v: 8),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                // spreadRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                        const AppSpacing(h: 10),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                // spreadRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                        const AppSpacing(h: 10),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 2,
                                // spreadRadius: 2,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const AppSpacing(v: 20),
                    Text(
                      'Description',
                      style: context.body1.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    const AppSpacing(v: 8),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum porta elit vitae quam cursus accumsan. Mauris non lacinia dui. Mauris eros mauris, imperdiet ac fringilla a, posuere non dui. Sed molestie massa id velit mattis egestas.',
                      style: context.body2.copyWith(
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const AppSpacing(v: 20),
                    const AppSpacing(v: 20),
                    AppButton(
                      // enabled: state.formIsValid,
                      padding: EdgeInsets.zero,
                      backgroundColor: context.colors.primary,
                      onPressed: () => Get.toNamed<void>(AppRoutes.main),
                      child: Text(
                        'ADD TO CART',
                        style: context.body1.copyWith(
                          color: Colors.white,
                          fontFamily: AppFonts.julius,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
