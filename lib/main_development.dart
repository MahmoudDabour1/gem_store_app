import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependency_injection.dart';
import 'features/profile/view/widgets/themeProvider.dart';
import 'gem_store_app.dart';
import 'package:provider/provider.dart';

import 'core/routing/app_router.dart';

void main() async {
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterError.onError = (FlutterErrorDetails details) {
  //   FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  // };

  await ScreenUtil.ensureScreenSize();
  await setupGetIt();
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
