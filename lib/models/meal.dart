import 'package:flutter/foundation.dart';

enum Complexity { Simple, Medium, Difficult }

enum Cost {
  Cheap,
  Fair,
  Expensive,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.complexity,
    @required this.cost,
  });

  String get complexityText {
    if (complexity == Complexity.Simple) {
      return 'Simples';
    } else if (complexity == Complexity.Medium) {
      return 'Normal';
    } else if (complexity == Complexity.Difficult) {
      return 'Difícil';
    } else {
      return 'Desconhecida';
    }
  }

  String get costText {
    if (cost == Cost.Cheap) {
      return 'Barato';
    } else if (cost == Cost.Fair) {
      return 'Justo';
    } else if (cost == Cost.Expensive) {
      return 'Caro';
    } else {
      return 'Desconhecido';
    }
  }
}
