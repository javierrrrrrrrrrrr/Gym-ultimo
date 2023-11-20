import 'package:flutter/material.dart';
import 'package:gym/feature/login/ui/widgets/custom_text_imput_field.dart';

class FormSection extends StatelessWidget {
  const FormSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(

        // key: loginController.formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InputFieldWidget(
                validateIcon: true,
                icon: true,
                maxline: 1,
                right: 20,
                left: 20,
                initialvalue: '',
                obscureText: false,
                width: 200,
                label: const Text('Entrar Email'),
                onChanged: (value) {},
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputFieldWidget(
                validateIcon: true,
                icon: true,
                maxline: 1,
                right: 20,
                left: 20,
                initialvalue: "",
                obscureText: true,
                width: 200,
                label: const Text('Entrar Password'),
                onChanged: (value) {},
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
