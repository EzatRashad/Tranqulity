import 'package:flutter/material.dart';
import 'package:tranqulity/views/chat/widgets/chats_list.dart';
import 'package:tranqulity/views/chat/widgets/empty_chat.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final List<ChatModel> chats = [
    ChatModel(title: "About Work", date: "10/12/2021"),
    ChatModel(title: "Daily Thoughts", date: "11/12/2021"),
    ChatModel(title: "Personal Growth", date: "12/12/2021"),
  ];

  void deleteChat(int index) {
    setState(() {
      chats.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chats.isEmpty
          ? const EmptyChat()
          : ChatsList(
        chats: chats,
        onDelete: deleteChat,
      ),
    );
  }
}
