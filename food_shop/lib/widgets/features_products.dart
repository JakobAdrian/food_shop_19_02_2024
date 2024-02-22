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
          children: [
            Container(
              width: 180,
              height: 300,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 232, 242, 1),
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
            Positioned(
              top: 65,
              left: 0,
              child: Image.asset(featuredProducts.image, fit: BoxFit.contain),
            ),
            Text(featuredProducts.title),
          ],
        ),
      ],
    );
  }
}
