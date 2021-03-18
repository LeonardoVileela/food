import 'package:flutter/material.dart';
import 'package:food/data/dummy_data.dart';
import 'package:food/models/category.dart';
import 'package:food/models/meal.dart';
import 'package:food/components/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((element) {
      return element.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
