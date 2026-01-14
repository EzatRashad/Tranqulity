import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';

import '../core/style/app_colors.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageController = TextEditingController();

  // Avatar images
  final String myAvatar = "assets/images/me.jpg";
  final String otherAvatar = "assets/images/bot.jpg";

  final List<Map<String, dynamic>> messages = [
    {"text": "Hello How are you?", "isMe": true},
    {
      "text":
      "Hello! I'm just a computer program, so I don't have feelings like humans do, but I'm here to assist you. How can I help you today?",
      "isMe": false,
    },
    {"text": "I feel upset", "isMe": true},
    {
      "text":
      "I'm sorry to hear that you're feeling upset. If you'd like, you can share what's on your mind, and I'm here to listen and offer support.",
      "isMe": false
    },
  ];

  void sendMessage() {
    if (messageController.text.trim().isEmpty) return;

    setState(() {
      messages.add({"text": messageController.text.trim(), "isMe": true});
    });

    messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("About Work"),
        centerTitle: true,
        actions: [
          PopupMenuButton<String>(
            color: AppColors.white,
            onSelected: (value) {},
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'edit',
                child: Row(
                  children: [
                    AppImage(imageName: "edit_title.svg"),
                    8.pw,
                    Text(
                      'Edit Title',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontVariations: const [FontVariation("wght", 500)],
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Row(
                  children: [
                    AppImage(imageName: "delete.svg"),
                    8.pw,
                    Text(
                      'Delete Chat',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18.sp,
                        fontVariations: const [FontVariation("wght", 500)],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),

      body: Column(
        children: [
          /// Messages
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isMe = message["isMe"];

                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment:
                    isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: [

                      /// Avatar left (other)
                      if (!isMe)
                        Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: CircleAvatar(
                            radius: 18.r,
                            backgroundImage: AssetImage(otherAvatar),
                          ),
                        ),

                      /// Message bubble
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                          vertical: 10.h,
                        ),
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.65,
                        ),
                        decoration: BoxDecoration(
                          color: isMe
                              ? AppColors.primary
                              : Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: Text(
                          message["text"],
                          style: TextStyle(
                            color: isMe ? Colors.white : Colors.black,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),

                      /// Avatar right (me)
                      if (isMe)
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: CircleAvatar(
                            radius: 18.r,
                            backgroundImage: AssetImage(myAvatar),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),

          /// Input
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24.r),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                ),
                8.pw,
                GestureDetector(
                  onTap: sendMessage,
                  child: Container(
                    padding: EdgeInsets.all(12.r),
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.send, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
