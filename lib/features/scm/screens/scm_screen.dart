import 'package:flutter/material.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/features/scm/widget/data_revenue_toggle.dart';
import 'package:scube_task_app/features/scm/widget/position_header_container.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';

class ScmScreen extends StatefulWidget {
  const ScmScreen({super.key});

  @override
  State<ScmScreen> createState() => _ScmScreenState();
}

class _ScmScreenState extends State<ScmScreen> {
  bool isDataSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "SCM"),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            margin: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(Dimensions.paddingSizeLarge),
              ),
              border: Border.all(color: AppColor.borderViolet),
              color: Colors.white,
            ),
          ),

          PositionedHeaderContainer(
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                ToggleItem(
                  title: "Data View",
                  isSelected: isDataSelected,
                  onTap: () {
                    setState(() {
                      isDataSelected = true;
                    });
                  },
                ),

                ToggleItem(
                  title: "Revenue View",
                  isSelected: !isDataSelected,
                  onTap: () {
                    setState(() {
                      isDataSelected = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
