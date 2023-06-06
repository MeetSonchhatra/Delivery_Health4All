import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../consts/colors.dart';
import 'onboardD.dart';

class SplashD extends StatefulWidget {
  const SplashD({super.key});

  @override
  State<SplashD> createState() => _SplashDState();
}

class _SplashDState extends State<SplashD> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const OnboardD());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkblue,
      body: Center(
        // child: RippleAnimation(
        //     key: UniqueKey(),
        //     repeat: true,
        //     color: Colors.blue,
        //     minRadius: 180,
        //     ripplesCount: 10,
        //     duration: const Duration(microseconds: 2300),
        //   child: Center(
        //  child: ClipRect(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Health",
              style: TextStyle(
                fontSize: 40.sp,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
            ),
            Text(
              "4",
              style: TextStyle(
                fontSize: 40.sp,
                fontFamily: 'Roboto',
                color: Colors.blue,
              ),
            ),
            Text(
              "All",
              style: TextStyle(
                fontSize: 40.sp,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      // ),
      //  ),
      //  ),
    );
  }
}