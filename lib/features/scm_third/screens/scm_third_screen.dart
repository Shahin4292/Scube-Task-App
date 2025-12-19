import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/features/scm/widget/card_list_data.dart';
import 'package:scube_task_app/features/scm/widget/data_revenue_toggle.dart';
import 'package:scube_task_app/features/scm/widget/position_header_container.dart';
import 'package:scube_task_app/features/scm_second/screens/scm_second_screen.dart';
import 'package:scube_task_app/features/scm_third/widget/data_cost_info_card.dart';
import 'package:scube_task_app/features/scm_third/widget/third_energy_usage_widget.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class ScmThirdScreen extends StatefulWidget {
  const ScmThirdScreen({super.key});

  @override
  State<ScmThirdScreen> createState() => _ScmThirdScreenState();
}

class _ScmThirdScreenState extends State<ScmThirdScreen> {
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
            onPressed: (){Get.to(() => ScmSecondScreen());}
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
                  ThirdEnergyUsageWidget(),
                  SizedBox(height: 40),

                  DataCostInfoCard(),
                  SizedBox(height: Dimensions.paddingSizeLarge),
                ],
              ),
            ),

            PositionedHeaderContainer(
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  ToggleItem(
                    title: "Data View",
                    isSelected: !isDataSelected,
                    onTap: () {
                      setState(() {
                        isDataSelected = true;
                      });
                      Get.to(() => ScmSecondScreen());
                    },
                  ),

                  ToggleItem(
                    title: "Revenue View",
                    isSelected: isDataSelected,
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

