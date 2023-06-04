import 'dart:math';

import 'package:flutter/material.dart';

class PieChart extends CustomPainter {
  final List<Category> categories;
  final double width;

  PieChart({required this.categories, required this.width});

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width / 2;

    double total = 0;
    for (var expense in categories) {
      total += expense.amount;
    }

    double startRadian = -pi / 2;

    for (var i = 0; i < categories.length; i++) {
      final currentCategory = categories.elementAt(i);
      final sweepRadian = currentCategory.amount / total * 2 * pi;

      paint.color = kNeumorphicColors.elementAt(i % categories.length);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startRadian,
        sweepRadian,
        false,
        paint,
      );

      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
    // throw UnimplementedError();
  }
}

class Category {
  final String name;
  final double amount;

  Category({required this.name, required this.amount});
}

// k = conbention

final kCategories = [
  Category(name: "居住費", amount: 200000.00),
  Category(name: "食費", amount: 50000.00),
  Category(name: "交通費", amount: 20000.00),
  Category(name: "サブスク", amount: 30000.00),
  Category(name: "衣服費", amount: 20000.00),
  Category(name: "その他", amount: 40000.00),
];

final kNeumorphicColors = [
  const Color.fromRGBO(252, 91, 57, 1),
  const Color.fromRGBO(255, 171, 67, 1),
  const Color.fromRGBO(123, 201, 82, 1),
  const Color.fromRGBO(46, 198, 255, 1),
  const Color.fromRGBO(82, 98, 255, 1),
  const Color.fromRGBO(139, 135, 130, 1),
];
