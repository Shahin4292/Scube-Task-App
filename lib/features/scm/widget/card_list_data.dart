import 'package:flutter/material.dart';
import 'package:scube_task_app/base/custom_data_container.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class CardListData extends StatelessWidget {
  final String title;
  const CardListData({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: EdgeInsets.only(left: 24, right: 24),
      padding: EdgeInsets.only(bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(Dimensions.paddingSizeSmall),
        ),
        border: Border.all(color: AppColor.borderViolet),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              spacing: 25,
              children: [
                Text("Energy Chart", style: interSemiBold.copyWith(fontSize: 14, color: AppColor.dukeBlue),),
                Text(title,overflow: TextOverflow.ellipsis, style: interSemiBold.copyWith(fontSize: 28, color: AppColor.dukeBlue),),
              ],
            ),
          ),

          CustomDataContainer(
            color: AppColor.primary,
            dataA: 'Data A',
            data1: 'Data',
            data2: 'Cost',
            value1: '2798.50 (29.53%)',
            value2: '35689 ৳',
          ),

          CustomDataContainer(
            color: AppColor.primary.withOpacity(0.4),
            dataA: 'Data B',
            data1: 'Data',
            data2: 'Cost',
            value1: '72598.50 (35.39%)',
            value2: '5259689 ৳',
          ),

          CustomDataContainer(
            color: AppColor.primary,
            dataA: 'Data C',
            data1: 'Data',
            data2: 'Cost',
            value1: '6598.36 (83.90%)',
            value2: '5698756 ৳',
          ),

          CustomDataContainer(
            color: AppColor.orange,
            dataA: 'Data D',
            data1: 'Data',
            data2: 'Cost',
            value1: '6598.26 (36.59%)',
            value2: '356987 ৳',
          )

        ],
      ),
    );
  }
}