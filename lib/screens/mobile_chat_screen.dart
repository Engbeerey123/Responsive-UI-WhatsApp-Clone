import 'package:flutter/material.dart';
import 'package:responsive_ui_whatsapp_clone/colors.dart';
import 'package:responsive_ui_whatsapp_clone/info.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/Chat_Listd.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
          style: TextStyle(
            color: Color.fromARGB(255, 252, 248, 248),
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call,
              color: Color.fromARGB(255, 252, 248, 248),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Color.fromARGB(255, 252, 248, 248),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 252, 248, 248),
            ),
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        color: webAppBarColor,
        child: Column(
          children: [
            const Expanded(child: chatlist()),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: mobileChatBoxColor,
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Color.fromARGB(255, 252, 248, 248),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.camera_alt,
                        color: Color.fromARGB(255, 252, 248, 248),
                      ),
                      Icon(
                        Icons.attach_file,
                        color: Color.fromARGB(255, 252, 248, 248),
                      ),
                      Icon(
                        Icons.money,
                        color: Color.fromARGB(255, 252, 248, 248),
                      ),
                    ],
                  ),
                ),
                hintText: 'Type a message!',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.all(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
