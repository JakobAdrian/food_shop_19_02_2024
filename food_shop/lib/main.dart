import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Column(
            children: [
              const SearchBar(
                
                hintText: "Search keywords...",
                leading: Icon(Icons.search),
              ),
              ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Image.asset("assets/images/background.png"),
                  const SizedBox(height: 10),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          child:
                          Image.asset("assets/images/background.png"),
                        )
                    
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const Text("Featured products"),
                      const SizedBox(height: 100),
                      Container(
                        width: 70,
                        height: 70,
                        color: Colors.grey,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            Image.asset("assets/images/background.png"),
                      
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 80),
            ],
          ),
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
    );
  }
}
