import 'package:flutter/material.dart';
import 'package:scube_task_app/base/custom_app_bar.dart';
import 'package:scube_task_app/features/login/widget/custom_text_field.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/styles.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.primary,

      body: SafeArea(
        child: Column(
          children: [
        
            const Spacer(),
        
            Column(
              children: [
                Image.asset('assets/images/app_logo.png',
                  width: 100,
                  height: 100,
                ),

                SizedBox(height: 20),

                Text(
                  'SCUBE',
                  style: interSemiBold.copyWith(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),

                Text(
                  'Control & Monitoring System',
                  style: interSemiBold.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
