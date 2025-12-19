import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class DataCostInfoCard extends StatefulWidget {
  const DataCostInfoCard({super.key});

  @override
  State<DataCostInfoCard> createState() => _DataCostInfoCardState();
}

class _DataCostInfoCardState extends State<DataCostInfoCard> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingSizeExtraLarge,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColor.borderViolet),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimensions.paddingSizeSimpleSmall),
        child: Column(
          children: [
            InkWell(
              onTap: () => setState(() => isExpanded = !isExpanded),
              child: Container(
                height: 42,
                padding: const EdgeInsets.all(Dimensions.paddingSizeMedium),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.paddingSizeSimpleSmall),
                ),

                child: Row(
                  children: [
                    Image.asset(ImagePath.netWorth, width: 18, height: 18),
                    const SizedBox(width: Dimensions.paddingSizeSimpleSmall),
                     Text(
                      "Data & Cost Info",
                      style: interSemiBold.copyWith(fontSize: 12, color: AppColor.dukeBlue),
                    ),
                    const Spacer(),
                    Image.asset(
                      isExpanded ? ImagePath.upArrow : ImagePath.downArrow,
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),

            const Divider(height: 1),

            AnimatedCrossFade(
              firstChild: _dataList(),
              secondChild: const SizedBox(),
              crossFadeState: isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 250),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dataList() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: List.generate(4, (index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: interSemiBold.copyWith(
                    fontSize: 12,
                    color: AppColor.dukeBlue
                  ),
                  children: [
                    TextSpan(text: "Data ${index + 1} : ",style: interRegular.copyWith(fontSize: 12, color: AppColor.primary)),
                    const TextSpan(text: "2798.50 (29.53%)"),
                  ],
                ),
              ),

              const SizedBox(height: 4),

              RichText(
                text: TextSpan(
                  style: interSemiBold.copyWith(
                      fontSize: 12,
                      color: AppColor.dukeBlue
                  ),
                  children: [
                    TextSpan(text: "Cost ${index + 1} : ",style: interRegular.copyWith(fontSize: 12, color: AppColor.primary)),
                    const TextSpan(text: "35689 ৳"),
                  ],
                ),
              ),

              if (index != 3)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
            ],
          );
        }),
      ),
    );
  }
}
