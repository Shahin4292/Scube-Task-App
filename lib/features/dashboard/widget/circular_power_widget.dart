import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class CircularPowerWidget extends StatelessWidget {
  final String title;
  final String powerText;
  final double size;
  final double strokeWidth;
  const  CircularPowerWidget({super.key, required this.title, required this.powerText, this.size = 150, this.strokeWidth = 18,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColor.primary,
              width: strokeWidth,
            ),
          ),
        ),
        Column(
          mainAxisSize: .min,
          children: [

            Text(
              title,
              style: interRegular.copyWith(
                fontSize: 12, color: AppColor.dukeBlue
              ),
            ),

            const SizedBox(height: Dimensions.paddingSizeExtraSmall),

            Text(
              powerText,
              style: interSemiBold.copyWith(
                fontSize: 16, color: AppColor.dukeBlue
              ),
            ),
          ],
        ),
      ],
    );
  }
}
