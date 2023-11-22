import 'package:get_it/get_it.dart';
import 'package:gym/feature/login/domain/usercase/login_use_case.dart';
import 'package:gym/feature/login/domain/usercase/register_use_case.dart';

import '../../feature/login/domain/repository/auth_repository.dart';

final sl = GetIt.instance;

void userCaseDependencies() {
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl<AuthRepository>()));
  sl.registerSingleton<RegisterUseCase>(RegisterUseCase(sl<AuthRepository>()));
}
