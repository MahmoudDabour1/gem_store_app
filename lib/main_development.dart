import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/profile/view/widgets/themeProvider.dart';
import 'package:gem_store_app/gem_store_app.dart';
import 'package:provider/provider.dart';

import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child:GemStoreApp(
        appRouter: AppRouter(),

      ),
    ),
  );

}
