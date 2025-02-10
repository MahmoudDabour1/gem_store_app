import 'package:flutter/material.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/features/onboarding/views/onboarding_intro_screen.dart';
import 'package:gem_store_app/features/onboarding/views/onboarding_screen.dart';

class AppRouter {
  static Route? generateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.onBoardingIntroScreen:
           return MaterialPageRoute(
            builder: (context) => OnboardingIntroScreen(),
            );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text("Sorry , It's bad router")),
          ),
        );
    }
  }
}
