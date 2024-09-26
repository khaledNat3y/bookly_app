import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/routing/routes.dart';
import 'core/theming/app_colors.dart';
import 'features/home/presentaion/views/home_view.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppColors.primaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        home: const SplashView(),
        getPages: [
          GetPage(name: Routes.splashScreen, page: () => const SplashView()),
          GetPage(name: Routes.homeScreen, page: () => const HomeView()),
        ],
        initialRoute: Routes.splashScreen,
      ),
    );
  }
}