import 'package:flutter/material.dart';
import 'package:second_meals_apk/data/model/meal.dart';

class FavoritState extends ChangeNotifier {
  bool isFavorit = false;

  List<Meal> mealList = [];

  void toggleFavorit() {
    isFavorit = !isFavorit;
    notifyListeners();
  }

  void function(Meal response) {
    mealList.add(response);
    notifyListeners();
  }

  void removeFunction(Meal response) {
    mealList.remove(response);
    notifyListeners();
  }

  bool isMealFavorite(Meal meal) {
    return mealList.contains(meal);
  }
}
