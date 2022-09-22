import 'package:flutter/material.dart';
import 'package:natures/page/Homepage.dart';
import 'package:natures/page/SplashScreen.dart';
import 'package:natures/page/demodata.dart';
import 'package:natures/page/style.dart';
import 'package:natures/xtra/Color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Style sheet = new Style();
ColorData col = new ColorData();
Datas data = new Datas();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          "/Home": (context) => Homepage(),
        },
      );
    });
  }
}
