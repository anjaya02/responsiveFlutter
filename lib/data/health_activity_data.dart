import 'package:fitnessapp/models/health_activity_model.dart';

class HealthActivityData {
  final healthDetails = [
    HealthActivityModel(
        icon: "assets/icons/burn.png", title: "230", value: "Water Level"),
    HealthActivityModel(
        icon: "assets/icons/steps.png", title: "7.8k", value: "Miles Steps"),
    HealthActivityModel(
        icon: "assets/icons/distance.png",
        title: "340m",
        value: "Covered Distance"),
    HealthActivityModel(
        icon: "assets/icons/sleep.png", title: "7h48m", value: "Sleep"),
  ];
}
