import 'package:flutter/material.dart';
import 'package:responsive_ui_whatsapp_clone/colors.dart';

class senderMessage extends StatelessWidget {
  final String message;
  final String date;
  const senderMessage({super.key, required this.message, required this.date});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width - 45,
            ),
            child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: searchBarColor,
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 30,
                      top: 5,
                      bottom: 20,
                    ),
                    child: Text(
                      message,
                      style: const TextStyle(fontSize: 16, color: textColor),
                    ),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 10,
                    child: Row(children: [
                      Text(
                        date,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white60,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.done_all,
                        size: 20,
                        color: Colors.white60,
                      ),
                    ]),
                  ),
                ]))));
  }
}
