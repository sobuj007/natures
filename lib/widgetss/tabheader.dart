import 'package:flutter/material.dart';
import 'package:natures/xtra/tabmenu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../main.dart';

class Tabheader extends StatefulWidget {
  Tabheader({Key? key}) : super(key: key);

  @override
  State<Tabheader> createState() => _TabheaderState();
}

class _TabheaderState extends State<Tabheader> {
  bool isexpand = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isexpand ? 25.w : 8.w,
      height: 100.h,
      color: Colors.grey,
      child: Stack(
        children: [
          Positioned(
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.topRight,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white70,
                      child: isexpand
                          ? Icon(
                              Icons.arrow_back_ios,
                              size: 1.6.w,
                            )
                          : Icon(
                              Icons.arrow_forward_ios,
                              size: 1.6.w,
                            ),
                    )),
              ),
              onTap: () {
                if (isexpand == true) {
                  isexpand = false;
                } else {
                  isexpand = true;
                }
                setState(() {});
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 4.h),
                  isexpand
                      ? Tabmenue(
                          icon: Icons.home,
                          text: "Home",
                        )
                      : Icon(
                          Icons.home,
                          size: 4.0.w,
                        ),
                  SizedBox(
                    height: 1.5.w,
                  ),
                  isexpand
                      ? Tabmenue(icon: Icons.person, text: "Profile")
                      : Icon(
                          Icons.person,
                          size: 4.0.w,
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
