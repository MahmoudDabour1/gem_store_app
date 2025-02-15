import 'package:flutter/material.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/core/widgets/bottom_nav_bar.dart';
import 'package:gem_store_app/features/cart/cart_screen.dart';
import 'package:gem_store_app/features/checkout/check_out_done_screen.dart';
import 'package:gem_store_app/features/discover/presentation/views/discover_screen.dart';
import 'package:gem_store_app/features/home/presentation/views/home_screen.dart';
import 'package:gem_store_app/features/login/login_screen.dart';
import 'package:gem_store_app/features/onboarding/views/onboarding_intro_screen.dart';
import 'package:gem_store_app/features/orderinfo/views/orders_screen.dart';
import 'package:gem_store_app/features/product_details/views/item_details_views.dart';
import 'package:gem_store_app/features/profile/view/profileDrawer_screen.dart';
import 'package:gem_store_app/features/profile/view/profile_screen.dart';
import 'package:gem_store_app/features/search/presentation/search_view/search_screen.dart';
import 'package:gem_store_app/features/setting/setting_screen.dart';
import 'package:gem_store_app/features/wishlist/presentation/views/wishlist_board_view.dart';
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
      case Routes.onBoardingIntroScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingIntroScreen(),
        );
      case Routes.search:
        return MaterialPageRoute(
          builder: (_) => SearchScreen(),
        );
      case Routes.profileDrawer:
        return MaterialPageRoute(
          builder: (_) => ProfileDrawer(),
        );
      case Routes.settings:
        return MaterialPageRoute(
          builder: (_) => SettingScreen(),
        );
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
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
      case Routes.productDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => ItemDetailsViews(),
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
      case Routes.settingScreen:
        return MaterialPageRoute(
          builder: (_) => SettingScreen(),
        );
      case Routes.wishlistScreen:
        return MaterialPageRoute(
          builder: (_) => WishlistScreen(),
        );
      case Routes.ordersScreen:
        return MaterialPageRoute(
          builder: (_) => OrdersView(),
        );
      case Routes.bottomNavBar:
        return MaterialPageRoute(
          builder: (_) => BottomNavBar(),
        );
      case Routes.wishlistBoardScreen:
        return MaterialPageRoute(
          builder: (_) => WishlistBoardView(),
        );

      default:
        return null;
    }
  }
}
