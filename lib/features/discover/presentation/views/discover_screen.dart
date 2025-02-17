import 'package:flutter/material.dart';
import 'widgets/discover_screen_body.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: DiscoverScreenBody(),
      ),
    );
  }
}
