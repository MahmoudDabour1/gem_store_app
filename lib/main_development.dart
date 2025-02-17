import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'features/profile/view/widgets/themeProvider.dart';
import 'gem_store_app.dart';
import 'package:provider/provider.dart';

import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: GemStoreApp(
        appRouter: AppRouter(),
      ),
    ),
  );
}
