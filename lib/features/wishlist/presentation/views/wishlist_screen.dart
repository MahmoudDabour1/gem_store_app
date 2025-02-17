import 'package:flutter/material.dart';
import 'widgets/wishlist_screen_body.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const WishlistScreenBody(),
      ),
    );
  }
}
