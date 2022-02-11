import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _getStorage = GetStorage();
  final _themeKey = 'isDarkMode';

  bool _loadThemeFromStorage() => _getStorage.read(_themeKey) ?? false;

  ThemeMode get theme =>
      _loadThemeFromStorage() ? ThemeMode.dark : ThemeMode.light;

  _saveThemeToStorage(bool isDarkMode) =>
      _getStorage.write(_themeKey, isDarkMode);

  void switchTheme() {
    Get.changeThemeMode(
        _loadThemeFromStorage() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToStorage(!_loadThemeFromStorage());
  }
}
