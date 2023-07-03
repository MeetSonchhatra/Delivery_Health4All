import 'package:delivery_health4all/Courier-side/Main-Pages/Main-Extra/accepto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../consts/colors.dart';
import 'Main-Extra/payout.dart';

class HomeD extends StatelessWidget {
  const HomeD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 14.h,
                    width: 57.w,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery done today',
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            '57 Health Saved',
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(16, 122, 21, 1)),
                          ),
                          // SizedBox(
                          //   height: 0.75.h,
                          // ),
                          Row(
                            children: [
                              Card(elevation: 1, child: Text('217+ km driven')),
                              SizedBox(
                                width: 2.w,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      side: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromRGBO(6, 173, 132, 1),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      minimumSize: Size(18.14.w, 2.95.h),
                                      backgroundColor: whiteColor,
                                      elevation: 8),
                                  onPressed: () {
                                   Get.to(()=>Payout());
                                  },
                                  child: Text(
                                    'Earnings',
                                    style: TextStyle(
                                        color: Color.fromRGBO(6, 173, 132, 1),
                                        fontSize: 9.sp),
                                  )),
                            ],
                          )
                        ]).paddingOnly(top: 1.13.h, left: 3.48.w),
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    height: 14.h,
                    width: 31.w,
                    child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New Delivery ',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.av_timer,
                                size: 22,
                                color: Color.fromRGBO(244, 170, 21, 1),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Text(
                                '09:00AM',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(244, 170, 21, 1)),
                              )
                            ],
                          ).paddingOnly(left: 15),
                          // SizedBox(
                          //   height: 1.h,
                          // ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(11.16.w, 2.95.h),
                                backgroundColor: buttoncream,
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50),
                                  ),
                                ),
                              ),
                              onPressed: () {Get.to(() =>AcceptO());},
                              child: const Text('Start'))
                        ]).paddingOnly(top: 1.13.h),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.54.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New Orders',
                  style: TextStyle(
                    color: fontblack,
                    fontSize: 12.4.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ).marginOnly(left: 10.w),
                // SizedBox(
                //   width: 33.w,
                // ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                        color: Color.fromRGBO(151, 117, 105, 1),
                        fontSize: 11.4.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ).marginOnly(right: 10.w),
            SizedBox(
              height: 1.h,
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 38.h,
                width: 83.w,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.home_work_outlined),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(Icons.av_timer),
                          ],
                        ).paddingOnly(top: 1.13.h, left: 1.86.w),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 48.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              '09:00AM - 09:30AM ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 1.13.h),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(AcceptO());
                              },
                              child: Container(
                                width: 8.15.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(183, 255, 237, 1),
                                  borderRadius: BorderRadius.circular(07),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Color.fromRGBO(16, 122, 21, 1),
                                ),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 8.15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 211, 215, 1),
                                borderRadius: BorderRadius.circular(07),
                              ),
                              child: Icon(
                                Icons.close,
                                color: Color.fromRGBO(210, 22, 41, 1),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.home_work_outlined),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(Icons.av_timer),
                          ],
                        ).paddingOnly(top: 1.13.h, left: 1.86.w),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 48.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              '09:00AM - 09:30AM ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 1.13.h),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(AcceptO());
                              },
                              child: Container(
                                width: 8.15.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(183, 255, 237, 1),
                                  borderRadius: BorderRadius.circular(07),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Color.fromRGBO(16, 122, 21, 1),
                                ),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 8.15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 211, 215, 1),
                                borderRadius: BorderRadius.circular(07),
                              ),
                              child: Icon(
                                Icons.close,
                                color: Color.fromRGBO(210, 22, 41, 1),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.home_work_outlined),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(Icons.av_timer),
                          ],
                        ).paddingOnly(top: 1.13.h, left: 1.86.w),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 48.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              '09:00AM - 09:30AM ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 1.13.h),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(AcceptO());
                              },
                              child: Container(
                                width: 8.15.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(183, 255, 237, 1),
                                  borderRadius: BorderRadius.circular(07),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Color.fromRGBO(16, 122, 21, 1),
                                ),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 8.15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 211, 215, 1),
                                borderRadius: BorderRadius.circular(07),
                              ),
                              child: Icon(
                                Icons.close,
                                color: Color.fromRGBO(210, 22, 41, 1),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),     
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.home_work_outlined),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(Icons.av_timer),
                          ],
                        ).paddingOnly(top: 1.13.h, left: 1.86.w),
                        SizedBox(
                          width: 5.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 48.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Text(
                              '09:00AM - 09:30AM ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 1.13.h),
                        SizedBox(
                          width: 2.w,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(AcceptO());
                              },
                              child: Container(
                                width: 8.15.w,
                                height: 4.h,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(183, 255, 237, 1),
                                  borderRadius: BorderRadius.circular(07),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Color.fromRGBO(16, 122, 21, 1),
                                ),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 8.15.w,
                              height: 4.h,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 211, 215, 1),
                                borderRadius: BorderRadius.circular(07),
                              ),
                              child: Icon(
                                Icons.close,
                                color: Color.fromRGBO(210, 22, 41, 1),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 1.7.h),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),
                    SizedBox(
                      height: 0.5.h,
                    ),
      ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Accepted Orders',
                  style: TextStyle(
                    color: fontblack,
                    fontSize: 12.4.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ).marginOnly(left: 10.w),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                        color: Color.fromRGBO(151, 117, 105, 1),
                        fontSize: 11.4.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ).marginOnly(right: 10.w),
            SizedBox(
              height: 1.h,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RecommendedTest(
                    image: "assets/coronavirus.png",
                    title: "09:20 AM",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/blood-drop.png",
                    title: "10:20 AM",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/coronavirus.png",
                    title: "11:00 AM",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/coronavirus.png",
                    title: "11:20 AM",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/blood-drop.png",
                    title: "12:00 PM",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/blood-drop.png",
                    title: "12:30 PM",
                    press: () {},
                  ),
                ],
              ).marginOnly(left: 5.w),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivered Orders',
                  style: TextStyle(
                    color: Color.fromRGBO(14, 13, 18, 1),
                    fontSize: 12.4.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ).marginOnly(left: 10.w),
                Card(
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Weekly',
                      style: TextStyle(
                          color: Color.fromRGBO(21, 30, 42, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 9.sp),
                    ),
                  ),
                ),
                Icon(Icons.date_range_outlined),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: TextStyle(
                        color: Color.fromRGBO(151, 117, 105, 1),
                        fontSize: 11.4.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ).marginOnly(right: 10.w),
            SizedBox(
              height: 1.h,
            ),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 37.h,
                width: 83.w,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [Icon(Icons.home_work_outlined)],
                        ).paddingOnly(top: 10, left: 8),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.av_timer,
                              size: 22,
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(
                              Icons.date_range_outlined,
                              size: 22,
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '09:13AM 11:30AM',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              '06/05/2023',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 8),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [Icon(Icons.home_work_outlined)],
                        ).paddingOnly(top: 10, left: 8),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.av_timer,
                              size: 22,
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(
                              Icons.date_range_outlined,
                              size: 22,
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '09:13AM 11:30AM',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              '06/05/2023',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 8),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [Icon(Icons.home_work_outlined)],
                        ).paddingOnly(top: 10, left: 8),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.av_timer,
                              size: 22,
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(
                              Icons.date_range_outlined,
                              size: 22,
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '09:13AM 11:30AM',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              '06/05/2023',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 8),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [Icon(Icons.home_work_outlined)],
                        ).paddingOnly(top: 10, left: 8),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30.w,
                              child: Text(
                                'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                maxLines: 3,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(63, 81, 81, 1)),
                              ),
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.av_timer,
                              size: 22,
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            Icon(
                              Icons.date_range_outlined,
                              size: 22,
                            ),
                          ],
                        ).paddingOnly(top: 10),
                        SizedBox(
                          width: 1.w,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '09:13AM 11:30AM',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              '06/05/2023',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(63, 81, 81, 1)),
                            )
                          ],
                        ).paddingOnly(top: 8),
                      ],
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    const MySeparator(color: Color.fromRGBO(234, 233, 234, 1)),
                    SizedBox(
                      height: 0.5.h,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  'Active Laboratory Around You',
                  style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.4.sp),
                )
              ],
            ).marginOnly(left: 10.w),
            SizedBox(height: 2.26.h),
            Container(
              height: 25.h,
              width: 82.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage("assets/MapD.png"),
                    fit: BoxFit.cover,
                  )),
            ).marginSymmetric(horizontal: 4.7.w),
            // SizedBox(
            //   height: 18.3.h,
            //   width: 90.w,
            //   child: Image.asset("assets/OffersD.png", fit: BoxFit.cover),
            // ).marginOnly(left: 5.w),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
      ),
    );
  }
}

class RecommendedTest extends StatelessWidget {
  const RecommendedTest({
    this.image,
    this.title,
    this.press,
  });
  final String? image, title;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Row(
          children: [
            Column(
              children: <Widget>[
                Container(
                  color: const Color.fromRGBO(246, 246, 246, 1),
                  height: 8.h,
                  width: 18.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.35.w, vertical: 1.13.h),
                    child: Image.asset(
                      image!,
                      height: 5.7,
                      width: 12.5.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                GestureDetector(
                  onTap: press,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    child: Row(
                      children: <Widget>[
                        Text("$title",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 11.4.sp,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 5.w,
            )
          ],
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 5.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
