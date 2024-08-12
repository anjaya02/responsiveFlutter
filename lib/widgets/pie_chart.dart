import 'package:fitnessapp/data/pie_chart_sample_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final piechartdata = PieChartSampleData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: piechartdata.PieChartSampledata,
            ),
          ),
          Positioned.fill(
              child: Column(
            children: [
              const SizedBox(height: 90),
              Text(
                "70%",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      height: 0.5,
                    ),
              ),
              const SizedBox(height: 15),
              Text(
                "of 100%",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white.withOpacity(0.5),
                      fontWeight: FontWeight.w300,
                    ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
