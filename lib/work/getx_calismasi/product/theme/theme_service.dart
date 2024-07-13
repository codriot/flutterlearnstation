import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _getStorage = GetStorage();
  final storageKey = 'isDarkMode';

  ThemeMode get getTheme => isDarkMode ? ThemeMode.dark : ThemeMode.light;
  bool get isDarkMode => _getStorage.read(storageKey) ?? false;
  void saveTheme(bool isDarkMode) => _getStorage.write(storageKey, isDarkMode);
  void changeThemeMode() {
    Get.changeTheme(isDarkMode ? ThemeData.light() : ThemeData.dark());
    saveTheme(!isDarkMode);
  }
  // ThemeMode get theme => _getStorage.read(storagekey) ?? ThemeMode.system;
}
