import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scube_task_app/features/dashboard/screens/dashboard_screen.dart';
import 'package:scube_task_app/features/login/widget/custom_text_field.dart';
import 'package:scube_task_app/utils/app_color.dart';
import 'package:scube_task_app/utils/dimensions.dart';
import 'package:scube_task_app/utils/image_path.dart';
import 'package:scube_task_app/utils/styles.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColor.primary,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Spacer(),

              Column(
                children: [
                  Image.asset(ImagePath.appLogo, width: 100, height: 100),

                  SizedBox(height: Dimensions.paddingSizeLarge),

                  Text(
                    'SCUBE',
                    style: interSemiBold.copyWith(color: Colors.white, fontSize: 24)
                  ),

                  Text(
                    'Control & Monitoring System',
                    style: interSemiBold.copyWith(color: Colors.white,fontSize: 20)
                  ),
                ],
              ),

              Spacer(),

              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.58,
                padding: const EdgeInsets.all(Dimensions.paddingSizeExtraLarge),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimensions.radiusExtraLarge),
                  ),
                ),

                child: Column(
                  crossAxisAlignment: .start,
                  children: [

                    Center(
                      child: Text(
                        'Login',
                        style: interBold.copyWith(fontSize: 24)
                      ),
                    ),

                    SizedBox(height: Dimensions.paddingSizeExtraLarge),

                    AppInputField(
                      hintText: 'Username',
                      controller: usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username is required';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: Dimensions.paddingSizeMedium),

                    AppInputField(
                      hintText: 'Password',
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 6) {
                          return 'Password must be at least 6 characters';
                        }
                        return null;
                      }, controller: passwordController,
                    ),

                    const SizedBox(height: Dimensions.paddingSizeSimpleSmall),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forget password?',
                        style: interMedium.copyWith(fontSize: 12, color: AppColor.darkGrey)
                      ),
                    ),

                    const SizedBox(height: Dimensions.paddingSizeLarge),

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(MediaQuery.sizeOf(context).width, 60),
                        backgroundColor: AppColor.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Dimensions.paddingSizeSmall),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Get.to(() => ElectricitySummaryScreen());
                        }
                      },
                      child: Text(
                        'Login',
                        style: interSemiBold.copyWith(fontSize: 18, color: Colors.white)
                      ),
                    ),

                    const SizedBox(height: Dimensions.paddingSizeSimpleSmall),

                    Row(
                      mainAxisAlignment: .center,
                      children: [
                        Text("Don’t have any account? ",
                          style: interMedium.copyWith(
                            fontSize: 12,
                            color: AppColor.darkGrey,
                          ),
                        ),
                        Text(
                          'Register Now',
                          style: interMedium.copyWith(
                            fontSize: 14,
                            color: AppColor.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
