import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static final CacheHelper _instance = CacheHelper._internal();
  factory CacheHelper() => _instance;
  CacheHelper._internal();

  late SharedPreferences sharedPreferences;
  static final _storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

  init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
      );
  Future writeSecureData({required String key, required String value}) async {
    return await _storage.write(key: key, value: value);
  }

  Future readSecureData({required String key}) async {
    return await _storage.read(key: key);
  }

  Future deleteSecureData({required String key}) async {
    return await _storage.delete(key: key);
  }

  Future clearSecureData() async {
    return await _storage.deleteAll();
  }

  String? getDataString({
    required String key,
  }) {
    return sharedPreferences.getString(key);
  }

  int maxOfCacheSize = 50;

  Future<bool> saveData({required String key, required dynamic value}) async {
    if (sharedPreferences.getKeys().length >= maxOfCacheSize) {
      await _removeOldestData();
    }
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    }
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    }

    if (value is int) {
      return await sharedPreferences.setInt(key, value);
    } else {
      return await sharedPreferences.setDouble(key, value);
    }
  }

  dynamic getData({required String key}) {
    return sharedPreferences.get(key);
  }

  dynamic getDataBool({required String key}) {
    return sharedPreferences.getBool(key);
  }

  Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }

  Future<bool> containsKey({required String key}) async {
    return sharedPreferences.containsKey(key);
  }

  Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }

  Future<dynamic> put({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    } else if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    } else {
      return await sharedPreferences.setInt(key, value);
    }
  }

  Future<void> _removeOldestData() async {
    final keys = sharedPreferences.getKeys().toList();
    if (keys.isNotEmpty) {
      await sharedPreferences.remove(keys.first);
    }
  }
}
