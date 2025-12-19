import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class DateInputField extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const DateInputField({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 36,
          padding: const EdgeInsets.symmetric(
            horizontal: Dimensions.paddingSizeSimpleSmall,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
            BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
            border: Border.all(color: AppColor.borderViolet),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: interRegular.copyWith(
                  fontSize: 12,
                  color: AppColor.blueViolet,
                ),
              ),
              Image.asset(
                ImagePath.calendar,
                height: 18,
                width: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
