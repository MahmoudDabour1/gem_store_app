import 'package:flutter/material.dart';
import 'start_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: StartScreen(),
      ),
    );
  }
}
