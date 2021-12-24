import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '/core/core.dart';

class AudioCard extends StatelessWidget {
  const AudioCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/images/sound_bath.jpg',
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
        const AppSpacing(h: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Sound bath meditation',
                style: context.body1.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const AppSpacing(v: 8),
              Text(
                'Calmness',
                style: context.caption.copyWith(
                  color: context.colors.text,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.play,
                color: Colors.white,
              ),
            ),
            Text(
              '04:47',
              style: context.caption.copyWith(
                  color: context.colors.text, fontFamily: AppFonts.julius),
            )
          ],
        ),
      ],
    );
  }
}
