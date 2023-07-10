import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_meals_apk/data/model/favorit_state.dart';
import 'package:second_meals_apk/data/model/meal.dart';

class MealDetailScreen extends StatefulWidget {
  final Meal response;
  const MealDetailScreen({required this.response, Key? key}) : super(key: key);

  @override
  State<MealDetailScreen> createState() => _MealDetailScreenState();
}

class _MealDetailScreenState extends State<MealDetailScreen> {
  FavoritState favoritState = FavoritState();
  @override
  void initState() {
    favoritState = Provider.of<FavoritState>(context, listen: false);
    favoritState.isFavorit = favoritState.isMealFavorite(widget.response);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    favoritState = Provider.of<FavoritState>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          favoritState.toggleFavorit(); // Toggle the isFavorit value

          if (favoritState.isFavorit) {
            favoritState
                .function(widget.response); // Add the meal to the favorite list
          } else {
            favoritState.removeFunction(
                widget.response); // Remove the meal from the favorite list
          }
        },
        child: favoritState.isFavorit
            ? const Icon(Icons.star)
            : const Icon(Icons.star_border_outlined),
      ),
      appBar: AppBar(
        title: const Text('Meal'),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.network(
                            widget.response.imageUrl,
                            fit: BoxFit.cover,
                            height: 250,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 10,
                          child: Container(
                            width: 200,
                            color: Colors.black54,
                            padding: const EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: Text(
                              widget.response.title,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  '${widget.response.duration}',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(Icons.timelapse),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  widget.response.complexity.name,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Icon(Icons.work),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                widget.response.affordability.name,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              const Icon(Icons.business_outlined),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'Ingredients',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: widget.response.ingredients.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 30,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.cyanAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          widget.response.ingredients[index],
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Center(
                child: Text(
                  'Steps',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.all(20),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: widget.response.steps.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            '#${index + 1}',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                        title: Container(
                          decoration: BoxDecoration(
                            color: Colors.purpleAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            widget.response.steps[index],
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
