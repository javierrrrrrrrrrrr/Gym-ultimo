import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gym/core/routes/app_routes.dart';

import 'core/bloc_provider/bloc_providers.dart';
import 'core/service_locator/dependency_injection.dart';

void main() {
   init();
  dotenv.load(fileName: '.env');
  runApp(blocProviders(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Material App',
      routerConfig: RoutesApp.appRouter,
    );
  }
}
