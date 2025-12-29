import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

class PickImageWidget extends StatelessWidget {
  const PickImageWidget({super.key, required this.picked});
  final bool picked;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xff000000).withValues(alpha: .1),
          radius: 75.r,
          child: AppImage(
            imageName: picked ? 'drawer_profile.jpg' : 'Image_broken.svg',

            color: !picked ? Colors.white : null,
          ),
        ),
        Positioned(
          bottom: 1,
          right: 1,
          child: CircleAvatar(
            backgroundColor: Color(0xff284243),
            child: IconButton(
              onPressed: () {},
              icon: AppImage(
                imageName: picked ? 'edit_profile.svg' : 'add_icon.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
