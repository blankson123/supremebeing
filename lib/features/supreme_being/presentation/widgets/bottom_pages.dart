import 'package:flutter/material.dart';
import '/features/supreme_being/presentation/explore/screens/temp_explore_page.dart';
import '/features/supreme_being/presentation/favorite/screens/favorite_screen.dart';
import '/features/supreme_being/presentation/home/screens/home_screen.dart';
import '/features/supreme_being/presentation/profile/screens/profile_screen.dart';
import '/features/supreme_being/presentation/shop/screens/shop_screen.dart';

final List<Widget> pages = <Widget>[
  const HomeScreen(),
  const ExploreScreen(),
  const FavoriteScreen(),
  const ShopScreen(),
  const ProfileScreen(),
];
