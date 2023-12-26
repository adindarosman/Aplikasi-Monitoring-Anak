import 'package:dashboardtemplate/core/core.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LenganUsia extends StatelessWidget {
  LenganUsia({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSizes sizes = AppSizes(context);

    List<FlSpot> spots = [
      FlSpot(0, 2),
      FlSpot(1, 3),
      FlSpot(2, 4),
      FlSpot(3, 6),
      FlSpot(4, 7),
      FlSpot(5, 7.7),
      FlSpot(6, 8),
      FlSpot(7, 10),
      FlSpot(8, 13),
      FlSpot(9, 15),
      FlSpot(10, 15.5),
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
                  interval: 2,
                  showTitles: true,
                  getTextStyles: (context, value) => const TextStyle(
                    color: Colors.black, // Warna teks sumbu y
                  ),
                ),
                bottomTitles: SideTitles(
                  interval: 2,
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
                  titleText: 'Lgkr Lengan Atas (cm)',
                  textStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
                bottomTitle: AxisTitle(
                  showTitle: true,
                  titleText: 'Usia (bulan)',
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
