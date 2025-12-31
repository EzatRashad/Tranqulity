import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/button_widget.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/core/widgets/custom_text_form_filed.dart';
import 'package:tranqulity/views/login/login.dart';
import 'package:tranqulity/views/otp/otp.dart';
import 'package:tranqulity/views/register/widgets/pick_image_widget.dart';
import 'package:image_picker/image_picker.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}
class _RegisterViewState extends State<RegisterView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final usernameController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  File? profileImage;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final XFile? image =
    await picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if (image != null) {
      setState(() {
        profileImage = File(image.path);
      });
    }
  }

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

              Center(
                child: PickImageWidget(
                  image: profileImage,
                  onTap: pickImage,
                ),
              ),

              41.ph,

              CustomTextFormFiled(
                hint: "Username",
                controller: usernameController,
              ),
              16.ph,

              CustomTextFormFiled(
                hint: "Email",
                controller: emailController,
              ),

              16.ph,
              CustomTextFormFiled(
                hint: "Age",
                controller: ageController,
              ),

              16.ph,
              CustomTextFormFiled(
                hint: "Gender",
                controller: genderController,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: AppImage(imageName: 'arrow_bottom.svg'),
                ),
              ),

              16.ph,
              CustomTextFormFiled(
                hint: "Password",
                controller: passwordController,
                obscureText: true,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: AppImage(imageName: 'visibility_off.svg'),
                ),
              ),

              16.ph,
              CustomTextFormFiled(
                hint: "Confirm password",
                controller: confirmPasswordController,
                obscureText: true,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: AppImage(imageName: 'visibility_off.svg'),
                ),
              ),

              45.ph,
              AppButton(
                height: 60.h,
                title: "Sign Up",
                onTap: () {
                  context.nextScreen(Otp());
                },
                radius: 8.r,
                borderColor: AppColors.primary,
              ),

              36.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account ?",
                    style: theme.titleSmall!.copyWith(
                      fontSize: 18.sp,
                      fontVariations: [FontVariation("wght", 500)],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.nextScreen(const LoginView());
                    },
                    child: Text(
                      " Login",
                      style: theme.titleSmall!.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.primary,
                        fontVariations: [FontVariation("wght", 500)],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
