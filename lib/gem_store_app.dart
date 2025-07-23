import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/firebase_remote_config/remote_config.dart';
import 'package:gem_store_app/core/utils/themeData.dart';
import 'package:gem_store_app/features/profile/view/profiledrawer_screen.dart';
import 'package:provider/provider.dart';

import 'core/analytics/analytics_services.dart';
import 'core/di/dependency_injection.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'features/home/presentation/controller/home_cubit.dart';
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
              drawer: ProfileDrawer(),
              body: Center(child: CircularProgressIndicator()),
            ),
          );
        }
        final bool updateRequired = snapshot.data ?? false;
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeCubit>(
              create: (context) {
                final cubit = HomeCubit(sl(), sl(), sl());
                cubit.getFeaturedProducts(0);
                cubit.getCategories();
                return cubit;
              },
            ),
          ],
          child: ScreenUtilInit(
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
              initialRoute: Routes.onBoardingIntroScreen ,
              // updateRequired ? Routes.updateScreen : Routes.onBoardingScreen,
            ),
          ),
        );
      },
    );
  }
}
