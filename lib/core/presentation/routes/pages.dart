import 'package:get/get.dart';

import '/features/auth/presentation/screens/login/login_screen.dart';
import '/features/auth/presentation/screens/register/register_screen.dart';
import '/features/supreme_being/presentation/base/screens/base_screen.dart';
import '/features/supreme_being/presentation/home/screens/home_screen.dart';
import '/features/supreme_being/presentation/home/screens/video_screen.dart';
import '/features/supreme_being/presentation/product/screens/temp_item_detail_screen.dart';

import 'app_routes.dart';

class Pages {
  static final List<GetPage<AppRoutes>> pages = <GetPage<AppRoutes>>[
    GetPage<AppRoutes>(
      name: AppRoutes.main,
      page: () => const MainScreen(),
    ),
    GetPage<AppRoutes>(
      name: AppRoutes.home,
      page: () => const HomeScreen(),
    ),
    GetPage<AppRoutes>(
      name: AppRoutes.login,
      page: () => const LoginScreen(),
    ),
    GetPage<AppRoutes>(
      name: AppRoutes.video,
      page: () => const VideoScreen(),
    ),
    GetPage<AppRoutes>(
      name: AppRoutes.itemDetails,
      page: () => const TempItemDetails(),
    ),
    GetPage<AppRoutes>(
      name: AppRoutes.register,
      page: () => const RegisterScreen(),
    ),
  ];
}
