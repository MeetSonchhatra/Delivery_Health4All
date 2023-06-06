import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import '../Main-Pages/Delivery.dart';
import '../Main-Pages/HistD.dart';
import '../Main-Pages/Home1.dart';
import '../Main-Pages/MoreD.dart';

class DeliveryInfo extends StatefulWidget {
  const DeliveryInfo({super.key});

  @override
  State<DeliveryInfo> createState() => _DeliveryInfoState();
}

class _DeliveryInfoState extends State<DeliveryInfo> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: whiteColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 30.25.w,
                      height: 14.75.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: whiteColor),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.white)
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/person.png"),
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 4.54.h,
                        width: 10.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // border: Border.all(
                            //     width: 4, color: ),
                            color: buttoncream),
                        child: const Icon(
                          LineIcons.camera,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    'Delivery Information',
                    style: TextStyle(
                        fontSize: 12.4.sp, color: Color.fromRGBO(5, 27, 98, 1)),
                  ).marginOnly(left: 5.w),
                  SizedBox(
                    width: 29.w,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(6.25.w, 3.h),
                        side: const BorderSide(width: 1, color: Colors.white),
                        backgroundColor: buttoncream,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(38),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Get.to(const EditProfile());
                      },
                      child: Wrap(
                        children: [
                          const Icon(
                            Icons.edit_note,
                            size: 16,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(fontSize: 9.sp),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 2.h,
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
                    height: 9.3.h,
                    width: 82.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.67.h,
                          width: 82.w,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 1.2.h, left: 5.w, right: 0),
                                child: Image.asset('assets/BioS.png'),
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
                                " delivery",
                                style: TextStyle(
                                  color: Color.fromRGBO(6, 173, 132, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.4.sp,
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
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
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rating: 4.0',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'FeedBack:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            )
                          ],
                        ).marginOnly(left: 10.w),
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
                    height: 9.3.h,
                    width: 82.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.67.h,
                          width: 82.w,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 1.2.h, left: 5.w, right: 0),
                                child: Image.asset('assets/BioS.png'),
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
                                width: 10.w,
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
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rating: 4.0',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'FeedBack:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            )
                          ],
                        ).marginOnly(left: 10.w),
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
                    height: 9.3.h,
                    width: 82.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.67.h,
                          width: 82.w,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.5.w, vertical: 1.2.h),
                                child: Image.asset('assets/blood-drop.png'),
                              ),
                              Text(
                                "Your test has been ",
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
                                width: 2.w,
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
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rating: 4.0',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'FeedBack:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            )
                          ],
                        ).marginOnly(left: 10.w),
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
                    height: 9.3.h,
                    width: 82.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.67.h,
                          width: 82.w,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 1.2.h, left: 2.5.w),
                                child: Image.asset('assets/BioS.png'),
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
                                " delivered",
                                style: TextStyle(
                                  color: Color.fromRGBO(6, 173, 132, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.4.sp,
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
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
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rating: 4.0',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'FeedBack:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            )
                          ],
                        ).marginOnly(left: 10.w),
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
                    height: 9.3.h,
                    width: 82.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.67.h,
                          width: 82.w,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.5.w, vertical: 1.2.w),
                                child: Image.asset('assets/coronavirus.png'),
                              ),
                              Text(
                                "Your covid results are here ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.4.sp,
                                ),
                              ),
                              SizedBox(
                                width: 2.w,
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
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rating: 4.0',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'FeedBack:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            )
                          ],
                        ).marginOnly(left: 10.w),
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
                    height: 9.3.h,
                    width: 82.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5.67.h,
                          width: 82.w,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.5.w, vertical: 1.2.w),
                                child: Image.asset('assets/blood-drop.png'),
                              ),
                              Text(
                                "Your test has been ",
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
                                width: 2.w,
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
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rating: 4.0',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'FeedBack:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            )
                          ],
                        ).marginOnly(left: 10.w),
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 5.h,
              ),
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
