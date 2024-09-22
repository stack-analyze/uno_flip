import 'package:flutter/foundation.dart';

class DarkMode with ChangeNotifier {
  bool _value = false;

  bool get value => _value;

  void toggleTheme() {
    _value = !_value;
    notifyListeners();
  }
}