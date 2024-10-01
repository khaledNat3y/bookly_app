import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/features/home/presentaion/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentaion/views/home_view.dart';
import 'package:go_router/go_router.dart';


abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: Routes.splashScreen,
      //   builder: (context, state) => const SplashView(),
      // ),
      GoRoute(
        path: "/",
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: Routes.bookDetailsScreen,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}