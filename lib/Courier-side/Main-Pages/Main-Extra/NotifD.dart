import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import '../../Profile/ProfileD.dart';
import '../Delivery.dart';
import '../HistD.dart';
import '../Home1.dart';
import '../MoreD.dart';
import 'Invoice.dart';

class NotifD extends StatefulWidget {
  const NotifD({super.key});

  @override
  State<NotifD> createState() => _NotifDState();
}

class _NotifDState extends State<NotifD> {
  int _index = 0;
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          toolbarHeight: 10.3.h,
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
              Container(
                height: 3.4.h,
                width: 7.w,
                decoration: BoxDecoration(
                    color: buttoncream,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  icon: const Icon(Icons.notifications_none_outlined,
                      color: Colors.white),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: Colors.black,
                ).marginOnly(top: 0.h),
              ),
            ],
          ).marginOnly(top: 20, left: 5.w),
        ),
        extendBody: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    'Recent Notifications',
                    style: TextStyle(
                        color: Color.fromRGBO(14, 13, 18, 1),
                        fontSize: 12.4.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 35.w,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ).marginOnly(top: 13, left: 14),
                      IconButton(
                          padding: const EdgeInsets.all(0),
                          iconSize: 30,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.disabled_by_default_rounded,
                            color: Color.fromRGBO(255, 220, 224, 1),
                          )),
                    ],
                  )
                ],
              ).marginOnly(left: 7.5.w),
              SizedBox(
                height: 2.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(const Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.5.w, vertical: 1.7.h),
                          child: Image.asset('assets/coronavirus.png'),
                        ),
                        Text(
                          "A Delivery has been assigned to you",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.4.sp,
                          ),
                        ),
                        Text(
                          '11:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.5.w, vertical: 1.7.h),
                          child: Image.asset('assets/blood-drop.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Your test has been",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        Text(
                          " delivered",
                          style: TextStyle(
                            color: Color.fromRGBO(6, 173, 132, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          '9:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    'Yesterday',
                    style: TextStyle(
                        color: Color.fromRGBO(14, 13, 18, 1),
                        fontSize: 12.4.sp,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 52.w,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 18,
                        width: 18,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ).marginOnly(top: 13, left: 14),
                      IconButton(
                          padding: const EdgeInsets.all(0),
                          iconSize: 30,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.disabled_by_default_rounded,
                            color: Color.fromRGBO(255, 220, 224, 1),
                          )),
                    ],
                  )
                ],
              ).marginOnly(left: 7.5.w),
              SizedBox(
                height: 2.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
                          child: Image.asset('assets/BioS.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "You completed the ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        Text(
                          "delivery",
                          style: TextStyle(
                            color: Color.fromRGBO(6, 173, 132, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          '9:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
                          child: Image.asset('assets/BioS.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Device is in ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        Text(
                          "transit",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 194, 44, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 19.w,
                        ),
                        Text(
                          '00:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    //Get.to(Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: 0.56.h, top: 1.13.h, left: 10),
                          child: Image.asset('assets/blood-drop.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Your test has been",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        Text(
                          " delivered",
                          style: TextStyle(
                            color: Color.fromRGBO(6, 173, 132, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          '9:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
                          child: Image.asset('assets/BioS.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Device has been ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        Text(
                          "delivered",
                          style: TextStyle(
                            color: Color.fromRGBO(6, 173, 132, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          '9:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.5.w, vertical: 1.7.h),
                          child: Image.asset('assets/coronavirus.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Your Covid test results are here ",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        Text(
                          '11:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(60)),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Invoice());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 5.67.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.5.w, vertical: 1.7.h),
                          child: Image.asset('assets/blood-drop.png'),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          "Your test has been",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        Text(
                          " delivered",
                          style: TextStyle(
                            color: Color.fromRGBO(6, 173, 132, 1),
                            fontWeight: FontWeight.w400,
                            fontSize: 11.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 7.w,
                        ),
                        Text(
                          '9:11am',
                          style: TextStyle(
                              color: Color.fromRGBO(197, 197, 197, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 17.h,
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(LineIcons.home),
                  onPressed: () {
                    Get.to(const Home1());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'Home',
                backgroundColor: whiteColor,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(FontAwesomeIcons.motorcycle),
                  onPressed: () {
                    Get.to(const Delivery());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'Delivery',
                backgroundColor: whiteColor,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.history),
                  onPressed: () {
                    Get.to(const HistD());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'History',
                backgroundColor: whiteColor,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(Icons.more_horiz),
                  onPressed: () {
                    Get.to(const MoreD());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'More',
                backgroundColor: whiteColor,
              ),
            ]),
      ),
    );
  }
}
