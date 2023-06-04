import 'package:flutter/material.dart';
import 'package:sodateru_kakeibo/categories_row.dart';
import 'package:sodateru_kakeibo/pie_chart_view.dart';

class RegisterPricePage extends StatelessWidget {
  const RegisterPricePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex: 1,
          child: Center(child: Text("値段を登録する")),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: const [
                CategoriesRow(),
                PieChartView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
