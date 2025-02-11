import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'gem_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  changeStatusBarColor();
  runApp(
    GemStoreApp(
      appRouter: AppRouter(),
    ),
  );
}

// change status bar color
void changeStatusBarColor() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.red,
    statusBarIconBrightness: Brightness.dark,
  ));
}
