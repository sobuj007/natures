import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:natures/main.dart';
import 'package:natures/page/Homepage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  starttime() {
    Future.delayed(Duration(seconds: 3)).then((value) => {
          Navigator.pushAndRemoveUntil(context,
              CupertinoPageRoute(builder: (_) => Homepage()), (route) => false)
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starttime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
              width: 60.w,
              height: 20.h,
              child: Image(image: AssetImage("assets/logo.png"))),
        ),
      ),
    );
  }
}
