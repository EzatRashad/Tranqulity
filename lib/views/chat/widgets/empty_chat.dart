import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

class EmptyChat extends StatelessWidget {
  const EmptyChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImage(imageName: "chat_body.png"),
          8.ph,
          Text(
            "You don’t have any Chats yet.",
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontSize: 20.sp),
          ),
        ],
      ),
    );
  }
}
