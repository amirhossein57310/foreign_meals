import 'package:flutter/material.dart';
import 'package:second_meals_apk/main.dart';
import 'package:second_meals_apk/screens/filter_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              color: Colors.blueAccent,
              child: Text(
                'Main Menu',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            listTileMenu(context, 'Meals', Icons.restaurant, () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const MealsApp();
                  },
                ),
              );
            }),
            listTileMenu(context, 'Filters', Icons.settings, () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const FilterScreen();
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  ListTile listTileMenu(
      BuildContext context, String t, IconData i, VoidCallback f) {
    return ListTile(
      onTap: f,
      leading: Icon(
        i,
        size: 24,
        color: Colors.greenAccent,
      ),
      title: Text(
        t,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
