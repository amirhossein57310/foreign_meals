import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:second_meals_apk/widgets/drawer.dart';
import 'package:second_meals_apk/widgets/meal_item.dart';

import '../data/model/favorit_state.dart';

class FavoritScreen extends StatelessWidget {
  const FavoritScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritState = Provider.of<FavoritState>(context);

    return Scaffold(
      appBar: AppBar(),
      drawer: const MainDrawer(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList.builder(
              itemCount: favoritState.mealList.length,
              itemBuilder: (context, index) {
                return MealItem(response: favoritState.mealList, index: index);
              },
            )
          ],
        ),
      ),
    );
  }
}
