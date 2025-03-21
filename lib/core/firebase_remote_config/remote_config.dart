import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

class FirebaseRemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;
  Future<void> initRemoteConfigService() async {
    await _remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: Duration(seconds: 15),
      minimumFetchInterval: Duration.zero,
    ));

    await _remoteConfig.fetchAndActivate(); // Fetch latest data
  }

  Future<int> _getCurrentAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return int.tryParse(packageInfo.buildNumber) ?? 0;
  }

  Future<bool> isUpdateAvailable() async {
    await initRemoteConfigService();

    int currentAppVersion = await _getCurrentAppVersion();
    int updateVersion = _remoteConfig.getInt('appVersion');

    return currentAppVersion < updateVersion;
  }
}
