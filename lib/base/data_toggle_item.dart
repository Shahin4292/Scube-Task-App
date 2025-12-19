import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class DataToggleItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const DataToggleItem({super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final activeColor = AppColor.primary;
    final inactiveColor = AppColor.primary.withOpacity(0.5);

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? activeColor : inactiveColor,
              ),
            ),
            child: Center(
              child: Container(
                width: Dimensions.paddingSizeSmall,
                height: Dimensions.paddingSizeSmall,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSelected ? activeColor : inactiveColor,
                ),
              ),
            ),
          ),
          const SizedBox(width: Dimensions.paddingSizeSimpleSmall),
          Text(
            title,
            style: isSelected ? interSemiBold.copyWith(
              fontSize: 14,
              color: isSelected ? activeColor : AppColor.dukeBlue.withOpacity(0.5),
            ) : interRegular.copyWith(
              fontSize: 14,
              color: isSelected ? activeColor : AppColor.dukeBlue.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }
}
