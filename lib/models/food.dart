import 'dart:ui';

class Food {
  final String name;            // pepper-chicken
  final String description;     // Spicy, savory, tender, flavorful chicken
  final String imagePath;       // lib/images/pepper_chicken.png
  final double price;           // 1000
  final FoodCategory category;  // chicken
  final Color color;            // Color of the food category
  final double size;            // Size of the food category
  List<Addon> availableAddons;  // [extra chicken, spicy sauce]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.color,
    required this.size,
    required this.availableAddons,
  });
}

// food categories
enum FoodCategory {
  awara,
  cake,
  chicken,
  chinchin,
  //meatpie,
}

// food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
