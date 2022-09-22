import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:natures/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WebHeader extends StatefulWidget {
  WebHeader({Key? key}) : super(key: key);

  @override
  State<WebHeader> createState() => _WebHeaderState();
}

class _WebHeaderState extends State<WebHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 18.w,
      color: col.themecolor,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 9.0.w,
                child: Image(
                  height: 7.0.w,
                  image: AssetImage('assets/product/logo.png'),
                  fit: BoxFit.contain,
                )),
            Container(
              width: 100.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Home",
                      style: sheet.webmenu(),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Category :",
                      style: sheet.webmenu(),
                    ),
                  ),
                  Container(
                    height: 20.h,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                            itemCount: data.catimg.length,
                            itemBuilder: (BuildContext context, int i) {
                              return HoverWidget(
                                onHover: (event) {},
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    data.list[i].toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                hoverChild: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    data.list[i].toString(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              );
                            })),
                  ),

                  // Text(
                  //   "Login",
                  //   style: sheet.webmenu(),
                  // ),
                  // Text(
                  //   "Wish",
                  //   style: sheet.webmenu(),
                  // ),
                  // Text(
                  //   "Home",
                  //   style: sheet.webmenu(),
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
