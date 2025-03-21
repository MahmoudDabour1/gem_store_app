import 'package:device_preview/device_preview.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/firebase_remote_config/remote_config.dart';
import 'core/database/local/cach_helper.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/core/routing/app_router.dart';
import 'package:gem_store_app/features/profile/view/widgets/themeProvider.dart';
import 'package:gem_store_app/firebase_options.dart';
import 'gem_store_app.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(details);
  };

  await ScreenUtil.ensureScreenSize();
  await setupGetIt();

  await sl<CacheHelper>().init();
  //await sl<CacheHelper>().clearData();
  await Firebase.initializeApp(
    name: 'gem-store-app-10c46',
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  FirebaseRemoteConfigService remoteConfigService =
      FirebaseRemoteConfigService();
  remoteConfigService.initRemoteConfigService();
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
