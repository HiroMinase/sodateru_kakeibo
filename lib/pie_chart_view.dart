import 'package:flutter/material.dart';
import 'package:sodateru_kakeibo/pie_chart.dart';

class PieChartView extends StatelessWidget {
  const PieChartView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: LayoutBuilder(
        builder: (context, constraint) => Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(240, 240, 243, 1),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                spreadRadius: -10,
                blurRadius: 17,
                offset: Offset(-5, -5),
                color: Colors.white,
              ),
              BoxShadow(
                spreadRadius: -2,
                blurRadius: 10,
                offset: Offset(7, 7),
                color: Color.fromRGBO(146, 182, 216, 0.8),
              )
            ],
          ),
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  width: constraint.maxWidth * 0.6,
                  child: CustomPaint(
                    foregroundPainter: PieChart(
                      width: constraint.maxWidth * 0.5,
                      categories: kCategories,
                    ),
                    child: const Center(),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: constraint.maxWidth * 0.6,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(240, 240, 243, 1),
                    shape: BoxShape.circle,
                    boxShadow: [
                      const BoxShadow(
                        blurRadius: 1,
                        offset: Offset(-1, -1),
                        color: Colors.white,
                      ),
                      BoxShadow(
                        spreadRadius: -2,
                        blurRadius: 10,
                        offset: const Offset(5, 5),
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text("¥450,000"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
