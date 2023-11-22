import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../feature/login/data/data_sources/auth_remote_data_source.dart';

final sl = GetIt.instance;

void dataSourcesDependencies() {
  sl.registerSingleton<AuthRemoteDataSource>(
      AuthRemoteDataSourceImpl(dio: sl<Dio>()));
}
