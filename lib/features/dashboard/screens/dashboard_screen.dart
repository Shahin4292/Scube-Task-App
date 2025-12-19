import 'package:flutter/material.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/features/dashboard/widget/analyze_card.dart';
import 'package:scube_task_app/features/dashboard/widget/circular_power_widget.dart';
import 'package:scube_task_app/features/dashboard/widget/data_view_stack.dart';
import 'package:scube_task_app/features/dashboard/widget/toggle_button_item.dart';
import 'package:scube_task_app/features/dashboard/widget/top_tab_bar.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isSource = true;
  int selectedIndex = 0;
  double wrapTop = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'SCM',),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(top: Dimensions.paddingSizeMedium, left: Dimensions.paddingSizeExtraLarge, right: Dimensions.paddingSizeExtraLarge),
          child: Column(
            spacing: Dimensions.paddingSizeLarge,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.paddingSizeMedium)),
                  border: Border.all(color: AppColor.borderViolet),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: .min,
                  children: [
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

                    const SizedBox(height: Dimensions.paddingSizeMedium),

                    Text(
                      'Electricity',
                      style: interSemiBold.copyWith(fontSize: 16, color: AppColor.darkGrey
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: Dimensions.paddingSizeSimpleSmall, right: Dimensions.paddingSizeSimpleSmall),
                      child: const Divider(height: Dimensions.paddingSizeSimpleSmall),
                    ),

                    const SizedBox(height: Dimensions.paddingSizeDefault),

                    CircularPowerWidget(
                      title: 'Total Power',
                      powerText: '5.53 kw',
                    ),

                    const SizedBox(height: Dimensions.paddingSizeSimpleSmall),

                    Container(
                      height: 32,
                      margin: const EdgeInsets.symmetric(horizontal: Dimensions.radiusExtraLarge),
                      decoration: BoxDecoration(
                        color: AppColor.borderViolet.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          ToggleButtonItem(
                            title: 'Source',
                            isSelected: isSource,
                            onTap: () => setState(() => isSource = true),
                          ),

                          ToggleButtonItem(
                            title: 'Load',
                            isSelected: !isSource,
                            onTap: () => setState(() => isSource = false),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: Dimensions.paddingSizeMedium, right: Dimensions.paddingSizeMedium),
                      child: const Divider(height: Dimensions.paddingSizeSimpleSmall,thickness: 2,),
                    ),

                    DataViewCardStack(wrapTop: wrapTop),
                  ],
                ),
              ),
              AnalyzeCardGroup(),
            ],
          ),
        ),
      ),
    );
  }
}
