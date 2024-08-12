import 'package:fitnessapp/widgets/activity_widget_dashboard.dart';
import 'package:fitnessapp/widgets/bar_graph_card.dart';
import 'package:fitnessapp/widgets/header_widget_dashboard.dart';
import 'package:fitnessapp/widgets/line_chart_card_dashboard.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            HeaderWidgetDashboard(),
            SizedBox(
              height: 15,
            ),
            ActivityWidgetDashboard(),
            SizedBox(
              height: 15,
            ),
            LineChartCardDashboard(),
            SizedBox(
              height: 15,
            ),
            BarGraphCard(),
          ],
        ),
      ),
    );
  }
}
