import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
    late SharedPreferences sharedPreferences;
    static final _storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

  //Here The Initialize of cache .

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

// this fun to put data in local data base using key

    Future<bool> saveData({required String key, required dynamic value}) async {
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

  // this fun to get data already saved in local data base

    dynamic getData({required String key}) {
    return sharedPreferences.get(key);
    }

    dynamic getDataBool({required String key}) {
    return sharedPreferences.getBool(key);
    }

// remove data using specific key

    Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
    }

    Future<bool> containsKey({required String key}) async {
    return sharedPreferences.containsKey(key);
    }

  //clear all data in the local data base
    Future<bool> clearData() async {
    return await sharedPreferences.clear();
    }

  // this fun to put data in local data base using key
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
}
