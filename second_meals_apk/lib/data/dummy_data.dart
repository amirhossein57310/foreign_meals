import 'package:flutter/material.dart';
import 'package:second_meals_apk/util/affordabilirt.dart';
import 'package:second_meals_apk/util/enums/complexity.dart';

import 'model/category.dart';
import 'model/meal.dart';

const dummyData = [
  Category(id: 'c1', title: 'Italian', color: Colors.purple),
  Category(id: 'c2', title: 'Qick & Easy', color: Colors.red),
  Category(id: 'c3', title: 'Hambergers', color: Colors.orange),
  Category(id: 'c4', title: 'German', color: Colors.amber),
  Category(id: 'c5', title: 'Light & Lovely', color: Colors.blue),
  Category(id: 'c6', title: 'Exotic', color: Colors.green),
  Category(id: 'c7', title: 'Asian', color: Colors.lightGreen),
  Category(id: 'c8', title: 'French', color: Colors.pink),
  Category(id: 'c9', title: 'Breakfast', color: Colors.lightBlue),
  Category(id: 'c10', title: 'Summer', color: Colors.teal),
];
const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c2'],
    title: 'spageti with tomato sauce and quick to cook',
    imageUrl:
        'https://blog.amigofoods.com/wp-content/uploads/2019/03/spanish-food.jpg',
    ingredients: [
      '4 tomato',
      '1 tablespoon of olive oil',
      '1 tableSpoon of salt ',
      'onion',
      'garlic',
      'chips' 'sauce',
      'meat',
      'paper'
    ],
    steps: [
      'crop the onion',
      'grill papers',
      'boil water',
      'mixed with meat ',
      'put on the stove',
      '50 min ready to eat'
    ],
    duration: 10,
    complexity: Complexity.easy,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactosFree: false,
    isVegan: true,
    isVegetrian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2', 'c3'],
    title: 'spageti with potato sauce',
    imageUrl:
        'https://img.freepik.com/free-photo/meat-skewer-with-vegetables-isolated-white-background-ai-generative_123827-24960.jpg?w=740&t=st=1686669225~exp=1686669825~hmac=035906b9bd0ef8c55a5c36f3fbf353ba3f7043f3fad748b67065f708be9718ac',
    ingredients: [
      '4 tomato',
      '1 tablespoon of olive oil',
      '1 tableSpoon of salt ',
      'onion',
      'garlic',
      'chips' 'sauce',
      'meat',
      'paper'
    ],
    steps: [
      'crop the onion',
      'grill papers',
      'boil water',
      'mixed with meat ',
      'put on the stove',
      '50 min ready to eat'
    ],
    duration: 5,
    complexity: Complexity.easy,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactosFree: true,
    isVegan: false,
    isVegetrian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c1', 'c3'],
    title: 'spageti with bijan sauce',
    imageUrl:
        'https://img.freepik.com/free-photo/big-sandwich-hamburger-with-juicy-beef-burger-cheese-tomato-red-onion-wooden-table_2829-19631.jpg?w=740&t=st=1686669415~exp=1686670015~hmac=b31e7501aeabeb82dba29a2fa98d3ae1fc7bd78ec0818794ccfce6efe8bfb541',
    ingredients: [
      '4 tomato',
      '1 tablespoon of olive oil',
      '1 tableSpoon of salt ',
      'onion',
      'garlic',
      'chips' 'sauce',
      'meat',
      'paper'
    ],
    steps: ['', '', ''],
    duration: 20,
    complexity: Complexity.easy,
    affordability: Affordability.pricy,
    isGlutenFree: false,
    isLactosFree: true,
    isVegan: false,
    isVegetrian: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c4', 'c5'],
    title: 'spageti with mahram sauce',
    imageUrl:
        'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=826&t=st=1686669177~exp=1686669777~hmac=4cdc32588d27d05cb4f89a3cacdae15a8e65675d450f684f8c933f398f17d97b',
    ingredients: [
      '4 tomato',
      '1 tablespoon of olive oil',
      '1 tableSpoon of salt ',
      'onion',
      'garlic',
      'chips' 'sauce',
      'meat',
      'paper'
    ],
    steps: [
      'crop the onion',
      'grill papers',
      'boil water',
      'mixed with meat ',
      'put on the stove',
      '50 min ready to eat'
    ],
    duration: 15,
    complexity: Complexity.easy,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactosFree: false,
    isVegan: true,
    isVegetrian: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c6', 'c7', 'c8', 'c10'],
    title: 'spageti with orange sauce',
    imageUrl:
        'https://img.freepik.com/free-photo/baked-chicken-wings-asian-style_2829-10159.jpg?w=740&t=st=1686669368~exp=1686669968~hmac=e8e56d0778c7477ba0fc01feae7ce7368135cc76b03e6f1f8e2eb2145378338d',
    ingredients: [
      '4 tomato',
      '1 tablespoon of olive oil',
      '1 tableSpoon of salt ',
      'onion',
      'garlic',
      'chips' 'sauce',
      'meat',
      'paper'
    ],
    steps: [
      'crop the onion',
      'grill papers',
      'boil water',
      'mixed with meat ',
      'put on the stove',
      '50 min ready to eat',
    ],
    duration: 20,
    complexity: Complexity.medium,
    affordability: Affordability.luxurios,
    isGlutenFree: true,
    isLactosFree: true,
    isVegan: false,
    isVegetrian: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c9', 'c10'],
    title: 'spageti with pasta sauce',
    imageUrl:
        'https://img.freepik.com/free-photo/exploding-burger-with-vegetables-melted-cheese-black-background-generative-ai_157027-1734.jpg?w=900&t=st=1686668844~exp=1686669444~hmac=1c7e64292ac7dd58c4d5bfe3467ccb2e140caf1efa4eb220e0c058a1fb45a280',
    ingredients: [
      '4 tomato',
      '1 tablespoon of olive oil',
      '1 tableSpoon of salt ',
      'onion',
      'garlic',
      'chips' 'sauce',
      'meat',
      'paper'
    ],
    steps: [
      'crop the onion',
      'grill papers',
      'boil water',
      'mixed with meat ',
      'put on the stove',
      '50 min ready to eat'
    ],
    duration: 20,
    complexity: Complexity.hard,
    affordability: Affordability.affordable,
    isGlutenFree: true,
    isLactosFree: false,
    isVegan: true,
    isVegetrian: true,
  ),
  Meal(
    id: 'm7',
    categories: ['c1', 'c2', 'c3', 'c4'],
    title: 'spageti with limon sauce',
    imageUrl:
        'https://img.freepik.com/free-photo/fresh-pasta-with-hearty-bolognese-parmesan-cheese-generated-by-ai_188544-9469.jpg?t=st=1686668811~exp=1686669411~hmac=e461cac5ec58fa61786191514b7fbfed310d5cd10fabaeb393bad93fa8587128',
    ingredients: [
      '4 tomato',
      '1 tablespoon of olive oil',
      '1 tableSpoon of salt ',
      'onion',
      'garlic',
      'chips' 'sauce',
      'meat',
      'paper'
    ],
    steps: [
      'crop the onion',
      'grill papers',
      'boil water',
      'mixed with meat ',
      'put on the stove',
      '50 min ready to eat'
    ],
    duration: 20,
    complexity: Complexity.medium,
    affordability: Affordability.pricy,
    isGlutenFree: false,
    isLactosFree: true,
    isVegan: true,
    isVegetrian: true,
  )
];
