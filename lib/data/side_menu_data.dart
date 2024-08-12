import 'package:fitnessapp/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final List<SideMenu> Sidemenu = [
    SideMenu(icon: Icons.home, title: "DashBoard"),
    SideMenu(icon: Icons.person_2_outlined, title: "Profile"),
    SideMenu(icon: Icons.run_circle, title: "Exercise"),
    SideMenu(icon: Icons.settings, title: "Settings"),
    SideMenu(icon: Icons.history, title: "History"),
    SideMenu(icon: Icons.logout, title: "Sign out"),
  ];
}
