import 'package:flutter/material.dart';
import 'package:sodateru_kakeibo/pie_chart.dart';

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var category in kCategories)
            ExpenseCategory(
              label: category.name,
              index: kCategories.indexOf(category),
            ),
        ],
      ),
    );
  }
}

class ExpenseCategory extends StatelessWidget {
  final String label;
  final int index;

  const ExpenseCategory({
    Key? key,
    required this.label,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10,
        left: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 7,
            height: 7,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kNeumorphicColors.elementAt(index % kNeumorphicColors.length),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(label.capitalize()),
        ],
      ),
    );
  }
}

extension StringExtention on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
