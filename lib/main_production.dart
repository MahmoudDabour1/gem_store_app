import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/init/app_init.dart';
import 'core/routing/app_router.dart';
import 'features/profile/view/widgets/themeProvider.dart';
import 'gem_store_app.dart';

void main() async {
  await initApp();
  changeStatusBarColor();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: GemStoreApp(
        appRouter: AppRouter(),
      ),
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
