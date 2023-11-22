import 'package:get_it/get_it.dart';
import 'package:gym/core/service_locator/bloc_injection.dart';
import 'package:gym/core/service_locator/repository_injection.dart';

import 'data_sources.dart';
import 'external_dependencies.dart';
import 'user_case_injection.dart';

final sl = GetIt.instance;

void init() {
  externalDependencies();
  dataSourcesDependencies();
  repositoryDependencies();
  userCaseDependencies();
  blocDependencies();
}
  //! External