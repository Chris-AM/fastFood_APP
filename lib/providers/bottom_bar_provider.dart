import 'package:flutter/material.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int screenIndex = 0;

  int get fetchCurrentScreen {
    return screenIndex;
  }

  void updateScreenIndex(int newIndex) {
    screenIndex = newIndex;
    notifyListeners();
  }
}
