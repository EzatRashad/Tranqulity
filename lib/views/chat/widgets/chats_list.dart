import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

class ChatsList extends StatelessWidget {
  final List<ChatModel> chats;
  final void Function(int index) onDelete;

  const ChatsList({
    super.key,
    required this.chats,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      itemCount: chats.length,
      separatorBuilder: (_, __) => 16.ph,
      itemBuilder: (context, index) {
        final chat = chats[index];

        return Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: .08),
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: .3),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      chat.title,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                        fontVariations: [FontVariation("wght", 500)],
                      ),
                    ),
                    const Spacer(),
                    Text(
                      chat.date,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(
                        fontSize: 10.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            12.pw,
            GestureDetector(
              onTap: () => onDelete(index),
              child: AppImage(imageName: "delete.svg"),
            ),
          ],
        );
      },
    );
  }
}
class ChatModel {
  final String title;
  final String date;

  ChatModel({required this.title, required this.date});
}
