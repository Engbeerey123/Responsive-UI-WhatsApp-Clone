import 'package:flutter/material.dart';
import 'package:responsive_ui_whatsapp_clone/colors.dart';
import 'package:responsive_ui_whatsapp_clone/info.dart';
import 'package:responsive_ui_whatsapp_clone/screens/mobile_chat_screen.dart';

class contact_list extends StatefulWidget {
  const contact_list({super.key});

  @override
  State<contact_list> createState() => _contact_listState();
}

class _contact_listState extends State<contact_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MobileChatScreen(),
                ),
              );
            },
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(info[index]["profilePic"].toString()),
                radius: 30,
              ),
              title: Text(
                info[index]["name"].toString(),
                style: TextStyle(
                  color: textColor,
                ),
              ),
              subtitle: Text(info[index]["message"].toString(),
                  style: TextStyle(
                    color: textColor,
                  )),
              trailing: Text(info[index]["time"].toString(),
                  style: TextStyle(
                    color: textColor,
                  )),
            ),
          );
        },
      ),
    );
  }
}
