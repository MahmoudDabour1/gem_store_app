import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'features/profile/view/widgets/themeProvider.dart';
import 'package:provider/provider.dart';

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
        title: 'Gem Store',
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
