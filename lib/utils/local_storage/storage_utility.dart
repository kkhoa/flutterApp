import 'package:get_storage/get_storage.dart';

class KLocalStorage {
  // Singleton instance
  static final KLocalStorage _instance = KLocalStorage._internal();

  // Factory constructor
  factory KLocalStorage() {
    return _instance;
  }

  // Private constructor
  KLocalStorage._internal();

  // GetStorage instance
  final _storage = GetStorage();

  // Save data to local storage
  Future<void> saveData<K>(String key, K value) async {
    await _storage.write(key, value);
  }

  // Read data from local storage
  K? readData<K>(String key) {
    return _storage.read<K>(key);
  }

  // Clear all data from local storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}
