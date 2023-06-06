import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import '../../Model/deliveryacceptmodel.dart';
import '../../api.dart';
import 'Main-Extra/Invoice.dart';

class HistD extends StatefulWidget {
  const HistD({super.key});

  @override
  State<HistD> createState() => _HistDState();
}

class _HistDState extends State<HistD> {
  String dpstatus = '';

  void getdata() async {
    deliveryaccept_Model data = await deliveryacceptApi().deliveryacceptList();
    setState(() {
      dpstatus = data.data![0].dpStatus.toString();
      // photo = data.data![0].photo.toString();
      //email = data.data![0].emailid.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                Text(
                  'Recent Delivery',
                  style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 12.4.sp,
                      fontWeight: FontWeight.w500),
                ),
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
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Your Covid test results",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 15.2.w,
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
                        dpstatus,
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
                  'A week ago delivery',
                  style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 12.4.sp,
                      fontWeight: FontWeight.w500),
                ),
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
                        "Device has been ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        dpstatus,
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        '28/02/2023',
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
                        dpstatus,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 194, 44, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        '28/02/2023',
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
                        padding: EdgeInsets.only(
                            bottom: 0.56.h, top: 1.13.h, left: 10),
                        child: Image.asset('assets/blood-drop.png'),
                      ),
                      SizedBox(
                        width: 1.w,
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
                        dpstatus,
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
                        '28/02/2023',
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
                        dpstatus,
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
                        '28/02/2023',
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
                        "Your Covid test results",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        '28/02/2023',
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
          ],
        ),
      ),
    );
  }
}
