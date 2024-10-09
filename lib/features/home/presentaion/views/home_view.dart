import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:bookly_app/core/networking/api_service.dart';
import 'package:bookly_app/features/home/data/repos/data_sources/home_local_data_source/home_local_data_source_impl.dart';
import 'package:bookly_app/features/home/data/repos/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:bookly_app/features/home/presentaion/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/home_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/use_cases/fetch_newest_books_use_case.dart';
import '../view_models/newest_books_cubit/newest_books_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<FeaturedBooksCubit>()),
          BlocProvider(
              create: (context) => getIt<NewestBooksCubit>()),
        ],
        child: const HomeViewBody(),
      ),
    );
  }
}
