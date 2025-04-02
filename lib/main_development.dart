import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gem_store_app/core/init/app_init.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/core/routing/app_router.dart';
import 'package:gem_store_app/features/profile/view/widgets/themeProvider.dart';
import 'gem_store_app.dart';
import 'package:provider/provider.dart';

void main() async {
  await initApp();

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
