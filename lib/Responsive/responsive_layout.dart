import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final mobile_screen_layout;
  final web_screen_layout;
  const ResponsiveLayout(
      {super.key,
      required this.mobile_screen_layout,
      required this.web_screen_layout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 900) {
        return web_screen_layout;
      }
      return mobile_screen_layout;
    });
  }
}
