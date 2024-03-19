import 'package:flutter/material.dart';
import 'package:onboarding_ui/config/router/route.dart';
import 'package:onboarding_ui/screens/forgot_password.dart';
import 'package:onboarding_ui/screens/login_screen.dart';

class AppRouter {
  Route onGeneratedRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.forgotPassword:
        return MaterialPageRoute(
          builder: (_) => ForgotPassword(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Text("Hi"),
        );
    }
  }
}
