import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../consts/colors.dart';
import '../Main-Pages/Delivery.dart';
import '../Main-Pages/HistD.dart';
import '../Main-Pages/Home1.dart';
import '../Main-Pages/MoreD.dart';
import 'ProfileD.dart';

final formatter = DateFormat.yMd();

class VehiInfo extends StatefulWidget {
  const VehiInfo({super.key});

  @override
  State<VehiInfo> createState() => _VehiInfoState();
}

class _VehiInfoState extends State<VehiInfo> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  String image = "";
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
          )
          ),
      body: Container(
        color: whiteColor,
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
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
                      'Vehical Information',
                      style: TextStyle(
                          fontSize: 12.4.sp,
                          color: Color.fromRGBO(5, 27, 98, 1)),
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
                Row(
                  children: [
                    const Icon(
                      Icons.sports_motorsports_outlined,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "Driving License",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 7.5.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 2, 58, 2),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 3, bottom: 3),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(75, 2),
                                    elevation: 0,
                                    backgroundColor: bordersilver,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload',
                                    style: TextStyle(
                                        color: fontblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp),
                                  ),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: bordersilver))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Add image";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          image = value;
                          setState(() {});
                        },
                      ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.motorcycle,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Vehical number",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.w, top: 0.5.h),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: bordersilver))),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[A-Z]{2}\s[0-9]{2}\s[A-Z]{2}\s[0-9]{1,4}$')
                            .hasMatch(value)) {
                      return 'Enter correct Vehical number with space';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.motorcycle,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "Vehical Photos",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb and upto 4 images*)",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 7.5.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 2, 58, 2),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 3, bottom: 3),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(75, 2),
                                    elevation: 0,
                                    backgroundColor: bordersilver,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload',
                                    style: TextStyle(
                                        color: fontblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp),
                                  ),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: bordersilver))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Add image";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          image = value;
                          setState(() {});
                        },
                      ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.document_scanner,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "Vehical Insurance",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 7.5.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 2, 58, 2),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 3, bottom: 3),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(75, 2),
                                    elevation: 0,
                                    backgroundColor: bordersilver,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload',
                                    style: TextStyle(
                                        color: fontblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp),
                                  ),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: bordersilver))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Add image";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          image = value;
                          setState(() {});
                        },
                      ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.content_copy_rounded,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "RC book Front ",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 7.5.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 2, 58, 2),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 3, bottom: 3),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(75, 2),
                                    elevation: 0,
                                    backgroundColor: bordersilver,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload',
                                    style: TextStyle(
                                        color: fontblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp),
                                  ),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: bordersilver))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Add image";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          image = value;
                          setState(() {});
                        },
                      ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.content_copy_rounded,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "RC book Back ",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 7.5.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(12, 2, 58, 2),
                            suffixIcon: Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 3, bottom: 3),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(75, 2),
                                    elevation: 0,
                                    backgroundColor: bordersilver,
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                  ),
                                  child: Text(
                                    'Upload',
                                    style: TextStyle(
                                        color: fontblack,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10.sp),
                                  ),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: bordersilver))),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Add image";
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          image = value;
                          setState(() {});
                        },
                      ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(145, 44),
                          backgroundColor: whiteColor,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            side: BorderSide(
                              width: 1.0,
                              color: buttonblue,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.to(ProfileD());
                        },
                        child: Text(
                          'Cancel',
                          style:
                              TextStyle(color: buttonblue, fontSize: 12.4.sp),
                        )),
                    SizedBox(
                      width: 8.w,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(145, 44),
                          backgroundColor: buttoncream,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Get.to(ProfileD());
                        },
                        child: Text(
                          'Save Changes',
                          style: TextStyle(fontSize: 12.4.sp),
                        )),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
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
    ));
  }
}
