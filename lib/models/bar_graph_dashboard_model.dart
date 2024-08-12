import 'package:fitnessapp/models/graph_model.dart';
import 'package:flutter/material.dart';

class BarGraphDashboardModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  BarGraphDashboardModel(
      {required this.label, required this.color, required this.graph});
}
