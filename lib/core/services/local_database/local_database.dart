import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository {
    static StorageRepository? _storageUtil;
    static SharedPreferences? _preferences;

    static Future<StorageRepository> getInstance() async {
        if (_storageUtil == null) {
            var secureStorage = StorageRepository._();
            await secureStorage._init();
            _storageUtil = secureStorage;
        }
        return _storageUtil!;
    }

    StorageRepository._();
    Future _init() async {
        _preferences = await SharedPreferences.getInstance();
    }

    static Future setString({required String key, required String value}) async {
        if (_preferences == null) return null;
        return _preferences!.setString(key, value);
    }

    static Future setBool({required String key, required bool value}) async {
        if (_preferences == null) return null;
        return _preferences!.setBool(key, value);
    }

    static Future setInt({required String key, required int value}) async {
        if (_preferences == null) return null;
        return _preferences!.setInt(key, value);
    }

    static Future setStringList(
        {required List<String> list, required String key}) async {
        if (_preferences == null) return null;
        return _preferences!.setStringList(key, list);
    }

    static String? getString({required String keyOfValue}) {
        if (_preferences == null) return null;
        return _preferences!.getString(keyOfValue);
    }

    static bool? getBool({required String keyOfValue}) {
        if (_preferences == null) return null;
        return _preferences!.getBool(keyOfValue);
    }

    static int? getInt({required String keyOfValue}) {
        if (_preferences == null) return null;
        return _preferences!.getInt(keyOfValue);
    }

    static List<String>? getStringList({required String key}) {
        if (_preferences == null) return null;
        return _preferences!.getStringList(key);
    }

    static Future<bool> deleteKey({required String key}) async {
        if (_preferences == null) return false;
        return await _preferences!.remove(key);
    }
}
