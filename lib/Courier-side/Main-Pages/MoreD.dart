import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import 'Main-Extra/accepto.dart';

class MoreD extends StatelessWidget {
  const MoreD({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Card(
              elevation: 10,
              child: GestureDetector(
                onTap: () {
                  Get.to(AcceptO());
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
                      SizedBox(
                        width: 2.5.w,
                      ),
                      Text(
                        "Accept Orders",
                        style: TextStyle(
                          color: fontblue2,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 38.5.w,
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
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text('More items will be added soon'),
            )
          ],
        ),
      ),
    );
  }
}
