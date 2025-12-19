import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task_app/base/data_toggle_item.dart';
import 'package:scube_task_app/features/dashboard/screens/dashboard_screen.dart';
import 'package:scube_task_app/features/scm_second/screens/scm_second_screen.dart';
import 'package:scube_task_app/features/scm/widget/card_list_data.dart';
import 'package:scube_task_app/features/scm/widget/data_revenue_toggle.dart';
import 'package:scube_task_app/features/scm/widget/energy_gauge.dart';
import 'package:scube_task_app/features/scm/widget/position_header_container.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class ScmScreen extends StatefulWidget {
  const ScmScreen({super.key});

  @override
  State<ScmScreen> createState() => _ScmScreenState();
}

class _ScmScreenState extends State<ScmScreen> {
  bool isDataSelected = true;
  bool isViewSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("SCM",
          style: interMedium.copyWith(fontSize: 16),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Get.to(() => DashboardScreen());}
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Dimensions.paddingSizeLarge),
            child: Image.asset('assets/images/bell.png',
              height: Dimensions.paddingSizeLarge,
              width: Dimensions.paddingSizeLarge,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.paddingSizeLarge),
                ),
                border: Border.all(color: AppColor.borderViolet),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  EnergyUsageWidget(),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        DataToggleItem(
                          title: "Today Data",
                          isSelected: isViewSelected,
                          onTap: () {
                            setState(() {
                              isViewSelected = true;
                            });
                          },
                        ),

                        DataToggleItem(
                          title: "Custom Date Data",
                          isSelected: !isViewSelected,
                          onTap: () {
                            setState(() {
                              isViewSelected = false;
                            });
                            Get.to(() => ScmSecondScreen());
                            isViewSelected = true;
                          },
                        ),
        
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.paddingSizeLarge),
                  CardListData(title: "5.53 kw"),
                ],
              ),
            ),
        
            PositionedHeaderContainer(
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  ToggleItem(
                    title: "Data View",
                    isSelected: isDataSelected,
                    onTap: () {
                      setState(() {
                        isDataSelected = true;
                      });
                    },
                  ),
        
                  ToggleItem(
                    title: "Revenue View",
                    isSelected: !isDataSelected,
                    onTap: () {
                      setState(() {
                        isDataSelected = false;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

