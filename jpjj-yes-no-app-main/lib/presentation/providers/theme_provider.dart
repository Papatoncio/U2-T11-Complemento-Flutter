import 'dart:math';

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  int currentColorIndex = 0;
  Color currentColor = Color.fromARGB(255, 192, 129, 224);
  bool isDark = false;

  void changeColor(Color color) {
    currentColor = color;
    notifyListeners();
  }

  void changeColorIndex() {
    final random = Random();
    currentColorIndex = random.nextInt(7);
    notifyListeners();
  }

  void toggleDark() {
    isDark = !isDark;
    notifyListeners();
  }
}
