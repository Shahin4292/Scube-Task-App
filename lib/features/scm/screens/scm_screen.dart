import 'package:flutter/material.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/features/scm/widget/custom_data_container.dart';
import 'package:scube_task_app/features/scm/widget/data_revenue_toggle.dart';
import 'package:scube_task_app/features/scm/widget/energy_chart_card.dart';
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
      appBar: CustomAppBar(title: "SCM"),
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
                    padding: const EdgeInsets.symmetric(horizontal: 55),
                    child: Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        ToggleItem(
                          title: "Data View",
                          isSelected: isViewSelected,
                          onTap: () {
                            setState(() {
                              isViewSelected = true;
                            });
                          },
                        ),
        
                        ToggleItem(
                          title: "Revenue View",
                          isSelected: !isViewSelected,
                          onTap: () {
                            setState(() {
                              isViewSelected = false;
                            });
                          },
                        ),
        
                      ],
                    ),
                  ),

                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 300,
                    margin: EdgeInsets.only(top: 20, left: 24, right: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(Dimensions.paddingSizeSmall),
                      ),
                      border: Border.all(color: AppColor.borderViolet),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          child: Row(
                            spacing: 30,
                            children: [
                              Text("Energy Chart", style: interSemiBold.copyWith(fontSize: 14, color: AppColor.dukeBlue),),
                              Text("5.53 kw", style: interSemiBold.copyWith(fontSize: 30, color: AppColor.dukeBlue),),
                            ],
                          ),
                        ),

                        CustomDataContainer(
                          color: AppColor.primary,
                          dataA: 'Data A',
                          data1: 'Data',
                          data2: 'Cost',
                          value1: '2798.50 (29.53%)',
                          value2: '35689 ৳',
                        ),

                        CustomDataContainer(
                          color: AppColor.primary.withOpacity(0.4),
                          dataA: 'Data B',
                          data1: 'Data',
                          data2: 'Cost',
                          value1: '72598.50 (35.39%)',
                          value2: '5259689 ৳',
                        ),

                        CustomDataContainer(
                          color: AppColor.primary,
                          dataA: 'Data C',
                          data1: 'Data',
                          data2: 'Cost',
                          value1: '6598.36 (83.90%)',
                          value2: '5698756 ৳',
                        ),

                        CustomDataContainer(
                          color: AppColor.orange,
                          dataA: 'Data D',
                          data1: 'Data',
                          data2: 'Cost',
                          value1: '6598.26 (36.59%)',
                          value2: '356987 ৳',
                        )

                      ],
                    ),
                  )
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
