import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class TopTabBar extends StatelessWidget {
  final int selectedIndex;
  final VoidCallback onSummaryTap;
  final VoidCallback onSldTap;
  final VoidCallback onDataTap;

  const TopTabBar({
    super.key,
    required this.selectedIndex,
    required this.onSummaryTap,
    required this.onSldTap,
    required this.onDataTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColor.blueViolet),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onSummaryTap,
              child: Container(
                alignment: .center,
                decoration: BoxDecoration(
                  color: selectedIndex == 0 ? AppColor.primary : Colors.transparent,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.paddingSizeSmall),
                    topRight: Radius.circular(Dimensions.paddingSizeSmall),
                  ),
                ),
                child: Text(
                  'Summery',
                  style: selectedIndex == 0 ? interBold.copyWith(color: Colors.white, fontSize: 14)
                      : interMedium.copyWith(color: AppColor.darkGrey, fontSize: 14),
              ),
            ),
          ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: onSldTap,
              child: Container(
                alignment: .center,
                decoration: BoxDecoration(
                  color: selectedIndex == 1 ? AppColor.primary : Colors.transparent,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.paddingSizeSmall),
                    topRight: Radius.circular(Dimensions.paddingSizeSmall),
                  ),
                ),
                child: Text(
                  'SLD',
                  style: selectedIndex == 1 ? interBold.copyWith(color: Colors.white, fontSize: 14)
                      : interMedium.copyWith(color: AppColor.darkGrey, fontSize: 14),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onTap: onDataTap,
              child: Container(
                alignment: .center,
                decoration: BoxDecoration(
                  color: selectedIndex == 2 ? AppColor.primary : Colors.transparent,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.paddingSizeSmall),
                    topRight: Radius.circular(Dimensions.paddingSizeSmall),
                  ),
                ),
                child: Text(
                  'Data',
                  style: selectedIndex == 2 ? interBold.copyWith(color: Colors.white, fontSize: 14)
                      : interMedium.copyWith(color: AppColor.darkGrey, fontSize: 14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
