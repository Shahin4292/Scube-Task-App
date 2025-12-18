import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class AnalyzeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  const AnalyzeCard({super.key, required this.imagePath, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 42,
        padding: const EdgeInsets.all(Dimensions.paddingSizeSimpleSmall),
        margin: const EdgeInsets.only(bottom: Dimensions.paddingSizeSimpleSmall),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.paddingSizeSimpleSmall),
          border: Border.all(color: AppColor.borderViolet),
        ),
        child: Row(
          spacing: Dimensions.paddingSizeSimpleSmall,
          children: [
            Image.asset(imagePath, height: 24, width: 24),
            Text(
              title,
              style: interSemiBold.copyWith(fontSize: 14),
            ),
          ],
        )
      ),
    );
  }
}
