import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '/core/core.dart';

class SoundCategoryCard extends StatelessWidget {
  const SoundCategoryCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.duration,
  }) : super(key: key);

  final String image;
  final String title;
  final String subtitle;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => Get.toNamed<void>(AppRoutes.video),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width - 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: context.body1.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    subtitle,
                    style: context.caption.copyWith(
                      color: context.colors.text,
                    ),
                  ),
                  Text(
                    duration,
                    style: context.caption.copyWith(
                        color: context.colors.text,
                        fontFamily: AppFonts.julius),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
