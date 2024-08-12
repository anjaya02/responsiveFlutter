import 'package:fitnessapp/constants/colors.dart';
import 'package:fitnessapp/data/line_chart_dashboard_data.dart';
import 'package:fitnessapp/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCardDashboard extends StatelessWidget {
  const LineChartCardDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineChartDashboardData();

    return CustomCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Steps Overview",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: greyColor,
            ),
          ),
          const SizedBox(height: 20),
          AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(
              LineChartData(
                lineTouchData: const LineTouchData(
                  handleBuiltInTouches: true,
                ),
                titlesData: FlTitlesData(
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 40, // Adjusted to fit the titles
                        getTitlesWidget: (double value, TitleMeta meta) {
                          final title = data.bottomTitle[value.toInt()];
                          return title != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    title.toString(),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.blue,
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink();
                        },
                      ),
                    ),

                    // leftSide titles

                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,

                      //separation between the graph data and  the titiles

                      reservedSize: 40,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? Text(
                                data.leftTitle[value.toInt()].toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                ),
                              )
                            : const SizedBox();
                      },
                    ))),
                borderData: FlBorderData(
                  show: false,
                ),
                lineBarsData: [
                  LineChartBarData(
                      color: sectionColor,
                      barWidth: 2.54,
                      belowBarData: BarAreaData(
                        gradient: LinearGradient(
                            colors: [
                              sectionColor.withOpacity(.5),
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        show: true,
                      ),
                      dotData: const FlDotData(show: false),
                      spots: data.spots),
                ],
                minX: 0,
                maxX: 120,
                minY: 0,
                maxY: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
