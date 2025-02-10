
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/color_manager.dart';
import 'package:gem_store_app/features/search/presentation/search_view/search_screen.dart';
import 'features/onboarding/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      theme: ThemeData(primaryColor: ColorManager.primary,),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SearchScreen(),
    );
  }
}


