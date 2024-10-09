import 'package:bookly_app/core/networking/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/data/repos/data_sources/home_local_data_source/home_local_data_source.dart';
import '../../features/home/data/repos/data_sources/home_local_data_source/home_local_data_source_impl.dart';
import '../../features/home/data/repos/data_sources/home_remote_data_source/home_remote_data_source.dart';
import '../../features/home/data/repos/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/domain/repos/home_repo.dart';
import '../../features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import '../../features/home/domain/use_cases/fetch_newest_books_use_case.dart';
import '../../features/home/presentaion/view_models/featured_books_cubit/featured_books_cubit.dart';
import '../../features/home/presentaion/view_models/newest_books_cubit/newest_books_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// Dio & ApiService
  Dio dio = Dio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///featured books cubit
  getIt.registerLazySingleton<FeaturedBooksCubit>(
      () => FeaturedBooksCubit(getIt()));

  ///newest books cubit
  getIt
      .registerLazySingleton<NewestBooksCubit>(() => NewestBooksCubit(getIt()));

  ///home repo
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(
      homeLocalDataSource: getIt(), homeRemoteDataSource: getIt()));

  ///home remote data source
  getIt.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(apiService: getIt<ApiService>()));

  ///home local data source
  getIt.registerLazySingleton<HomeLocalDataSource>(
      () => HomeLocalDataSourceImpl());
}
