import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/core/firebase_remote_config/remote_config.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/firebase_options.dart';

Future<void> initApp() async {
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
  // FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  FirebaseRemoteConfigService remoteConfigService =
      FirebaseRemoteConfigService();
  remoteConfigService.initRemoteConfigService();
}
