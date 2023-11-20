import 'package:flutter/material.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Text(
        'Acceder al panel de Administracion del Gimnasio',
        textAlign: TextAlign.center,
        textScaleFactor: 1.3,
        style: TextStyle(color: Colors.black54),
      ),
    );
  }
}
