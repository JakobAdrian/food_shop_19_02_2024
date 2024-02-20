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
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const SearchBar(
                hintText: "Search keywords...",
                leading: Icon(Icons.search),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(85.0, 8.0, 0, 0),
              ),
              Expanded(
                child: ListView(
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Categories",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 265),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 10,
                      height: 70,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          const SizedBox(width: 10),
                          Stack(
                            children: [
                              const CircleAvatar(
                                maxRadius: 36,
                                backgroundColor:
                                    Color.fromRGBO(230, 242, 234, 1),
                              ),
                              Positioned.fill(
                                child: Image.asset("assets/images/Group.png"),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Stack(
                            children: [
                              const CircleAvatar(
                                maxRadius: 36,
                                backgroundColor:
                                    Color.fromRGBO(255, 233, 229, 1),
                              ),
                              Positioned.fill(
                                child: Image.asset("assets/images/Vector.png"),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Stack(
                            children: [
                              const CircleAvatar(
                                maxRadius: 36,
                                backgroundColor:
                                    Color.fromRGBO(255, 246, 227, 1),
                              ),
                              Positioned.fill(
                                child:
                                    Image.asset("assets/images/Group 216.png"),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Stack(
                            children: [
                              const CircleAvatar(
                                maxRadius: 36,
                                backgroundColor:
                                    Color.fromRGBO(243, 239, 250, 1),
                              ),
                              Positioned.fill(
                                child:
                                    Image.asset("assets/images/Vector-1.png"),
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          CircleAvatar(
                            maxRadius: 36,
                            backgroundColor:
                                const Color.fromRGBO(220, 244, 245, 1),
                            child: Image.asset(
                              "assets/images/Group-1.png",
                              width: 48,
                            ),
                          ),
                          const SizedBox(width: 10),
                          CircleAvatar(
                            maxRadius: 36,
                            backgroundColor:
                                const Color.fromRGBO(255, 232, 242, 1),
                            child: Image.asset(
                              "assets/images/vacuum.png",
                              width: 48,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(width: 10),
                            Text("Featured products",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 210),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ListView(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 180,
                                  height: 300,
                                  decoration: const BoxDecoration(
                                    color: Color.fromRGBO(255, 232, 242, 1),
                                  ),
                                  child: Image.asset(
                                      "assets/images/peach-24 1.png"),
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
                                      child: Image.asset(
                                          "assets/images/aocado-21.png",
                                          width: 150),
                                    ),
                                  ],
                                ),
                              ],
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
