import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/utils/utils.dart';

import '../core/style/app_colors.dart';
import '../core/widgets/custom_image_widget.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        title: Text(
          "About Us",
          style: Theme.of(
            context,
          ).textTheme.titleLarge!.copyWith(fontSize: 24.sp),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        children: [
          10.ph,
          AppImage(height: 238.h, width: 238.w, imageName: 'tranquiliey.jpg'),
          24.ph,
          Text(
            textAlign: TextAlign.center,
            'Welcome to Tranquility\nwhere relaxation meets innovation.',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontSize: 20.sp,
              fontVariations: [FontVariation("wght", 500)],
            ),
          ),
          12.ph,
          Text(
            'Welcome to Tranquility – your personal assistant in\n'
            'the digital world. At Tranquility, we believe that\n'
            'everyone deserves a moment of peace and calm\n'
            'amidst the chaos of everyday life. Our mission is to\n'
            'provide a sanctuary where you can unwind\n,'
            'destress, and find solace through meaningful\n'
            'conversations with our AI chatbot.',
            style: Theme.of(context).textTheme.titleSmall
          ),
          16.ph,
          Text(
            'Welcome to Tranquility – your personal assistant in\n'
            'the digital world. At Tranquility, we believe that\n'
            'everyone deserves a moment of peace and calm\n'
            'amidst the chaos of everyday life. Our mission is to\n'
            'provide a sanctuary where you can unwind\n,'
            'destress, and find solace through meaningful\n'
            'conversations with our AI chatbot.',
              style: Theme.of(context).textTheme.titleSmall
          ),
          16.ph,
          Text(
            'Welcome to Tranquility – your personal assistant in\n'
            'the digital world. At Tranquility, we believe that\n'
            'everyone deserves a moment of peace and calm\n'
            'amidst the chaos of everyday life. Our mission is to\n'
            'provide a sanctuary where you can unwind\n,'
            'destress, and find solace through meaningful\n'
            'conversations with our AI chatbot.',
              style: Theme.of(context).textTheme.titleSmall
          ),
        ],
      ),
    );
  }
}
