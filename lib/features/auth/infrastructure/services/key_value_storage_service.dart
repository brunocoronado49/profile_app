abstract class KeyValueStorageService {
  Future<void> xsetKeyValue<T>(String key, T value);
  Future<T?> getValue<T>(String key);
  Future<bool> removeKey(String key);
}
