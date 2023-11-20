import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gym/feature/login/ui/pages/login_page.dart';

class RoutesApp {
  RoutesApp._();

  static final appRouter = GoRouter(initialLocation: '/', routes: [
    GoRoute(
      path: '/',
      name: LoginPage.name,
      builder: (context, state) => const Scaffold(body: LoginPage()),
    ),
  ]);
}
