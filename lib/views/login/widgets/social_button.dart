import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.imageName,
    required this.title,
    required this.color,
  });
  final String imageName;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.r),
      height: 51.h,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 4.r, right: 4.r),
            height: double.infinity,
            width: 70.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.r),
                bottomLeft: Radius.circular(4.r),
              ),
            ),
            child: CustomImageWidget(imageName: imageName),
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
