import 'package:flutter/material.dart';

class FilterState extends ChangeNotifier {
  bool isGlutenFree = false;
  bool isLactoseFree = false;
  bool isVeganFree = false;
  bool isVegetrainFree = false;

  void toggleGlutenFree() {
    isGlutenFree = !isGlutenFree;
    notifyListeners();
  }

  void toggleLactoseFree() {
    isLactoseFree = !isLactoseFree;
    notifyListeners();
  }

  void toggleVeganFree() {
    isVeganFree = !isVeganFree;
    notifyListeners();
  }

  void toggleVegetrainFree() {
    isVegetrainFree = !isVegetrainFree;
    notifyListeners();
  }
}
