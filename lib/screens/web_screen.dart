import 'package:flutter/material.dart';
import 'package:responsive_ui_whatsapp_clone/colors.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/Chat_Listd.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/contact_list.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/web_chatappbar.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/web_profile.dart';
import 'package:responsive_ui_whatsapp_clone/widgets/web_search_bar.dart';

class web_screen extends StatelessWidget {
  const web_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      const Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              web_profile(),
              WebSearchBar(),
              // Expanded(child: chatlist()),
              contact_list(),
            ],
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background_chat.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            ChatAppBar(),
            Expanded(child: chatlist()),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: dividerColor),
                ),
                color: chatBarMessage,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 15,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: searchBarColor,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(left: 20),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ]));
  }
}
