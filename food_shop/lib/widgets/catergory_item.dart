import 'package:flutter/material.dart';
import 'package:food_shop/data/models.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });

  final Categories category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 36,
          backgroundColor: category.color,
          child: Image.asset(
            category.image,
            width: 48,
          ),
        ),
        const SizedBox(
          height: 10,
          width: 80,
        ),
        Text(
          category.title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(118, 0, 0, 0),
          ),
        ),
      ],
    );
  }
}
