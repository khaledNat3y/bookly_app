import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/features/home/presentaion/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: Routes.splashScreen,
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: Routes.homeScreen,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: "/",
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}