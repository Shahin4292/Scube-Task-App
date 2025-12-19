import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task_app/features/dashboard/screens/dashboard_screen.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class DashboardFoundScreen extends StatelessWidget {
  const DashboardFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("SCM",
          style: interMedium.copyWith(fontSize: 16),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: (){Get.to(() => DashboardScreen());}
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Dimensions.paddingSizeLarge),
            child: Image.asset('assets/images/bell.png',
              height: Dimensions.paddingSizeLarge,
              width: Dimensions.paddingSizeLarge,
            ),
          ),
        ],
      ),
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
              Text("please wait.",style: interRegular.copyWith(fontSize: 14, color: AppColor.darkGrey)),
            ],
          ),
        ),
      ),
    );
  }
}
