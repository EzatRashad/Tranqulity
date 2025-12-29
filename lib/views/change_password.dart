import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/button_widget.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/core/widgets/custom_text_form_filed.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),

            children: [
              24.ph,
              AppImage(imageName: "forget_password.png"),
              24.ph,
              Text(
                "Create New Password",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(fontSize: 24.sp),
              ),
              16.ph,
              Text(
                "create your new password to log in !",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 16.sp,
                  fontVariations: [FontVariation("wght", 500)],
                ),
              ),

              28.ph,

              CustomTextFormFiled(
                hint: "Password",
                controller: passwordController,
                suffixIcon: AppImage(
                  imageName: "eye_off.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),

              16.ph,
              CustomTextFormFiled(
                hint: "Confirm Password",
                controller: passwordController,
                obscureText: true,
                suffixIcon: AppImage(
                  imageName: "eye_off.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              40.ph,
              AppButton(
                height: 60.h,
                title: "Confirm",
                onTap: () {},
                radius: 8.r,
                buttonColor: AppColors.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
