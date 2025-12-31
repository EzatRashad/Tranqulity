import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

import '../core/widgets/button_widget.dart';
import '../core/widgets/custom_text_form_filed.dart';

class Suggestions extends StatefulWidget {
  const Suggestions({super.key});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  final subjectController = TextEditingController();

  final bodyController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        title: Text(
          "Suggestions",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(fontSize: 24.sp),
        ),
      ),
      body: Form(
        child: ListView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 24.w),
          children: [
            50.ph,
            AppImage(imageName: "suggest.png", width: 170.w, height: 170.h),
            16.ph,
            CustomTextFormFiled(
              hint: "Subject",
              controller: subjectController,
            ),
            15.ph,
            CustomTextFormFiled(
              hint: "Body",
              controller: bodyController,
              maxLines: 5,
            ),
            24.ph,
            AppButton(
              height: 60.h,
              title: "Send Message",
              onTap: () {},
              radius: 8.r,
              buttonColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}
