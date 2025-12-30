import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      itemCount: 5,
      itemBuilder: (context, index) => Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: .10),
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(
                  color: AppColors.black
                )
              ),
              child: Row(
                children: [
                  Text(
                    "About Work",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontVariations: [FontVariation("wght", 500)],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "10/12/2021",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 10.sp,
                      fontVariations: [FontVariation("wght", 500)],
                    ),
                  ),
                ],
              ),
            ),
          ),
          AppImage(imageName: "delete.svg"),
        ],
      ),
      separatorBuilder: (context, index) => 16.ph,
    );
  }
}
