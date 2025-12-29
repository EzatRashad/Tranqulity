import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/button_widget.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/views/change_password.dart';
import 'package:tranqulity/views/otp/widgets/verify_code_fields.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpViewState();
}

class _OtpViewState extends State<Otp> {
  final phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (final c in controllers) {
      c.dispose();
    }
    for (final f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void onCodeChanged(String value, int index) {
    setState(() {});

    // write
    if (value.length == 1) {
      if (index < 3) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      }
    }

    // remove
    if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
    }
  }

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
              CustomImageWidget(imageName: "otp.png"),
              24.ph,
              Text(
                "Verification",
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(fontSize: 24.sp),
              ),
              8.ph,
              Text(
                "Please enter the code sent on your phone.",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 18.sp,
                  fontVariations: [FontVariation("wght", 500)],
                  color: AppColors.primary.withValues(alpha: .67),
                ),
              ),
              36.ph,

              VerifyCodeFields(
                controllers: controllers,
                focusNodes: focusNodes,
                onCodeChanged: onCodeChanged,
              ),

              60.ph,
              ButtonWidget(
                height: 60.h,
                title: "Verify",
                onTap: () {
                  context.nextScreen(ChangePassword());
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
