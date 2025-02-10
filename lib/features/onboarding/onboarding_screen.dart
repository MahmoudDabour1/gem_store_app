import 'package:flutter/material.dart';
import 'package:gem_store_app/core/widgets/custom_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CustomButton(text: "onn",)),
    );
  }
}
