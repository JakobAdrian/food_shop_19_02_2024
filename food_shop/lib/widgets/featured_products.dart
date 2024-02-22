import 'package:flutter/material.dart';
import 'package:food_shop/data/models.dart';

class FeaturedProductItem extends StatelessWidget {
  const FeaturedProductItem({
    super.key,
    required this.featuredProducts,
  });

  final FeaturedProducts featuredProducts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 180,
              height: 300,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(232, 232, 232, 1),
              ),
            ),
            Positioned(
              top: 25,
              left: 20,
              child: CircleAvatar(
                maxRadius: 70,
                backgroundColor: featuredProducts.color,
              ),
            ),
            Positioned(top: 200, child: Text('\$ ${featuredProducts.price}')),
            Positioned(
              top: 215,
              child: Text((featuredProducts.title),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Positioned(top: 240, child: Text(featuredProducts.unit)),
          ],
        ),
      ],
    );
  }
}
// Positioned(
//               top: 65,
//               left: 0,
//               child: Image.asset(featuredProducts.image),
//             ),