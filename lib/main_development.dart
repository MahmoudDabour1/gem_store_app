import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/firebase_options.dart';
import 'core/di/dependency_injection.dart';
import 'features/profile/view/widgets/themeProvider.dart';
import 'gem_store_app.dart';
import 'package:provider/provider.dart';

import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await setupGetIt();

  await sl<CacheHelper>().init();
  //await sl<CacheHelper>().clearData();

  await Firebase.initializeApp(
    name: 'gem-store-app-10c46',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //print(sl<CacheHelper>().readSecureData(key: 'email'));
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => GemStoreApp(
          appRouter: AppRouter(),
        ),
      ),
    ),
    //   ChangeNotifierProvider(
    //     create: (context) => ThemeProvider(),
    //     child: GemStoreApp(
    //       appRouter: AppRouter(),
    //     ),
    //   ),
  );
}
