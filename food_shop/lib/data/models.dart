import 'package:flutter/material.dart';

class Categories {
  final String title;
  final MaterialColor color;
  final IconData icon;

  const Categories({required this.title, required this.color, required this.icon});


}
Categories vegetables = const Categories(title: 'Vegetables', color:Colors.amber, icon: Icons.food_bank);
Categories fruits = Categories(title: 'Fruits', color: Colors.green, icon: Icons.food_bank);
Categories beverages = Categories(title: 'Beverages', color: Colors.blue, icon: Icons.food_bank);
Categories grocery = Categories(title: 'Grocery', color: Colors.orange, icon: Icons.food_bank);
Categories edibleOil = Categories(title: 'Edible oil', color: Colors.purple, icon: Icons.food_bank);
Categories houseHold = Categories(title: 'Household', color: Colors.yellow, icon: Icons.food_bank);

class FeaturedProducts {
  final String title;
  final int price;
  final String unit;
  final String image;

  const FeaturedProducts({required this.title, required this.unit, required this.price, required this.image});
}
