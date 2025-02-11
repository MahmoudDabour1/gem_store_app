import 'package:flutter/material.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      default:
        return null;
    }
  }
}
