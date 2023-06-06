import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import '../Profile/ProfileD.dart';
import 'Delivery.dart';
import 'HistD.dart';
import 'HomeD.dart';
import 'Main-Extra/NotifD.dart';
import 'MoreD.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int num = 0;
  var padding = EdgeInsets.symmetric(horizontal: 4.5.w, vertical: 0.57.w);
  double gap = 10;
  int _index = 0;
  final _pageData = [
    const HomeD(),
    const Delivery(),
    const HistD(),
    const MoreD()
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          toolbarHeight: 12.3.h,
          flexibleSpace: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _index = 0;
                  });
                  Get.to(const ProfileD());
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/person.png",
                  ),
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Container(
                width: 65.w,
                color: const Color.fromRGBO(250, 250, 250, 1),
                child: TextField(
                  readOnly: true,
                  onTap: () {
                    //  Get.to(const Search());
                  },
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: const Color.fromRGBO(197, 197, 197, 1),
                      hintText: "Search order number or date",
                      contentPadding: const EdgeInsets.symmetric(vertical: 10),
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(197, 197, 197, 1),
                          fontSize: 9.sp),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: const BorderSide(color: Colors.white))),
                ),
              ),
              SizedBox(
                width: 3.w,
              ),
              IconButton(
                icon: const Icon(Icons.notifications_none_outlined),
                onPressed: () {
                  Get.to(const NotifD());
                },
                color: Colors.black,
              ).marginOnly(top: 0.h),
            ],
          ).marginOnly(top: 4.5.h, left: 3.w),
        ),
        extendBody: true,
        body: PageView.builder(
            itemCount: 4,
            controller: controller,
            onPageChanged: (page) {
              setState(() {
                _index = page;
              });
            },
            itemBuilder: (context, positions) {
              return Container(
                child: _pageData[positions],
              );
            }),
        bottomNavigationBar: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                //  border: Border.all(color: Colors.black, width: 2),
                color: whiteColor,

                // borderRadius: const BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: -10,
                    blurRadius: 60,
                    color: Colors.black.withOpacity(0.4),
                    offset: const Offset(0, 25),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GNav(
                curve: Curves.fastOutSlowIn,
                duration: const Duration(milliseconds: 900),
                tabs: [
                  GButton(
                    gap: gap,
                    icon: LineIcons.home,
                    iconColor: buttonblue,
                    iconActiveColor: Colors.white,
                    text: 'HOME',
                    textSize: 12.sp,
                    textColor: Colors.white,
                    backgroundColor: buttoncream,
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: FontAwesomeIcons.motorcycle,
                    iconColor: buttonblue,
                    iconActiveColor: Colors.white,
                    text: 'DELIVERY',
                    textSize: 12.sp,
                    textColor: Colors.white,
                    backgroundColor: buttoncream,
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.history,
                    iconColor: buttonblue,
                    iconActiveColor: Colors.white,
                    text: 'HISTORY',
                    textSize: 12.sp,
                    textColor: Colors.white,
                    backgroundColor: buttoncream,
                    iconSize: 24,
                    padding: padding,
                  ),
                  GButton(
                    gap: gap,
                    icon: Icons.more_horiz,
                    iconColor: buttonblue,
                    iconActiveColor: Colors.white,
                    text: 'MORE',
                    textSize: 12.sp,
                    textColor: Colors.white,
                    backgroundColor: buttoncream,
                    iconSize: 24,
                    padding: padding,
                  ),
                ],
                selectedIndex: _index,
                onTabChange: (index) {
                  setState(() {
                    _index = index;
                  });
                  controller.jumpToPage(index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
