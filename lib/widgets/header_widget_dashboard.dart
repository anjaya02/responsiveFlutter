import 'package:fitnessapp/constants/colors.dart';
import 'package:fitnessapp/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidgetDashboard extends StatelessWidget {
  const HeaderWidgetDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu,
                color: Colors.grey,
                size: 25,
              ),
            ),
          ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: TextField(
              style: const TextStyle(color: Colors.grey),
              decoration: InputDecoration(
                filled: true,
                fillColor: cardBgColor,
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                labelStyle: const TextStyle(
                  color: Color(0xFF6200EE),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 5,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 21,
                ),
              ),
            ),
          ),
        if (Responsive.isMobile(context))
          Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 25,
                ),
                onPressed: () {},
              ),
              InkWell(
                onTap: () {
                  Scaffold.of(context).openEndDrawer();
                },
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/avatar.jpg",
                      width: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
