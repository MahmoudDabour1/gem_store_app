import 'package:flutter/material.dart';
import 'package:upgrader/upgrader.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UpgradeAlert(
      dialogStyle: UpgradeDialogStyle.material,
      onUpdate: () => true,
      onIgnore: () => true,
      onLater: () => true,
      upgrader: Upgrader(
        storeController: UpgraderStoreController(
          onAndroid: () => UpgraderPlayStore(),
          oniOS: () => UpgraderAppcastStore(appcastURL: "appcastURL"),
        ),
        upgraderDevice: UpgraderDevice(),
        messages: UpgraderMessages(code: 'en'),
        languageCode: 'en',
        debugDisplayAlways: true,
        debugLogging: true,
        minAppVersion: '1.0.0',
      ),
      child: Scaffold(
        body: Center(child: Text('Checking...')),
      ),
    );
  }
}
