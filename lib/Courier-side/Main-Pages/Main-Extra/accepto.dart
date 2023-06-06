import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../../consts/colors.dart';
import '../../../Model/deliveryacceptmodel.dart';
import '../../../api.dart';
import '../../Profile/ProfileD.dart';
import '../Delivery.dart';
import '../HistD.dart';
import '../Home1.dart';
import '../MoreD.dart';
import 'NotifD.dart';

class AcceptO extends StatefulWidget {
  const AcceptO({super.key});

  @override
  State<AcceptO> createState() => _AcceptOState();
}

class _AcceptOState extends State<AcceptO> {

  int myIndex = 0;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 12,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(20)),
                height: 52.h,
                width: 90.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      height: 10.h,
                      width: 90.w,
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Container(
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 9.1.h,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 0.95.h,
                                            horizontal: 1.9.w),
                                        child: Image.asset(
                                          "assets/coronavirus.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 2,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Biosampler Delivery',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp),
                                  ).marginOnly(left: 5.w),
                                ],
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Drop 1 :',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.4.sp),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 8.6.h,
                                  width: 60.5.w,
                                  child: Text(
                                    'B-20, Indrapasth gulmor, near ITC narmada,132 ft ring road, Vastrapur, Ahmedabad.',
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Color.fromRGBO(63, 81, 81, 1),
                                        fontSize: 12.4.sp),
                                  ).marginOnly(left: 5.w),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ).marginOnly(left: 7.5.w),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Drop 2 :',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.4.sp),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 5.6.h,
                              width: 60.5.w,
                              child: Text(
                                'Sharda Laboratory,Vastrapur, Ahmedabad.',
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color.fromRGBO(63, 81, 81, 1),
                                    fontSize: 12.4.sp),
                              ).marginOnly(left: 5.w),
                            ),
                          ],
                        )
                      ],
                    ).marginOnly(left: 7.5.w),
                    const Divider(
                      color: Color.fromRGBO(234, 233, 234, 1),
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Time Slot:',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.4.sp),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          '09:00AM - 09:30AM',
                          style: TextStyle(
                              color: Color.fromRGBO(63, 81, 81, 1),
                              fontSize: 12.4.sp),
                        )
                      ],
                    ).marginOnly(left: 7.5.w),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Route Distance:',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.4.sp),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          '20kms',
                          style: TextStyle(
                              color: Color.fromRGBO(63, 81, 81, 1),
                              fontSize: 12.4.sp),
                        )
                      ],
                    ).marginOnly(left: 7.5.w),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Route Time:',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.4.sp),
                        ),
                        SizedBox(
                          width: 17.w,
                        ),
                        Text(
                          '45mins',
                          style: TextStyle(
                              fontSize: 12.4.sp,
                              color: Color.fromRGBO(255, 194, 44, 1)),
                        ),
                      ],
                    ).marginOnly(left: 7.5.w),
                    const Divider(
                      color: Color.fromRGBO(234, 233, 234, 1),
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 28.w,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(0),
                              minimumSize: Size(36.w, 5.h),
                              backgroundColor:
                                  const Color.fromRGBO(6, 173, 132, 1),
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                  fontSize: 12.4.sp,
                                  fontWeight: FontWeight.w400,
                                  color: whiteColor),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              ),
            ).marginOnly(left: 2.5.w, right: 2.5.w),
            SizedBox(
              height: 2.h,
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
    );
  }
}
