import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../Features/home/data/data_sources/home_local_data_source.dart';
import '../../../Features/home/data/data_sources/home_remote_data_source.dart';
import '../../../Features/home/data/repo/home_repo_impl.dart';

import '../api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<DioHelper>(
    DioHelper(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<DioHelper>(),
      ),
    ),
  );
}
