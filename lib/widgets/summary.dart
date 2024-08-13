import 'package:fitnessapp/constants/colors.dart';
import 'package:fitnessapp/utils/responsive.dart';
import 'package:fitnessapp/widgets/pie_chart.dart';
import 'package:fitnessapp/widgets/scheduled_widget.dart';
import 'package:fitnessapp/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Container(
      decoration: !isDesktop ? BoxDecoration(color: cardBgColor) : null,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PieChartCard(),
              Text(
                "Summary",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: greyColor),
              ),
              SizedBox(
                height: 15,
              ),
              SummaryDetails(),
              SizedBox(
                height: 15,
              ),
              ScheduledWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
