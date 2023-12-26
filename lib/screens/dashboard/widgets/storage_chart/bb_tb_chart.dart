import 'package:dashboardtemplate/core/core.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BBdgnTB_chart extends StatelessWidget {
  BBdgnTB_chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);

    List<FlSpot> spots = [
      FlSpot(14, 10),
      FlSpot(12, 9),
      FlSpot(10, 8),
      FlSpot(9, 7),
      FlSpot(8.5, 6),
      FlSpot(7, 5),
      FlSpot(6, 3),
      FlSpot(5, 2),
      FlSpot(3, 2),
      FlSpot(2, 1),
    ];

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          LineChart(
            LineChartData(
              lineBarsData: [
                LineChartBarData(
                  spots: spots,
                  isCurved: true,
                  colors: [AppColors.primaryColor],
                  dotData: FlDotData(show: true),
                  belowBarData: BarAreaData(show: false),
                ),
              ],
              titlesData: FlTitlesData(
                leftTitles: SideTitles(
                  interval: 5,
                  showTitles: true,
                  getTextStyles: (context, value) => const TextStyle(
                    color: Colors.black, // Warna teks sumbu y
                  ),
                ),
                bottomTitles: SideTitles(
                  interval: 5,
                  showTitles: true,
                  getTextStyles: (context, value) => const TextStyle(
                    color: Colors.black, // Warna teks sumbu x
                  ),
                ),
              ),
              gridData: FlGridData(
                show: true,
                horizontalInterval: 1.0,
                verticalInterval: 1.0,
                drawHorizontalLine: true,
                drawVerticalLine: true,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Colors.grey, // Warna garis horizontal grid
                    strokeWidth: 0.5,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return FlLine(
                    color: Colors.grey, // Warna garis vertical grid
                    strokeWidth: 0.5,
                  );
                },
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: Colors.black, width: 1),
              ),
              axisTitleData: FlAxisTitleData(
                leftTitle: AxisTitle(
                  showTitle: true,
                  titleText: 'Berat Badan (kg)',
                  textStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                bottomTitle: AxisTitle(
                  showTitle: true,
                  titleText: 'Tinggi Badan (cm)',
                  textStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
