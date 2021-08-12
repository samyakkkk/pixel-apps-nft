import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = ChangeNotifierProvider((ref) => ThemeProvider());

class ThemeProvider extends ChangeNotifier {
  bool _isDark = true;

  bool get getIsDarkMode => _isDark;

  void switchTheme() {
    _isDark = !_isDark;
    print(_isDark);
    notifyListeners();
  }
}
