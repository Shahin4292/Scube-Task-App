import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task_app/features/dashboard/screens/dashborad_found_screen.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class AnalyzeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onTap;
  const AnalyzeCard({super.key, required this.imagePath, required this.title,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 42,
          padding: const EdgeInsets.only(left: Dimensions.paddingSizeSimpleSmall, top: Dimensions.paddingSizeSimpleSmall, bottom: Dimensions.paddingSizeSimpleSmall),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.paddingSizeSimpleSmall),
            border: Border.all(color: AppColor.borderViolet),
          ),
          child: Row(
            spacing: Dimensions.paddingSizeSimpleSmall,
            children: [
              Image.asset(imagePath, height: 24, width: 24),
              Expanded(
                child: Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  style: interSemiBold.copyWith(fontSize: 14, color: Color(0xFF646984)),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}

class AnalyzeCardGroup extends StatelessWidget {
  const AnalyzeCardGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: Dimensions.paddingSizeSimpleSmall,
      children: [
        Row(
          spacing: Dimensions.paddingSizeDefault,
          children: [
            AnalyzeCard(imagePath: ImagePath.chart, title: 'Analysis Pro', onTap: () { Get.to(() => DashboardFoundScreen()); },),
            AnalyzeCard(imagePath: ImagePath.generator, title: 'G. Generator', onTap: () { Get.to(() => DashboardFoundScreen()); },),
          ],
        ),

        Row(
          spacing: Dimensions.paddingSizeDefault,
          children: [
            AnalyzeCard(imagePath: ImagePath.charge, title: 'Plant Summery', onTap: () { Get.to(() => DashboardFoundScreen()); },),
            AnalyzeCard(imagePath: ImagePath.fire, title: 'Natural Gas', onTap: () { Get.to(() => DashboardFoundScreen()); },),
          ],
        ),

        Row(
          spacing: Dimensions.paddingSizeDefault,
          children: [
            AnalyzeCard(imagePath: ImagePath.generatorD, title: 'D. Generator', onTap: () { Get.to(() => DashboardFoundScreen()); },),
            AnalyzeCard(imagePath: ImagePath.faucet, title: 'Water Process', onTap: () { Get.to(() => DashboardFoundScreen()); },),
          ],
        ),
        SizedBox(height: 20)
      ],
    );
  }
}
