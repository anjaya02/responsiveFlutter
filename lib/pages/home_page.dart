import 'package:fitnessapp/utils/responsive.dart';
import 'package:fitnessapp/widgets/dashboard.dart';
import 'package:fitnessapp/widgets/side_menu.dart';
import 'package:fitnessapp/widgets/summary.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideMenu(),
            )
          : null,
      endDrawer: Responsive.isMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Summary(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            const Expanded(
              flex: 2,
              child: SizedBox(
                child: SideMenu(),
              ),
            ),
          const Expanded(
            flex: 7,
            child: SizedBox(
              child: Dashboard(),
            ),
          ),
          if (isDesktop)
            const Expanded(
                flex: 3,
                child: SizedBox(
                  child: Summary(),
                )),
        ],
      )),
    );
  }
}
