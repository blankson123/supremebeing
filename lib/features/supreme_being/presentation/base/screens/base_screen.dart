// flutter package
// third party packages
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:supreme_being/features/supreme_being/presentation/widgets/bottom_navigation_icons.dart';
import 'package:supreme_being/features/supreme_being/presentation/widgets/bottom_pages.dart';
import 'package:supreme_being/features/supreme_being/presentation/widgets/navigation_animation.dart';

// local imports
import '/core/core.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen>
    with SingleTickerProviderStateMixin {
  final AutoSizeGroup autoSizeGroup = AutoSizeGroup();
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: NavigationScreen(
        content: pages[_bottomNavIndex],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final Color color =
              isActive ? context.colors.primary : context.colors.text;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                isActive ? iconSolidList[index] : iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AutoSizeText(
                  iconsName[index],
                  maxLines: 1,
                  style: context.caption.copyWith(
                    color: color,
                  ),
                  group: autoSizeGroup,
                ),
              ),
            ],
          );
        },
        backgroundColor: Theme.of(context).cardColor,
        activeIndex: _bottomNavIndex,
        splashColor: context.colors.primary,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.none,
        onTap: (int index) => setState(
          () => _bottomNavIndex = index,
        ),
      ),
    );
  }
}
