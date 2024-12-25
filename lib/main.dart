import 'package:flutter/material.dart';
import 'package:responsive_ui_whatsapp_clone/Responsive/responsive_layout.dart';

import 'package:responsive_ui_whatsapp_clone/screens/mobile_screen.dart';
import 'package:responsive_ui_whatsapp_clone/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "whats app",
      home: const ResponsiveLayout(
          mobile_screen_layout: MobileScreen(),
          web_screen_layout: web_screen()),
    );
  }
}
