import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class CustomDataContainer extends StatelessWidget {
  final String dataA;
  final String data1;
  final String data2;
  final String value1;
  final String value2;
  final Color color;

  const CustomDataContainer({super.key,
    required this.dataA,
    required this.data1,
    required this.data2,
    required this.value1,
    required this.value2,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(left: Dimensions.paddingSizeSimpleSmall, right: Dimensions.paddingSizeSimpleSmall, bottom: 4),
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeExtraSmall),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
        border: Border.all(color: AppColor.borderViolet),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: Dimensions.paddingSizeSimpleSmall,
                width: Dimensions.paddingSizeSimpleSmall,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
              Text(dataA, style: interSemiBold.copyWith(fontSize: 12, color: AppColor.dukeBlue),)
            ],
          ),

          const SizedBox(width: 4),

          Container(
            height: 30,
            width: 1,
            color: AppColor.primary,
          ),

          const SizedBox(width: Dimensions.paddingSizeSimpleSmall),

          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Text(data1, style: interRegular.copyWith(fontSize: 12, color: AppColor.primary),),
              Text(data2, style: interRegular.copyWith(fontSize: 12, color: AppColor.primary),)
            ],
          ),
          const SizedBox(width: Dimensions.paddingSizeExtraLarge),

          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Text(": $value1", style: interSemiBold.copyWith(fontSize: 12, color: AppColor.dukeBlue),),
              Text(": $value2", style: interSemiBold.copyWith(fontSize: 12, color: AppColor.dukeBlue),)
            ],
          ),
        ],
      ),
    );
  }
}
