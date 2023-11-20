import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String name = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 254, 255, 1),
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: const Column(
          children: [
            Expanded(flex: 9, child: LogoSection()),
            Expanded(flex: 3, child: InfoSection()),
            Expanded(flex: 5, child: FormSection()),
            Expanded(flex: 1, child: LoginButtomWidget()),
            Expanded(flex: 1, child: SizedBox())
          ],
        ),
      ),
    );
  }
}
