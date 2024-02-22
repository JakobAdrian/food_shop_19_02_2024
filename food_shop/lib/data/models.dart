import 'package:flutter/material.dart';

class Categories {
  final String title;
  final Color color;
  final String image;

  const Categories(
      {required this.title, required this.color, required this.image});
}

Categories vegetables = const Categories(
  title: 'Vegetables',
  color: Color.fromARGB(255, 205, 255, 191),
  image: "assets/images/Group.png",
);
Categories fruits = const Categories(
  title: 'Fruits',
  color: Color.fromARGB(255, 255, 195, 191),
  image: "assets/images/Vector.png",
);
Categories beverages = const Categories(
  title: 'Beverages',
  color: Color.fromARGB(255, 255, 247, 159),
  image: "assets/images/Group 216.png",
);
Categories grocery = const Categories(
  title: 'Grocery',
  color: Color.fromARGB(255, 242, 177, 255),
  image: "assets/images/Vector-1.png",
);
Categories edibleOil = const Categories(
  title: 'Edible oil',
  color: Color.fromARGB(255, 204, 228, 255),
  image: "assets/images/Group-1.png",
);
Categories houseHold = const Categories(
  title: 'Household',
  color: Color.fromARGB(255, 235, 164, 233),
  image: "assets/images/vacuum.png",
);

List<Categories> categories = [
  vegetables,
  fruits,
  beverages,
  grocery,
  edibleOil,
  houseHold
];

//////////////////////////

class FeaturedProducts {
  final String title;
  final double price;
  final String unit;
  final String image;
  final Color color;

  const FeaturedProducts(
      {required this.title,
      required this.unit,
      required this.price,
      required this.image,
      required this.color});
}

FeaturedProducts freshPeach = const FeaturedProducts(
  title: "Fresh Peach",
  price: 8.00,
  unit: "dozen",
  image: "avocado-21.png",
  color: Color.fromARGB(255, 255, 232, 191),
);
FeaturedProducts avocado = const FeaturedProducts(
  title: "Avocado",
  price: 7.00,
  unit: "2.0 lbs",
  image: "avocado-21.png",
  color: Color.fromARGB(255, 255, 232, 191),
);
FeaturedProducts pineapple = const FeaturedProducts(
  title: "Pineapple",
  price: 9.90,
  unit: "1.50 lbs",
  image: "pineapple-pieces.png",
  color: Color.fromARGB(255, 255, 232, 191),
);
FeaturedProducts blackGrapes = const FeaturedProducts(
  title: "Black Grapes",
  price: 7.05,
  unit: "5.0 lbs",
  image: "grapes-31.png",
  color: Color.fromARGB(255, 255, 232, 191),
);
FeaturedProducts pomegranate = const FeaturedProducts(
  title: "Pomegranate",
  price: 2.09,
  unit: "1.50 lbs",
  image: "green-fresh-broccoli.png",
  color: Color.fromARGB(255, 255, 232, 191),
);
FeaturedProducts freshBroccoli = const FeaturedProducts(
  title: "Fresh Broccoli",
  price: 3.00,
  unit: "1 kg",
  image: "green-fresh-broccoli.png",
  color: Color.fromARGB(255, 255, 232, 191),
);

List<FeaturedProducts> featuredProducts = [
  freshPeach,
  avocado,
  pineapple,
  blackGrapes,
  pomegranate,
  freshBroccoli
];
