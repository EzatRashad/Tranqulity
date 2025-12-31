import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({
    super.key,
    required this.image,
    required this.onTap,
  });

  final File? image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final bool picked = image != null;

    return Stack(
      children: [
        CircleAvatar(
          radius: 75.r,
          backgroundColor: const Color(0xff000000).withValues(alpha: .1),
          backgroundImage: picked ? FileImage(image!) : null,
          child: !picked
              ? AppImage(
            imageName: 'Image_broken.svg',
            color: Colors.white,
          )
              : null,
        ),

        Positioned(
          bottom: 1,
          right: 1,
          child: CircleAvatar(
            backgroundColor: const Color(0xff284243),
            child: IconButton(
              onPressed: onTap,
              icon: AppImage(
                imageName:
                picked ? 'edit_profile.svg' : 'add_icon.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
