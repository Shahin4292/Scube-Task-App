import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isBackButtonExist;
  final VoidCallback? onBackPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.isBackButtonExist = true,
    this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: interMedium.copyWith(fontSize: 16),
      ),

      centerTitle: true,
      leading: isBackButtonExist ? IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: onBackPressed ?? () => Get.back(),
      ) : const SizedBox(),
      actions: [
        Padding(padding: EdgeInsets.only(right: Dimensions.paddingSizeLarge),
            child: Image.asset('assets/images/bell.png',
              height: Dimensions.paddingSizeLarge,
              width: Dimensions.paddingSizeLarge,
            )),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GetPlatform.isDesktop ? 70 : 50);
}
