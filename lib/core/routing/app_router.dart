import 'package:bookly_app/core/routing/routes.dart';
import 'package:bookly_app/features/home/presentaion/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentaion/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:dio/dio.dart';
import 'package:go_router/go_router.dart';

import '../networking/api_service.dart';


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
      GoRoute(
        path: Routes.searchScreen,
        builder: (context, state) => SearchScreen(apiService: ApiService(Dio()),),
      ),
    ],
  );
}