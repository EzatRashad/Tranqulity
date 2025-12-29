import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/button_widget.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/core/widgets/custom_text_form_filed.dart';
import 'package:tranqulity/views/login/widgets/social_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();

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
              CustomImageWidget(imageName: "login.png"),
              24.ph,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome To",
                  style: theme.titleMedium!.copyWith(
                    fontSize: 20.sp,
                    fontVariations: [FontVariation("wght", 500)],
                  ),
                ),
              ),
              6.ph,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Tranquility",
                  style: theme.titleMedium!.copyWith(
                    fontSize: 48.sp,
                    fontFamily: "MysteryQuest",
                  ),
                ),
              ),
              10.ph,
              
              CustomTextFormFiled(
                hint: "Please enter your email",
                controller: email_controller,
              ),
              
              16.ph,
              CustomTextFormFiled(
                hint: "Please enter your password",
                controller: password_controller,
                obscureText: true,
                suffixIcon: CustomImageWidget(
                  imageName: "eye_off.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              24.ph,
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: theme.titleLarge!.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.primary,
                  ),
                ),
              ),
              56.ph,
              
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: AppColors.primary.withValues(alpha: .1),
                      ),
                      child: CustomImageWidget(imageName: 'finger.svg'),
                    ),
                  ),
                  10.pw,
                  Expanded(
                    flex: 4,
                    child: ButtonWidget(
                      height: 60.h,
                      title: "Log In",
                      onTap: () {},
                      radius: 8.r,
                      gradient: const LinearGradient(
                        begin: Alignment(0.00, 0.58),
                        end: Alignment(1.00, 0.57),
                        colors: [Color(0xFF5CC7A3), Color(0xFF265355)],
                      ),
                    ),
                  ),
                ],
              ),
              40.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account ?",
                    style: theme.titleSmall!.copyWith(
                      fontSize: 18.sp,
                      fontVariations: [FontVariation("wght", 500)],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      //    context.nextScreen(const Register());
                    },
                    child: Text(
                      " Sign up",
                      style: theme.titleSmall!.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.primary,
                        fontVariations: [FontVariation("wght", 500)],
                      ),
                    ),
                  ),
                ],
              ),
              24.ph,
              SocialButton(
                imageName: "google.png",
                title: "Login With Google",
                color: Color(0xff35B542).withValues(alpha: .5),
              ),
              16.ph,
              SocialButton(
                imageName: "facebook.png",
                title: "Login With Facebook",
                color: Color(0xff518EF8).withValues(alpha: .5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
