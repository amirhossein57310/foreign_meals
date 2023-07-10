import 'package:flutter/material.dart';
import 'package:second_meals_apk/data/dummy_data.dart';
import 'package:second_meals_apk/screens/meal_screen.dart';
import 'package:second_meals_apk/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
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
          slivers: [
            SliverPadding(
              sliver: SliverGrid.builder(
                itemCount: dummyData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return MealScreen(dummyData[index].id);
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: dummyData[index].color,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          dummyData[index].title,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                  );
                },
              ),
              padding: const EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
