import 'package:flutter/material.dart';
import 'package:responsive_ui_whatsapp_clone/info.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/my_message.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/sender_message.dart';

class chatlist extends StatelessWidget {
  const chatlist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          return MyMessage(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return senderMessage(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
