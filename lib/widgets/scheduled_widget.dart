import 'package:fitnessapp/constants/colors.dart';
import 'package:fitnessapp/data/scheduled_data.dart';
import 'package:fitnessapp/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ScheduledWidget extends StatelessWidget {
  const ScheduledWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduledData = ScheduledDataSummary();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Scheduled",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          for (var index = 0; index < scheduledData.scheduled.length; index++)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: CustomCard(
                color: limeColor,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              scheduledData.scheduled[index].title,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              scheduledData.scheduled[index].date,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.alarm,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
