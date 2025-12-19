import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/base/data_toggle_item.dart';
import 'package:scube_task_app/features/scm/screens/scm_screen.dart';
import 'package:scube_task_app/features/scm/widget/card_list_data.dart';
import 'package:scube_task_app/features/scm/widget/data_revenue_toggle.dart';
import 'package:scube_task_app/features/scm/widget/position_header_container.dart';
import 'package:scube_task_app/features/scm_second/widget/date_input_field.dart';
import 'package:scube_task_app/features/scm_second/widget/second_energy_widget.dart';
import 'package:scube_task_app/features/scm_third/screens/scm_third_screen.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class ScmSecondScreen extends StatefulWidget {
  const ScmSecondScreen({super.key});

  @override
  State<ScmSecondScreen> createState() => _ScmSecondScreenState();
}

class _ScmSecondScreenState extends State<ScmSecondScreen> {
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
            onPressed: (){Get.to(() => ScmScreen());}
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
              // height: MediaQuery.sizeOf(context).height,
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
                  SecondEnergyUsageWidget(),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        DataToggleItem(
                          title: "Today Data",
                          isSelected: !isViewSelected,
                          onTap: () {
                            setState(() {
                              isViewSelected = false;
                            });
                            Get.to(() => ScmScreen());
                          },
                        ),

                        DataToggleItem(
                          title: "Custom Date Data",
                          isSelected: isViewSelected,
                          onTap: () {
                            setState(() {
                              isViewSelected = true;
                            });
                          },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: Dimensions.paddingSizeSimpleSmall),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      spacing: 4,
                      children: [
                        DateInputField(title: 'From Date'),
                        DateInputField(title: 'From Date'),
                        Container(
                          height: 36,
                          width: 34,
                          padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeSimpleSmall),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
                            border: Border.all(color: AppColor.borderViolet),
                          ),
                          child: Image.asset(ImagePath.search)
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: Dimensions.paddingSizeMedium),
                  CardListData(title: "20.05 kw"),
                  SizedBox(height: Dimensions.paddingSizeMedium),
                  CardListData(title: "5.53 kw"),
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
                      Get.to(() => ScmThirdScreen());
                      isDataSelected = true;
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

