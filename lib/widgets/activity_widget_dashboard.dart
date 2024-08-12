import 'package:fitnessapp/data/health_activity_data.dart';
import 'package:fitnessapp/utils/responsive.dart';
import 'package:fitnessapp/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidgetDashboard extends StatelessWidget {
  const ActivityWidgetDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final healthModelData = HealthActivityData();
    final bool isMobile = Responsive.isMobile(context);
    return GridView.builder(
      itemCount: healthModelData.healthDetails.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              healthModelData.healthDetails[index].icon,
              width: 30,
              height: 30,
              fit: BoxFit.cover,
            ),
            Text(
              healthModelData.healthDetails[index].title,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              healthModelData.healthDetails[index].value,
              style: const TextStyle(fontSize: 13, color: Colors.white),
            ),
          ],
        ));
      },
    );
  }
}
