import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  // Sample list of recipes
  final List<Map<String, String>> recipes = [
    {
      'name': 'Pasta',
      'ingredients': 'Pasta, Tomato Sauce, Cheese',
      'instructions': 'Boil pasta, add sauce, mix well, and serve hot.'
    },
    {
      'name': 'Pizza',
      'ingredients': 'Dough, Tomato Sauce, Cheese, Toppings',
      'instructions': 'Bake at 375°F for 20 minutes.'
    },
    {
      'name': 'Salad',
      'ingredients': 'Lettuce, Tomato, Cucumber, Dressing',
      'instructions': 'Chop vegetables, add dressing, and mix well.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe Book'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipes[index]['name']!,
                    ingredients: recipes[index]['ingredients']!,
                    instructions: recipes[index]['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
