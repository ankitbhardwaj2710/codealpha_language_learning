import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {
        "title": "Animals",
        "icon": Icons.pets,
        "color": Colors.orange,
      },
      {
        "title": "Food",
        "icon": Icons.restaurant,
        "color": Colors.red,
      },
      {
        "title": "Travel",
        "icon": Icons.flight,
        "color": Colors.blue,
      },
      {
        "title": "Technology",
        "icon": Icons.computer,
        "color": Colors.green,
      },
      {
        "title": "Sports",
        "icon": Icons.sports_soccer,
        "color": Colors.purple,
      },
      {
        "title": "Medical",
        "icon": Icons.local_hospital,
        "color": Colors.teal,
      },
    ];

    return GridView.builder(
      itemCount: categories.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        childAspectRatio: 1.1,
      ),
      itemBuilder: (context, index) {
        final category = categories[index];

        return CategoryCard(
          title: category["title"] as String,
          icon: category["icon"] as IconData,
          color: category["color"] as Color,
        );
      },
    );
  }
}