import 'package:flutter/material.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/features/cart/cart_screen.dart';
import 'package:gem_store_app/features/checkout/check_out_done_screen.dart';
import 'package:gem_store_app/features/discover/presentation/views/discover_screen.dart';
import 'package:gem_store_app/features/home/presentation/views/home_screen.dart';
import 'package:gem_store_app/features/wishlist/presentation/views/wishlist_screen.dart';

import '../../features/checkout/checkout_screen.dart';
import '../../features/onboarding/views/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.checkoutScreen:
        return MaterialPageRoute(
          builder: (_) => CheckoutScreen(),
        );
      case Routes.checkoutDoneScreen:
        return MaterialPageRoute(
          builder: (_) => CheckOutDoneScreen(),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case Routes.discoverScreen:
        return MaterialPageRoute(
          builder: (_) => DiscoverScreen(),
        );
      case Routes.wishlistScreen:
        return MaterialPageRoute(
          builder: (_) => WishlistScreen(),
        );

      default:
        return null;
    }
  }
}
