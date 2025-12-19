import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/styles.dart';

class ToggleButtonItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const ToggleButtonItem({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: .center,
          decoration: BoxDecoration(
            color: isSelected ? AppColor.primary : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            title,
            style: isSelected ? interSemiBold.copyWith(
              color: Colors.white,
              fontSize: 16,
            ) : interRegular.copyWith(
              color: AppColor.darkGrey,
              fontSize: 16,
            )
          ),
        ),
      ),
    );
  }
}
