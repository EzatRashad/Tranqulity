import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

import '../core/style/app_colors.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/q.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xffD9D9D9).withValues(alpha: .45),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 36.h,
                  ),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: .81),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppImage(imageName: "quote2.svg"),
                      16.ph,
                      Text(
                        "“ The only way to do great work is to love what you do “",
                        style: TextStyle(
                          fontSize: 34.sp,
                          color: AppColors.primary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Steve Jobs",
                          style: TextStyle(
                            fontSize: 34.sp,
                          ),
                        ),
                      ),
                      16.ph,
                      AppImage(imageName: "quote2.svg"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
