import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/button_widget.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/core/widgets/custom_text_form_filed.dart';
import 'package:tranqulity/views/otp/otp.dart';

class ForgetPassowrdView extends StatefulWidget {
  const ForgetPassowrdView({super.key});

  @override
  State<ForgetPassowrdView> createState() => _ForgetPassowrdViewState();
}

class _ForgetPassowrdViewState extends State<ForgetPassowrdView> {
  final phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            children: [
              24.ph,

              AppImage(imageName: "forget_password.png"),
              24.ph,
              Text(
                "Forget Your Password",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(fontSize: 24.sp),
              ),
              33.ph,
              CustomTextFormFiled(
                hint: "Please enter your email",
                controller: phoneController,
              ),
              33.ph,
              AppButton(
                height: 60.h,
                title: "Forget Password",
                onTap: () {
                  context.nextScreen(Otp());
                },
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
