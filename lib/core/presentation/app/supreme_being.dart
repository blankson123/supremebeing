import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import '/main_binding.dart';

import '../routes/route.dart';
import '../theme/theme.dart';

class SupremeBeing extends StatelessWidget {
  const SupremeBeing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Marketline',
        theme: AppTheme(AppLightTheme()).data,
        initialRoute: AppRoutes.login,
        getPages: Pages.pages,

        // initialBinding: MainBinding(),
      ),
    );
  }
}
