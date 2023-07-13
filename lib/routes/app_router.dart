import 'package:flutter/material.dart';

import '../screens/login_screen.dart';
import '../screens/sign_up_screen.dart';
import '../screens/welcome_screem.dart';
import 'router_name.dart';

class AppRouter {
  AppRouter._instance();
  static final AppRouter instance = AppRouter
      ._instance(); // tác dụng của instance là để duy nhất Approuter quản lý cả app

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterName.welcome:
        return MaterialPageRoute(
            builder: (context) => const WelcomeScreen(),
            settings: const RouteSettings(name: '/'));
      case RouterName.login:
        return MaterialPageRoute(
            builder: (context) => const LoginScreen(),
            settings: const RouteSettings(name: '/login'));
      case RouterName.signUp:
        return MaterialPageRoute(
            builder: (context) => const SignUpScreen(),
            settings: const RouteSettings(name: '/signUp'));
      default:
    }
    return null;
  }
}
