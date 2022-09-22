import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
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
        height: 2.5 * 100.h,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.h,
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Text(
                        "Catergory :",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade400,
                            letterSpacing: 1),
                      ),
                    ),

                    Container(
                      height: 20.h,
                      child: gridview(),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.h),
                      child: Text(
                        "Tranding :",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade400,
                            letterSpacing: 1),
                      ),
                    ), //List flash data
                    Container(width: 100.w, height: 120.h, child: allproduct())
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

  gridview() {
    return Expanded(
        // height: 70.h,
        child: ListView.builder(
            itemCount: data.list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return HoverContainer(
                height: 3.0.w,
                hoverColor: Color.fromARGB(14, 51, 51, 51),
                //  hoverTextColor: Colors.white,
                width: data.list.length * 5.w,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 60,
                              backgroundImage: AssetImage(
                                'assets/${data.catimg[index]}',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 1.w,
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                data.list[index],
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.green.shade400,
                                    fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }

  allproduct() {
    return Container(
      height: 120.h,
      child: AnimationLimiter(
        child: GridView.count(
          crossAxisCount: 4,
          physics: NeverScrollableScrollPhysics(),
          children: List.generate(
            data.productimg.length,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 375),
                columnCount: 2,
                child: ScaleAnimation(
                  child: FadeInAnimation(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: HoverContainer(
                        //onpressed: () {},
                        //  focusColor: col.themecolor,
                        hoverColor: Color.fromARGB(14, 51, 51, 51),
                        //  hoverTextColor: Colors.white,
                        child: Card(
                          elevation: 2,
                          child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 18.h,
                                    width: 100.w,
                                    child: Image(
                                      image: AssetImage(
                                          'assets/product/${data.productimg[index].toString()}'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 1.0.h),
                                      child: Text(
                                        data.productname[index].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1.0.h),
                                          child: Text(
                                            "Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content ",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.justify,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Card(
                                        child: Container(
                                          width: 8.h,
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 1.0.h),
                                            child: Column(
                                              children: [
                                                Text(
                                                  data.productprice[index]
                                                      .toString(),
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    'Tk/kg',
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
