import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/app_router.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/features/discover/presentation/views/discover_screen.dart';
import 'package:gem_store_app/features/onboarding/cubits/scrolling/scrolling_cubit.dart';
import 'package:gem_store_app/features/onboarding/views/onboarding_screen.dart';
import 'package:gem_store_app/features/profile/view/widgets/themeProvider.dart';
import 'package:provider/provider.dart';
import 'core/utils/app_colors.dart';

class GemStoreApp extends StatelessWidget {
  final AppRouter appRouter;

  const GemStoreApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: themeProvider.isDarkMode ? ThemeData.dark() : ThemeData.light(),
        /*theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBackGroundColor,
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.greenColor),
          useMaterial3: true,
        ),*/
        onGenerateRoute: appRouter.generateRoute,
        navigatorObservers: [NavigatorObserver()],
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
