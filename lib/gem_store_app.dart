import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/app_router.dart';
import 'package:gem_store_app/core/routing/router_observer.dart';
import 'package:gem_store_app/core/routing/routes.dart';

class GemStoreApp extends StatelessWidget {
  const GemStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
         navigatorObservers: [RouterObserver()],
         initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}