import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tranqulity/core/style/app_colors.dart';
import 'package:tranqulity/core/utils/utils.dart';
import 'package:tranqulity/core/widgets/custom_image_widget.dart';
import 'package:tranqulity/views/chat/widgets/chats_list.dart';
import 'package:tranqulity/views/chat/widgets/empty_chat.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  bool emptyChat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: emptyChat
          ? EmptyChat()
          : ChatsList(),
    );
  }
}
