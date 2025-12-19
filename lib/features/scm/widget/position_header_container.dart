import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';

class PositionedHeaderContainer extends StatelessWidget {
  final Widget child;

  const PositionedHeaderContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Dimensions.paddingSizeLarge,
      left: Dimensions.paddingSizeExtraLarge,
      right: Dimensions.paddingSizeExtraLarge,
      child: Container(
        height: 48,
        padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.paddingSizeDefault,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Dimensions.paddingSizeMedium),
          border: Border.all(color: AppColor.borderViolet),
        ),
        child: child,
      ),
    );
  }
}
