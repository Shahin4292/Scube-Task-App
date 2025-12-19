import 'package:flutter/material.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class DashboardFoundScreen extends StatelessWidget {
  const DashboardFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'SCM'),
      body: Padding(
        padding: EdgeInsets.only(top: Dimensions.paddingSizeMedium, left: Dimensions.paddingSizeExtraLarge, right: Dimensions.paddingSizeExtraLarge, bottom: Dimensions.paddingSizeExtraLarge),
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.only(right: 26, left: 26, bottom: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(Dimensions.paddingSizeMedium)),
            border: Border.all(color: AppColor.borderViolet),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Image.asset(ImagePath.dataFound, height: 193, width: 259,),
              SizedBox(height: 8),
              Text("No data is here",style: interRegular.copyWith(fontSize: 14, color: AppColor.darkGrey)),
              Text("please wait",style: interRegular.copyWith(fontSize: 14, color: AppColor.darkGrey)),
            ],
          ),
        ),
      ),
    );
  }
}
