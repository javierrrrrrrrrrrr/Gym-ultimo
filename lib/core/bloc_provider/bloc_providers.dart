import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/login/ui/blocs/login_bloc.dart';
import '../service_locator/dependency_injection.dart';

MultiBlocProvider blocProviders({required Widget child}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) {
        return sl<LoginBloc>();
      }),
    ],
    child: child,
  );
}
