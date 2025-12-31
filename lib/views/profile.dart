import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/button_widget.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/core/widgets/custom_text_form_filed.dart';
import 'package:tranqulity/views/change_passoerd.dart';
import 'package:tranqulity/views/register/widgets/pick_image_widget.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final usernameController = TextEditingController();
  final phoneController = TextEditingController();
  final genderController = TextEditingController();
  final ageController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  File? profileImage;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

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
                child: PickImageWidget(image: profileImage, onTap: pickImage),
              ),

              41.ph,

              CustomTextFormFiled(
                hint: "Username",
                controller: usernameController,
              ),
              16.ph,

              CustomTextFormFiled(hint: "Phone", controller: phoneController),

              16.ph,
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormFiled(
                      hint: "Age",
                      controller: ageController,
                    ),
                  ),
                  12.pw,
                  Expanded(
                    child: CustomTextFormFiled(
                      hint: "Gender",
                      controller: genderController,
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(10.0.r),
                        child: AppImage(imageName: 'arrow_bottom.svg'),
                      ),
                    ),
                  ),
                ],
              ),

              33.ph,
              AppButton(
                height: 60.h,
                title: "Save",
                onTap: () {},
                radius: 8.r,
                borderColor: AppColors.primary,
              ),

              21.ph,
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.nextScreen(ChangePasswordView());
                    },
                    child: Text("Change Password", style: theme.titleSmall),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset("assets/icons/edit.svg"),
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
