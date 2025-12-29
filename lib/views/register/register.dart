import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/button_widget.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/core/widgets/custom_text_form_filed.dart';
import 'package:tranqulity/views/register/widgets/pick_image_widget.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final email_controller = TextEditingController();

  final password_controller = TextEditingController();
  final confirm_password_controller = TextEditingController();
  final username_controller = TextEditingController();

  final age_controller = TextEditingController();
  final gender_controller = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool picked = false;

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
              20.ph,
              Center(child: PickImageWidget(picked: picked)),
              41.ph,

              16.ph,
              CustomTextFormFiled(
                hint: "Username",
                controller: username_controller,
              ),
              16.ph,
              CustomTextFormFiled(hint: "Email", controller: email_controller),

              16.ph,
              CustomTextFormFiled(hint: "Age", controller: age_controller),
              16.ph,
              CustomTextFormFiled(
                hint: "Gender",
                controller: gender_controller,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: CustomImageWidget(imageName: 'arrow_bottom.svg'),
                ),
              ),

              16.ph,
              CustomTextFormFiled(
                hint: "Password",
                controller: password_controller,
                obscureText: true,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: CustomImageWidget(imageName: 'visibility_off.svg'),
                ),
              ),
              16.ph,
              CustomTextFormFiled(
                hint: "Confirm password",
                controller: confirm_password_controller,
                obscureText: true,
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: CustomImageWidget(imageName: 'visibility_off.svg'),
                ),
              ),
              45.ph,
              ButtonWidget(
                height: 60.h,
                title: "Sign Up",
                onTap: () {},
                radius: 8.r,
                gradient: const LinearGradient(
                  begin: Alignment(0.00, 0.58),
                  end: Alignment(1.00, 0.57),
                  colors: [Color(0xFF5CC7A3), Color(0xFF265355)],
                ),
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
                      //    context.nextScreen(const Register());
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
