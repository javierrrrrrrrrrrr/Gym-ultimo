import 'package:get_it/get_it.dart';
import 'package:gym/feature/login/data/repository/auth_repository_implementation.dart';
import 'package:gym/feature/login/domain/repository/auth_repository.dart';

import '../../feature/login/data/data_sources/auth_remote_data_source.dart';

final sl = GetIt.instance;

void repositoryDependencies() {
  sl.registerSingleton<AuthRepository>(AuthRepositoryImplementation(
      authRemoteDataSource: sl<AuthRemoteDataSource>()));
}
