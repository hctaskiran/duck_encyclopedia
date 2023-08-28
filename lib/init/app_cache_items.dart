import 'app_cache.dart';

enum CacheItems {
  isGif;

  String get read => AppCache.instance.sharedPreferences.getString(name) ?? '';

  Future<bool> write(String value) => AppCache.instance.sharedPreferences.setString(name, value);
}