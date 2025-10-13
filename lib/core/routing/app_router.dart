import 'package:docdoc_app/core/routing/routes.dart';
import 'package:docdoc_app/features/home_screen/ui/home_screen.dart';
import 'package:docdoc_app/features/onboarding_screen/ui/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.OnboardingScreen:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.HomeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
