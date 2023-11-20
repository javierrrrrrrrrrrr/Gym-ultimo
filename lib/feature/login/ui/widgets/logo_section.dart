import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        child: const Hero(
          tag: 'hero_id',
          child: Image(
            image: AssetImage('assets/gym.jpeg'),
          ),
        ));
  }
}
