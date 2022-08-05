import "package:flutter/material.dart";
import 'package:responsive_sizer/responsive_sizer.dart';

import '../main.dart';

class Tabmenue extends StatelessWidget {
  final icon;
  final text;
  const Tabmenue({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 4.0.w,
        ),
        SizedBox(
          width: 3.w,
        ),
        Text(
          text,
          style: sheet.tabmenue(Colors.white),
        )
      ],
    );
  }
}
