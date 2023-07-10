import 'package:second_meals_apk/util/affordabilirt.dart';
import 'package:second_meals_apk/util/enums/complexity.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactosFree;
  final bool isVegan;
  final bool isVegetrian;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactosFree,
    required this.isVegan,
    required this.isVegetrian,
  });
}
