import 'package:flutter/material.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'widgets/wishlist_screen_body.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor(context),

        body: const WishlistScreenBody(),
      ),
    );
  }
}
