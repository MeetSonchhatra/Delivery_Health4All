import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import '../../Profile/ProfileD.dart';
import 'NotifD.dart';

class Payout extends StatefulWidget {
  const Payout({super.key});

  @override
  State<Payout> createState() => _PayoutState();
}

class _PayoutState extends State<Payout> {
  int num = 0;
  var padding = EdgeInsets.symmetric(horizontal: 4.5.w, vertical: 0.57.w);
  double gap = 10;
  int _index = 3;
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
        body: SingleChildScrollView(
          child: Container(
            color: whiteColor,
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                SizedBox(
                  height: 8.4.h,
                  width: 86.w,
                  child: Image.asset("assets/Calender2.png"),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Earnings',
                      style: TextStyle(
                          color: Color.fromRGBO(14, 13, 18, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 6.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 211, 215, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Color.fromRGBO(210, 22, 41, 1),
                      ),
                    ),
                  ],
                ).paddingOnly(left: 10.w, right: 10.w),
                SizedBox(
                  height: 2.h,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 13.84.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Container(
                          width: 40.w,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'Current Earnings',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                'Rs: 2,989',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color.fromRGBO(16, 122, 21, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Card(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  width: 35.w,
                                  height: 4.h,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    child: Text(
                                      'Earnings for 35 orders',
                                      style: TextStyle(
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(21, 30, 42, 1)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Dash(
                              direction: Axis.vertical,
                              length: 90,
                              dashLength: 10,
                              dashThickness: 2,
                              dashColor: Color.fromRGBO(219, 218, 219, 1)),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Weekly: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('1st Jun to 15th Jun',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Release date: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('Thu, 15th June',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 13.84.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Container(
                          width: 40.w,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'Pending Payout',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                'Rs: 580',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color.fromRGBO(255, 194, 44, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Card(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  width: 35.w,
                                  height: 4.h,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    child: Text(
                                      'Earnings for 35 orders',
                                      style: TextStyle(
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(21, 30, 42, 1)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Dash(
                              direction: Axis.vertical,
                              length: 90,
                              dashLength: 10,
                              dashThickness: 2,
                              dashColor: Color.fromRGBO(219, 218, 219, 1)),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Weekly: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('1st Jun to 15th Jun',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Release date: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('Thu, 15th June',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(81.w, 5.25.h),
                      backgroundColor: buttoncream,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('View Details')),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
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
