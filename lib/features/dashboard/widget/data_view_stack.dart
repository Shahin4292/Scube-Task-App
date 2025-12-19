import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task_app/features/dashboard/screens/dashborad_found_screen.dart';
import 'package:scube_task_app/features/dashboard/widget/vertical_indicator.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';

import 'data_view_card.dart';

class DataViewCardStack extends StatelessWidget {
  const DataViewCardStack({
    super.key,
    required double wrapTop,
  }) : _wrapTop = wrapTop;

  final double _wrapTop;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: Dimensions.paddingSizeSimpleSmall, left: Dimensions.paddingSizeMedium, right: Dimensions.paddingSizeMedium, bottom: Dimensions.paddingSizeMedium),
          child: Column(
            spacing: 8,
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
                  Get.to(() => DashboardFoundScreen());
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
        ),

        VerticalGradientIndicator(
          topOffset: _wrapTop,
        ),
      ],
    );
  }
}