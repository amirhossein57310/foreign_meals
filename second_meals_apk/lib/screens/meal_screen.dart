import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_meals_apk/data/dummy_data.dart';

import '../data/model/filter_state.dart';
import '../widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  final String id;

  const MealScreen(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filterState = Provider.of<FilterState>(context);
    var filteredResponse = dummyMeals.where((meal) {
      if (filterState.isGlutenFree && !meal.isGlutenFree) {
        return false;
      }
      if (filterState.isLactoseFree && !meal.isLactosFree) {
        return false;
      }
      if (filterState.isVeganFree && !meal.isVegan) {
        return false;
      }
      if (filterState.isVegetrainFree && !meal.isVegetrian) {
        return false;
      }
      return meal.categories.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text(
          'Meals',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList.builder(
              itemBuilder: (context, cutternIndex) {
                return MealItem(
                  response: filteredResponse,
                  index: cutternIndex,
                );
              },
              itemCount: filteredResponse.length,
            ),
          ],
        ),
      ),
    );
  }
}
