import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_meals_apk/data/model/favorit_state.dart';
import 'package:second_meals_apk/data/model/filter_state.dart';
import 'package:second_meals_apk/screens/favorit_screen.dart';
import 'package:second_meals_apk/screens/home_screen.dart';
import 'package:second_meals_apk/widgets/drawer.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FilterState()),
        ChangeNotifierProvider(create: (_) => FavoritState()),
      ],
      child: const MealsApp(),
    ),
  );
}

class MealsApp extends StatefulWidget {
  const MealsApp({Key? key}) : super(key: key);

  @override
  State<MealsApp> createState() => _MealsAppState();
}

int index = 0;

class _MealsAppState extends State<MealsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          bodySmall: const TextStyle(
            fontFamily: 'rw',
            fontSize: 20,
          ),
          bodyLarge: const TextStyle(
            fontFamily: 'rc',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const MainDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
          unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
          elevation: 0,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorit',
            ),
          ],
        ),
        body: IndexedStack(
          index: index,
          children: screens,
        ),
      ),
    );
  }
}

List<Widget> screens = [
  const HomeScreen(),
  const FavoritScreen(),
];
