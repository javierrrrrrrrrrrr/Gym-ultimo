import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/feature/login/ui/blocs/login_bloc.dart';

import '../../../../core/utils/request/auth/login_request.dart';

class LoginButtomWidget extends StatelessWidget {
  const LoginButtomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginbloc = context.read<LoginBloc>();
    return FilledButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 120))),
      child: const Text("Continuar", style: TextStyle(color: Colors.white)),
      onPressed: () {
        loginbloc.loginButtomPress(
            request: LoginRequest(
          email: loginbloc.emailcontroller.text.trim(),
          password: loginbloc.passwordcontroller.text.trim(),
        ));
      },
    );
  }
}
