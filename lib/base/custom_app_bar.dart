import 'package:flutter/material.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:scube_task_app/utils/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isBackButtonExist;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.isBackButtonExist = true,
    this.onBackPressed,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: interMedium.copyWith(fontSize: 16),
      ),

      centerTitle: true,
      // leading: isBackButtonExist ? IconButton(
      //   icon: const Icon(Icons.arrow_back_ios),
      //   onPressed: onBackPressed ?? () => Navigator.pop(context),
      // ) : const SizedBox(),

      actions: actions,
      backgroundColor: Theme.of(context).cardColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GetPlatform.isDesktop ? 70 : 50);
}
