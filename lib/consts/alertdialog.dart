import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

import 'colors.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.library_books_outlined,
            size: 135,
            color: Color.fromRGBO(16, 122, 21, 1),
          ),
          SizedBox(
            height: 2.h,
          ),
          const Text(
            'You have Successfully Booked your Test',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(141, 141, 141, 1)),
          ),
          SizedBox(height: 9.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(68, 26),
              backgroundColor: const Color.fromRGBO(16, 122, 21, 1),
              elevation: 0,
            ),
            child: const Text(
              'Track report',
              style: TextStyle(color: whiteColor, fontSize: 16),
            ),
            onPressed: () {
            //  Get.to(const Track1());
            },
          ),
          SizedBox(height: 1.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(68, 26),
              backgroundColor: buttonblue,
              elevation: 0,
            ),
            child: const Text(
              'Back to Home',
              style: TextStyle(color: whiteColor, fontSize: 16),
            ),
            onPressed: () {
             // Get.to(const HomePg());
            },
          ),
        ],
      ),
    );
  }
}
