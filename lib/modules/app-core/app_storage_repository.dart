import 'package:shared_preferences/shared_preferences.dart';

abstract class AppStorageRepository {
  Future<bool?> loadFirstRun();

  Future<bool> setFirstRun(bool value);

  Future<String> loadLocale();

  Future<bool> setLocaleCode(String value);

  Future<String> loadThemeId();

  Future<bool> setThemeId(String themeId);
}

class AppStorageRepositoryImpl extends AppStorageRepository {
  final SharedPreferences prefs;

  AppStorageRepositoryImpl({
    required this.prefs,
  });

  final _firstRun = "firstRun";
  final _locale = "locale";
  final _theme = "theme";

  @override
  Future<bool> setFirstRun(bool value) {
    return prefs.setBool(_firstRun, value);
  }

  @override
  Future<bool?> loadFirstRun() async {
    return Future.value(prefs.getBool(_firstRun));
  }

  @override
  Future<bool> setLocaleCode(String value) async {
    return prefs.setString(_locale, value);
  }

  @override
  Future<String> loadLocale() async {
    return prefs.getString(_locale) ?? "ru";
  }

  @override
  Future<bool> setThemeId(String themeId) async {
    return prefs.setString(_theme, themeId);
  }

  @override
  Future<String> loadThemeId() async {
    return prefs.getString(_theme) ?? "0";
  }
}
