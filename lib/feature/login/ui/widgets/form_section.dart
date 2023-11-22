import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/feature/login/ui/widgets/custom_text_imput_field.dart';

import '../blocs/login_bloc.dart';

class FormSection extends StatelessWidget {
  const FormSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final loginbloc = context.read<LoginBloc>();
    return Form(

        // key: loginController.formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InputFieldWidget(
                controller: loginbloc.emailcontroller,
                validateIcon: true,
                icon: true,
                maxline: 1,
                right: 20,
                left: 20,
                obscureText: false,
                width: 200,
                label: const Text('Entrar Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputFieldWidget(
                controller: loginbloc.passwordcontroller,
                validateIcon: true,
                icon: true,
                maxline: 1,
                right: 20,
                left: 20,
                obscureText: true,
                width: 200,
                label: const Text('Entrar Password'),
                validator: (value) {
                  return null;
                },
                keyboardType: null,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ));
  }
}
