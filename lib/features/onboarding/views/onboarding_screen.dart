import 'package:flutter/material.dart';
import 'package:gem_store_app/features/onboarding/views/start_screen.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StartScreen(),
    );
  }
}
