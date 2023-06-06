import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../consts/colors.dart';
import 'LognPg.dart';

class OnboardD extends StatelessWidget {
  const OnboardD({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: whiteColor,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 4.76.h,
            ),
            Container(
                margin: EdgeInsets.fromLTRB(4.30.w, 0, 4.30.w, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to",
                      style: TextStyle(
                        fontSize: 19.2.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(14, 13, 18, 1),
                      ),
                    ),
                    Text(
                      " Health4All",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 19.4.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(30, 59, 141, 1),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 1.h,
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(18.5, 0, 18.5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Convienient care at your fingertips",
                      style: TextStyle(
                        fontSize: 11.4.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(1, 82, 168, 1),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 49.32.h,
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(18.5, 0, 18.5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Earn and Grow with Us",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(15, 15, 15, 1),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 1.7.h,
            ),
            SizedBox(
              height: 10.h,
              width: 60.93.w,
              child: Text(
                "Experience optimal care and exceptional service with our trusted medical app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: const Color.fromRGBO(134, 133, 136, 1),
                ),
              ),
            ),
            SizedBox(
              height: 3.6.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(36.51.w, 4.53.h),
                backgroundColor: buttoncream,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
              onPressed: () {
                Get.to(const LognD());
              },
              child: SizedBox(
                height: 5.h,
                width: 35.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 1.86.w, horizontal: 0.91.h),
                      child: Text(
                        "Get Started",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    const Icon(
                      LineIcons.arrowRight,
                      size: 29.0,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
