import 'package:flutter/material.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: HomeScreenBody(),
      ),
    );
  }
}
