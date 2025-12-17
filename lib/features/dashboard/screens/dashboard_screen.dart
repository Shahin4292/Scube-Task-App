import 'package:flutter/material.dart';
import 'package:scube_task_app/features/dashboard/widget/circular_power_widget.dart';
import 'package:scube_task_app/features/dashboard/widget/data_view_card.dart';
import 'package:scube_task_app/features/dashboard/widget/toggle_button_item.dart';
import 'package:scube_task_app/features/dashboard/widget/top_tab_bar.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class ElectricitySummaryScreen extends StatefulWidget {
  const ElectricitySummaryScreen({super.key});

  @override
  State<ElectricitySummaryScreen> createState() => _ElectricitySummaryScreenState();
}

class _ElectricitySummaryScreenState extends State<ElectricitySummaryScreen> {
  final ScrollController _scrollController = ScrollController();
  bool isSource = true;
  int selectedIndex = 0;
  double _wrapTop = 40;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _wrapTop = 40 + (_scrollController.offset * 0.2);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('SCM'), actions: [
        Padding(padding: EdgeInsets.only(right: Dimensions.paddingSizeLarge),
          child: Image.asset('assets/images/bell.png',
            height: Dimensions.paddingSizeLarge,
            width: Dimensions.paddingSizeLarge,
          )),
      ],),

      body: Padding(
        padding: EdgeInsets.only(top: Dimensions.paddingSizeMedium, left: Dimensions.paddingSizeExtraLarge, right: Dimensions.paddingSizeExtraLarge),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(Dimensions.paddingSizeMedium)),
            border: Border.all(color: AppColor.borderViolet),
            color: Colors.white,
          ),
          child: Column(
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
                style: interSemiBold.copyWith(
                  fontSize: 16,
                  color: AppColor.darkGrey
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

              Expanded(
                child: Stack(
                  children: [
                    ListView(
                      controller: _scrollController,
                      padding: const EdgeInsets.only(top: Dimensions.paddingSizeSimpleSmall, left: Dimensions.paddingSizeMedium, right: Dimensions.paddingSizeMedium, bottom: Dimensions.paddingSizeMedium),
                      children: [
                        DataViewCard(
                          color: AppColor.primary,
                          imagePath: ImagePath.solarCell,
                          statusColor: AppColor.primary,
                          title: 'Data View',
                          status: '(Active)',
                          data1: '55505.63',
                          data2: '58805.63',
                          onTap: () {
                          },
                        ),

                        DataViewCard(
                          imagePath: ImagePath.battery,
                          statusColor: AppColor.primary,
                          color: Colors.orange,
                          title: 'Data Type 2',
                          status: '(Active)',
                          data1: '55505.63',
                          data2: '58805.63',
                          onTap: () {
                          },
                        ),

                        DataViewCard(
                          color: AppColor.primary,
                          statusColor: AppColor.red,
                          imagePath: ImagePath.power,
                          title: 'Data Type 3',
                          status: '(Inactive)',
                          data1: '55505.63',
                          data2: '58805.63',
                          onTap: () {
                          },
                        ),

                      ],
                    ),

                    Positioned(
                      right: 4,
                      top: _wrapTop,
                      child: Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 5,
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xFF0A8CFF)),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),

                          Positioned(
                            top: _wrapTop,
                            child: Container(
                              height: 40,
                              width: 5,
                              decoration: BoxDecoration(
                                color: Color(0xFF0A8CFF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
