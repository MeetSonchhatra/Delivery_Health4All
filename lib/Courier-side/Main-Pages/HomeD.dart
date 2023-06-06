import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../consts/colors.dart';

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
            Card(
              elevation: 2,
              child: Container(
                height: 15.h,
                width: 80.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: lightblue,
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/Distance.png"))),
              ),
            ),
            SizedBox(
              height: 4.54.h,
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
            Row(
              children: [
                Text(
                  'Deliveries done',
                  style: TextStyle(
                    color: fontblack,
                    fontSize: 12.4.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ).marginOnly(left: 10.w),
                SizedBox(
                  width: 33.w,
                ),
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
            ),
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
                    title: "Covid 19",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/blood-drop.png",
                    title: "Blood Test",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/coronavirus.png",
                    title: "Covid 19",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/coronavirus.png",
                    title: "Covid 19",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/blood-drop.png",
                    title: "Blood Test",
                    press: () {},
                  ),
                  RecommendedTest(
                    image: "assets/blood-drop.png",
                    title: "Blood Test",
                    press: () {},
                  ),
                ],
              ).marginOnly(left: 5.w),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              height: 18.3.h,
              width: 90.w,
              child: Image.asset("assets/OffersD.png", fit: BoxFit.cover),
            ).marginOnly(left: 5.w),
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
