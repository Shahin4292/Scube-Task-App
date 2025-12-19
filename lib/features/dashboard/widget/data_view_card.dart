import 'package:flutter/material.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class DataViewCard extends StatelessWidget {
  final String title;
  final String status;
  final String data1;
  final String data2;
  final VoidCallback? onTap;
  final String imagePath;
  final Color color;
  final Color? statusColor;


  const DataViewCard({
    super.key,
    required this.title,
    required this.status,
    required this.data1,
    required this.data2,
    this.onTap,
    required this.imagePath,
    required this.color,
    this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimensions.paddingSizeSimpleSmall),
        decoration: BoxDecoration(
          color: AppColor.borderViolet.withOpacity(0.3),
          borderRadius: BorderRadius.circular(Dimensions.paddingSizeExtraSmall),
          border: Border.all(color: AppColor.borderViolet),
        ),
        child: Row(
          spacing: Dimensions.paddingSizeMedium,
          children: [

            Image.asset(imagePath, height: Dimensions.paddingSizeExtraLarge, width: Dimensions.paddingSizeExtraLarge),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: Dimensions.paddingSizeMedium,
                        width: Dimensions.paddingSizeMedium,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),

                      const SizedBox(width: Dimensions.paddingSizeSimpleSmall),

                      Text(
                        title,
                        style: interMedium.copyWith(
                        fontSize: 14),
                      ),

                      const SizedBox(width: Dimensions.paddingSizeDefault),

                      Text(
                        status,
                        style: interMedium.copyWith(
                          color: statusColor,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Row(
                        children: [
                          Text('Data 1     : ',style: interRegular.copyWith(
                            fontSize: 12,
                            color: AppColor.primary
                          ),),

                          Text(data1,style: interRegular.copyWith(
                              fontSize: 12,
                          ),),
                        ],
                      ),

                      Row(
                        children: [
                          Text('Data 2     : ',style: interRegular.copyWith(
                              fontSize: 12,
                              color: AppColor.primary
                          ),),

                          Text(data2,style: interRegular.copyWith(
                            fontSize: 12,
                          ),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
