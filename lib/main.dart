import 'package:flutter/material.dart';
import 'package:gym/core/routes/app_routes.dart';

void main() => runApp(const MyApp());

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
