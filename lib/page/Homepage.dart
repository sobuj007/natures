import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:natures/main.dart';
import 'package:natures/widgetss/WebHeader.dart';
import 'package:natures/widgetss/mobileheader.dart';
import 'package:natures/widgetss/tabheader.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:hovering/hovering.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          child: Container(
        child: MediaQuery.of(context).size.width < 480
            ? mobile()
            : MediaQuery.of(context).size.width < 787
                ? tab()
                : Column(
                    children: [web()],
                  ),
      )),
    ));
  }

  Widget mobile() {
    return Column(
      children: [MobileHedaer()],
    );
  }

  Widget tab() {
    return Row(
      children: [Tabheader()],
    );
  }

  Widget web() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WebHeader(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 40.w,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Search Product",
                                      hintStyle: sheet.webmenu(),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 0.0, horizontal: 2.w),
                                      suffixIcon: Container(
                                          child: Icon(
                                        Icons.search,
                                        color: Colors.green,
                                      )),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 1, color: col.themecolor)),
                                      disabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 240,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              HoverButton(
                                // animationDuration: Duration(seconds: 5),
                                onpressed: () {},
                                focusColor: col.themecolor,
                                hoverColor: Color.fromARGB(14, 51, 51, 51),
                                hoverTextColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: col.themecolor,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Text("Login / Signup"),
                                    ),
                                  ),
                                ),
                              ),
                              HoverButton(
                                onpressed: () {},
                                focusColor: col.themecolor,
                                hoverColor: Color.fromARGB(14, 51, 51, 51),
                                hoverTextColor: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: col.themecolor,
                                        borderRadius:
                                            BorderRadius.circular(40)),
                                    child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Icon(Icons.shopping_cart)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    // web adds
                    Container(
                      width: 100.w,
                      height: 22.w,
                      child: Image.asset(
                        "assets/s.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    //List flash data
                    Container(
                      width: 100.w,
                      height: 22.w,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              child: Card(
                                  child: Column(
                                children: [
                                  Image(image: AssetImage("assets/f.jpg"))
                                ],
                              )),
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  headerlist() {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text("Home"),
          );
        });
  }
}
