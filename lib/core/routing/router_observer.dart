import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
var logger = Logger();
class RouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // Extract route information from the Route object
    String? routeName = _extractRouteName(route);
    logger.i('Pushed route: $routeName');
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    String? routeName = _extractRouteName(route);
    logger.i('Popped route: $routeName');
    super.didPop(route, previousRoute);
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    String? routeName = _extractRouteName(newRoute!);
    logger.i('Replaced route: $routeName');
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    String? routeName = _extractRouteName(route);
    logger.i('Removed route: $routeName');
    super.didRemove(route, previousRoute);
  }
  @override
  void didStartUserGesture(Route<dynamic> route, Route<dynamic>? previousRoute) {
    String? routeName = _extractRouteName(route);
    logger.i('Started user gesture: $routeName');
    super.didStartUserGesture(route, previousRoute);
  }
  @override
  void didStopUserGesture() {
    logger.i('Stopped user gesture');
    super.didStopUserGesture();
  }

  // Helper method to extract route name (if available)
  String? _extractRouteName(Route<dynamic> route) {
    if (route is PageRoute && route.settings.name != null) {
      return route.settings.name;
    }
    return null; // Unable to extract route name
  }
}