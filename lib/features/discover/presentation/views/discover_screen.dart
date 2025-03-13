import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'widgets/discover_screen_body.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logEvent(
      name: 'discover_interaction',
      parameters: {
        'interaction_type': 'example_interaction',
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor(context),
        body: DiscoverScreenBody(),
      ),
    );
  }
}
