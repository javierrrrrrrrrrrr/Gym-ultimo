import 'package:get_it/get_it.dart';

import '../../feature/login/domain/usercase/login_use_case.dart';
import '../../feature/login/ui/blocs/login_bloc.dart';

final sl = GetIt.instance;

void blocDependencies() {
  sl.registerSingleton<LoginBloc>(LoginBloc(sl<LoginUseCase>()));
}
