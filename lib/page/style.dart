import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Style {
  double fs = 1.1.w;
  double logofs = 9.1.w;
  String fm = "Source Sans Pro";

  menutext() => TextStyle(fontSize: fs, fontWeight: FontWeight.w600);
  webmenu() => TextStyle(
      fontSize: 1.8.h, fontWeight: FontWeight.w400, letterSpacing: .5);
  headtitle(c) => TextStyle(
        fontSize: 3.4.h,
        fontWeight: FontWeight.w400,
        color: c,
        fontFamily: fm,
      );
  logoText(c) => TextStyle(
      fontSize: logofs, fontWeight: FontWeight.w600, fontFamily: fm, color: c);
  tabmenue(c) => TextStyle(
      fontSize: 2.1.w,
      fontWeight: FontWeight.w400,
      fontFamily: fm,
      color: c,
      letterSpacing: 1.0);
  webnormal(c) => TextStyle(
      fontSize: 1.9.h, fontWeight: FontWeight.w300, fontFamily: fm, color: c);
}
