import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/theming/app_colors.dart';
import 'package:gem_store_app/features/home/presentation/views/home_screen.dart';

import 'features/track_order/track_order.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.scaffoldBackGroundColor,
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.greenColor),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
