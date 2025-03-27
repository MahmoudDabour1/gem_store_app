import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/login/auth/cubit/googleauth_cubit.dart';
import '../analytics/analytics_services.dart';
import 'routes.dart';
import 'routes_exports.dart';
import '../widgets/bottom_nav_bar.dart';
import '../enums.dart';

class AppRouter {
  final AnalyticsService analyticsService = AnalyticsService();

  Route? generateRoute(RouteSettings settings) {
    analyticsService.logScreenView(screenName: settings.name ?? 'Unknown');

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return buildPageRoute(
          child: OnboardingScreen(),
          routeSettings: settings,
        );
      case Routes.onBoardingIntroScreen:
        return buildPageRoute(
          child: OnboardingIntroScreen(),
          routeSettings: settings,
        );
      case Routes.search:
        return buildPageRoute(
          child: SearchScreen(),
          routeSettings: settings,
        );
      case Routes.profileDrawer:
        return buildPageRoute(
          child: ProfileDrawer(),
          routeSettings: settings,
        );
      case Routes.settings:
        return buildPageRoute(
          child: SettingScreen(),
          routeSettings: settings,
        );
      case Routes.profile:
        return buildPageRoute(
          child: ProfileScreen(),
          routeSettings: settings,
        );
      case Routes.loginScreen:
        return buildPageRoute(
          child: BlocProvider(
            create: (context) => GoogleauthCubit(),
            child: const LoginScreen(),
          ),
          routeSettings: settings,
        );
      case Routes.checkoutScreen:
        return buildPageRoute(
          child: CheckoutScreen(),
          routeSettings: settings,
        );
      case Routes.checkoutDoneScreen:
        return buildPageRoute(
          child: CheckOutDoneScreen(),
          routeSettings: settings,
        );
      case Routes.cartScreen:
        return buildPageRoute(
          child: CartScreen(),
          routeSettings: settings,
        );
      case Routes.homeScreen:
        return buildPageRoute(
          child: HomeScreen(),
          routeSettings: settings,
        );
      case Routes.discoverScreen:
        return buildPageRoute(
          child: DiscoverScreen(),
          routeSettings: settings,
        );
      case Routes.productDetailsScreen:
        return buildPageRoute(
          child: ItemDetailsViews(),
          routeSettings: settings,
        );
      case Routes.settingScreen:
        return buildPageRoute(
          child: SettingScreen(),
          routeSettings: settings,
        );
      case Routes.wishlistScreen:
        return buildPageRoute(
          child: WishlistScreen(),
          routeSettings: settings,
        );
      case Routes.ordersScreen:
        return buildPageRoute(
          child: OrdersView(),
          routeSettings: settings,
        );
      case Routes.bottomNavBar:
        return buildPageRoute(
          child: BottomNavBar(),
          routeSettings: settings,
        );
      case Routes.wishlistBoardScreen:
        return buildPageRoute(
          child: WishlistBoardView(),
          routeSettings: settings,
        );
      case Routes.updateScreen:
        return buildPageRoute(
          child: UpdateScreen(),
          routeSettings: settings,
        );
      default:
        return null;
    }
  }

  Route<T> buildPageRoute<T>({
    required Widget child,
    AnimationType? pageRouteAnimation = AnimationType.fade,
    Duration? duration,
    RouteSettings? routeSettings,
  }) {
    if (pageRouteAnimation == AnimationType.rotate) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return RotationTransition(
              turns: ReverseAnimation(anim), child: child);
        },
        transitionDuration: duration ?? Duration(milliseconds: 400),
      );
    } else if (pageRouteAnimation == AnimationType.scale) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return ScaleTransition(scale: anim, child: child);
        },
        transitionDuration: duration ?? Duration(milliseconds: 400),
      );
    } else if (pageRouteAnimation == AnimationType.slide) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? Duration(milliseconds: 400),
      );
    } else if (pageRouteAnimation == AnimationType.slideBottomTop) {
      return PageRouteBuilder<T>(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) => child,
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(0.0, 1.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? Duration(milliseconds: 400),
      );
    }

    return PageRouteBuilder<T>(
      settings: routeSettings,
      transitionDuration: duration ?? Duration(milliseconds: 400),
      reverseTransitionDuration: const Duration(milliseconds: 50),
      pageBuilder: (context, a1, a2) => child,
      transitionsBuilder: (c, anim, a2, child) {
        return FadeTransition(opacity: anim, child: child);
      },
    );
  }
}
