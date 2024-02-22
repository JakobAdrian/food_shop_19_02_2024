import 'package:flutter/material.dart';

import 'package:food_shop/data/models.dart';
import 'package:food_shop/widgets/catergory_item.dart';
import 'package:food_shop/widgets/featured_products.dart';
import 'package:food_shop/widgets/images_flow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const SearchBar(
                hintText: "Search keywords...",
                leading: Icon(Icons.search),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.vertical,
                  children: [
                    const ImagesFlow(),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var category in categories)
                            CategoryItem(category: category),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Featured products",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      runSpacing: 10,
                      spacing: 10,
                      children: [
                        for (var featuredProduct in featuredProducts)
                          FeaturedProductItem(
                            featuredProducts: featuredProduct,
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel), label: "Orders"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.heart_broken), label: "Wishlist"),
            ],
          ),
        ),
      ),
    );
  }
}
// Wrap(
                    //   children: [
                    //     FeaturedProductItem(
                    //       featuredProducts: freshPeach,
                    //     ),
                    //     const SizedBox(width: 10),
                    //     FeaturedProductItem(
                    //       featuredProducts: avocado,
                    //     ),
                    //     const SizedBox(height: 50),
                    //     FeaturedProductItem(
                    //       featuredProducts: pineapple,
                    //     ),
                    //     const SizedBox(width: 10),
                    //     FeaturedProductItem(
                    //       featuredProducts: blackGrapes,
                    //     ),
                    //     const SizedBox(height: 50),
                    //     FeaturedProductItem(
                    //       featuredProducts: pomegranate,
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     FeaturedProductItem(featuredProducts: freshBroccoli),
                    //   ],
                    // ),