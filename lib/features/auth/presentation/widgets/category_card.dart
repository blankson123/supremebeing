import 'package:flutter/material.dart';

import '/core/core.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 160,
        width: (MediaQuery.of(context).size.width / 2),
        child: Card(
          child: Padding(
            padding: AppPaddings.lA,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    image,
                    height: 60,
                    width: 60,
                    color: context.colors.primary.shade400,
                  ),
                ),
                const Spacer(),
                Text(
                  title,
                  style: context.body1.copyWith(
                    color: Colors.black87,
                    fontFamily: AppFonts.julius,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
