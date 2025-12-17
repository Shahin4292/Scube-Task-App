import 'package:flutter/material.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/features/dashboard/widget/top_tab_bar.dart';

class ElectricitySummaryScreen extends StatefulWidget {
  const ElectricitySummaryScreen({super.key});

  @override
  State<ElectricitySummaryScreen> createState() => _ElectricitySummaryScreenState();
}

class _ElectricitySummaryScreenState extends State<ElectricitySummaryScreen> {
  bool isSource = true;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'SCM', actions: [
        Padding(
            padding: EdgeInsets.only(right: 20),
          child: Image.asset(
            'assets/images/bell.png',
            height: 20,
            width: 20,
          )),
      ],),

      body: Padding(
        padding: EdgeInsets.only(top: 12, left: 24, right: 24),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            border: Border.all(color: const Color(0xFFB6C6DA)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              // Top Tabs

          TopTabBar(
          selectedIndex: selectedIndex,
            onSummaryTap: () {
              setState(() => selectedIndex = 0);
            },
            onSldTap: () {
              setState(() => selectedIndex = 1);
            },
            onDataTap: () {
              setState(() => selectedIndex = 2);
            },
          ),
            ],
          ),
        ),
      ),
    );
  }
}
