import 'package:fitnessapp/constants/colors.dart';
import 'package:fitnessapp/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final sidemenuData = SideMenuData();
  // index tracker
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
        child: Container(
          color: backgroundColor,
          child: ListView.builder(
            itemCount: sidemenuData.Sidemenu.length,
            itemBuilder: (context, index) {
              return _sideMenuList(index);
            },
          ),
        ),
      ),
    );
  }

  Widget _sideMenuList(int index) {
    final item = sidemenuData.Sidemenu[index];
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: selectedIndex == index ? sectionColor : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                item.icon,
                color: selectedIndex == index ? blackColor : Colors.white,
              ),
              const SizedBox(width: 10),
              Text(
                item.title,
                style: TextStyle(
                  color: selectedIndex == index ? blackColor : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
