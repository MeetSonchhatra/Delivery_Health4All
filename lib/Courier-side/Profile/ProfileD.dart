import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import '../../Model/deliverydisplaymodel.dart';
import '../../api.dart';
import '../Login/LoginD.dart';
import '../Main-Pages/Delivery.dart';
import '../Main-Pages/HistD.dart';
import '../Main-Pages/Home1.dart';
import '../Main-Pages/MoreD.dart';
import 'DeliveryInfo.dart';
import 'GenD.dart';
import 'Vehicalinfo.dart';

class ProfileD extends StatefulWidget {
  const ProfileD({super.key});

  @override
  State<ProfileD> createState() => _ProfileDState();
}

class _ProfileDState extends State<ProfileD> {

  String name = '';
  String email = '';
  // String photo = '';
  void getdata() async {
    deliverydisplay_Model data = await deliverydisplayApi().deliverydisplayList();
    setState(() {
      name = data.data![0].fullName.toString();
     // photo = data.data![0].photo.toString();
      email = data.data![0].emailid.toString();
    });
  }
  @override
  void initState() {
    super.initState();
    getdata();
  }

  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          automaticallyImplyLeading: false,
          toolbarHeight: 29.h,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(151, 117, 105, 1),
                  Color.fromRGBO(7, 32, 60, 1),
                  Color.fromRGBO(151, 117, 105, 1)
                ], stops: [
                  0.01,
                  0.85,
                  0.1
                ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_circle_left),
                          color: textfieldGrey,
                          iconSize: 30,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'My Profile',
                          style: TextStyle(
                              color: Color.fromRGBO(209, 207, 214, 1),
                              fontSize: 12.4.sp),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 25.w,
                              height: 11.34.h,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 4, color: Colors.white),
                                  boxShadow: [
                                    const BoxShadow(
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
                                    color: buttonblue),
                                child: const Icon(
                                  LineIcons.camera,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontSize: 15.6.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Text(
                                  email,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.4.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ).marginOnly(left: 5.w),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(6.25.w, 3.h),
                                      side: const BorderSide(
                                          width: 1,
                                          color: Color.fromRGBO(1, 82, 168, 1)),
                                      backgroundColor: buttonblue,
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      //Get.to(const EditProfile());
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
                                          'Edit Profile',
                                          style: TextStyle(fontSize: 9.sp),
                                        )
                                      ],
                                    )),
                                Row(
                                  children: [
                                    Text(
                                      '4.0',
                                      style: TextStyle(
                                          color: whiteColor, fontSize: 12.4.sp),
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    const Icon(
                                      LineIcons.starAlt,
                                      color: Colors.yellow,
                                    ),
                                    const Icon(
                                      LineIcons.starAlt,
                                      color: Colors.yellow,
                                    ),
                                    const Icon(
                                      LineIcons.starAlt,
                                      color: Colors.yellow,
                                    ),
                                    const Icon(
                                      LineIcons.starAlt,
                                      color: Colors.yellow,
                                    ),
                                    const Icon(
                                      LineIcons.starAlt,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Row(
                                  children: [SwitchScreen()],
                                )
                              ]),
                        ),
                      ],
                    ).marginOnly(left: 5.w)
                  ],
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.to(const DeliveryInfo());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.work,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Delivery Record",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.to(const GenD());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.person,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "General Information",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.to(VehiInfo());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            FontAwesomeIcons.motorcycle,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Vehical Information",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 18.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    // Get.to(HomePg());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.handshake,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Term and Conditions",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 15.5.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    // Get.to(HomePg());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.support_agent,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Help / Customer Care",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 14.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    // Get.to(HomePg());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.settings,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 38.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.to(LoginD());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.power_settings_new,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 38.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
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

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = true;
  var textValue = 'Active';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Active';
      });
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'InActive';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'Status:  ',
        style: TextStyle(
            fontSize: 12.4.sp, color: Color.fromRGBO(209, 207, 214, 1)),
      ),
      Text(
        '$textValue  ',
        style: TextStyle(fontSize: 12.4.sp, color: Colors.white),
      ),
      Transform.scale(
          scale: 1,
          child: Switch(
            onChanged: toggleSwitch,
            value: isSwitched,
            activeColor: Colors.white,
            activeTrackColor: Colors.green,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Color.fromRGBO(134, 133, 136, 1),
          ))
    ]);
  }
}
