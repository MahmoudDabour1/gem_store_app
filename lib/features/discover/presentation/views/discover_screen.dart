import 'package:flutter/material.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/discover_screen_body.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white, body: DiscoverScreenBody()));
  }
}
