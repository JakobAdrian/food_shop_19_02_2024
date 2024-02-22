import 'package:flutter/material.dart';
import 'package:food_shop/data/models.dart';
import 'package:food_shop/widgets/catergory_item.dart';
import 'package:food_shop/widgets/features_products.dart';

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
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  scrollDirection: Axis.vertical,
                  children: [
                    Stack(
                      children: [
                        Image.asset("assets/images/background.png"),
                        const Positioned(
                          top: 140,
                          left: 38,
                          child: Text("20 % off on your \nfirst purchase",
                              style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ],
                    ),
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
                    Row(
                      children: [
                        FeaturedProductItem(
                          featuredProducts: freshPeach,
                        ),

                        const SizedBox(width: 10),
                        Stack(
                          children: [
                            Container(
                              width: 180,
                              height: 300,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 232, 242, 1),
                              ),
                            ),
                            const Positioned(
                              top: 25,
                              left: 20,
                              child: CircleAvatar(
                                maxRadius: 70,
                                backgroundColor:
                                    Color.fromRGBO(252, 255, 217, 1),
                              ),
                            ),
                            Positioned(
                              top: 65,
                              left: 15,
                              child: Image.asset("assets/images/aocado-21.png",
                                  width: 150),
                            ),
                          ],
                        ),
                      ],
                    ),
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
