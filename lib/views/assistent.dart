import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/chat_screen/chat_screen.dart';
import 'package:tranqulity/core/utils/navigate.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_text_form_filed.dart';

import '../core/style/app_colors.dart';
import '../core/widgets/button_widget.dart';
import '../core/widgets/custom_image_widget.dart';

class AssistentChatView extends StatefulWidget {
  const AssistentChatView({super.key});

  @override
  State<AssistentChatView> createState() => _AssistentChatViewState();
}

class _AssistentChatViewState extends State<AssistentChatView> {
  final tittleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 399.h,
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: .15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                AppImage(imageName: 'assistent_chat.png'),
                Text(
                  'Hey!',
                  style: TextStyle(
                    fontSize: 50.sp,
                    fontVariations: [FontVariation("wght", 500)],
                    color: AppColors.primary,
                  ),
                ),
                Text(
                  'I’am your Personal Assistent',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontVariations: [FontVariation("wght", 500)],
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
          40.ph,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Make New Chat',
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                16.ph,
                CustomTextFormFiled(
                  hint: 'Enter The Title Of Chat',
                  controller: tittleController,
                ),
                24.ph,
                AppButton(
                  title: 'Start Chat',
                  onTap: () {
                    context.nextScreen(ChatScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
