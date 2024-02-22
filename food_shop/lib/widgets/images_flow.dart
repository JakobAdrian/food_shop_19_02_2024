import 'package:flutter/material.dart';

class ImagesFlow extends StatelessWidget {
  const ImagesFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
