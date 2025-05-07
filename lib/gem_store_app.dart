import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/firebase_remote_config/remote_config.dart';
import 'package:gem_store_app/core/utils/themeData.dart';
import 'package:provider/provider.dart';

import 'core/analytics/analytics_services.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'features/profile/view/widgets/themeProvider.dart';

class GemStoreApp extends StatelessWidget {
  final AppRouter appRouter;
  final AnalyticsService analyticsService = AnalyticsService();
  final FirebaseRemoteConfigService remoteConfigService =
      FirebaseRemoteConfigService();

  GemStoreApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return FutureBuilder<bool>(
      future: remoteConfigService.isUpdateAvailable(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }
        final bool updateRequired = snapshot.data ?? false;
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          child: MaterialApp(
            title: 'Gem Store',
            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeProvider.themeMode,
            onGenerateRoute: appRouter.generateRoute,
            navigatorObservers: [
              NavigatorObserver(),
              analyticsService.getAnalyticsObserver(),
            ],
            initialRoute: Routes.homeScreen,
                // updateRequired ? Routes.updateScreen : Routes.onBoardingScreen,
          ),
        );
      },
    );
  }
}
