import 'package:easy_academy/features/Auth/views/auth_page.dart';
import 'package:easy_academy/features/Home/views/home_view.dart';
import 'package:flutter/material.dart';

import '../features/splash/views/splash.dart';

class AppRouter {
  static const String splash = '/';
  static const String auth = '/auth';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String profile = '/profile';

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case auth:
        return MaterialPageRoute(builder: (context) => const AuthPage());
      case home:
        return MaterialPageRoute(builder: (context) => const HomeView());
      default:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
    }
  }
}
