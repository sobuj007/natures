import 'package:flutter/material.dart';
import 'package:natures/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MobileHedaer extends StatefulWidget {
  MobileHedaer({Key? key}) : super(key: key);

  @override
  State<MobileHedaer> createState() => _MobileHedaerState();
}

class _MobileHedaerState extends State<MobileHedaer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.h,
      width: 100.w,
      color: Colors.teal,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(Icons.menu, color: col.text),
          Text(
            "Natures",
            style: sheet.headtitle(Colors.white),
          )
        ]),
      ),
    );
  }
}
