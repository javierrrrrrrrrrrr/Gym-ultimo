import 'package:flutter/material.dart';

class LoginButtomWidget extends StatelessWidget {
  const LoginButtomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 120))),
      child: const Text("Continuar", style: TextStyle(color: Colors.white)),
      onPressed: () {},
    );
  }
}
