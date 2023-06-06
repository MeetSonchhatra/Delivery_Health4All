import 'package:delivery_health4all/Courier-side/Login/LoginD.dart';
import 'package:delivery_health4all/Courier-side/Login/SignupD.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:delivery_health4all/consts/colors.dart';
import 'package:sizer/sizer.dart';

class LognD extends StatelessWidget {
  const LognD({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: whiteColor,
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                      child: Image.asset(
                    "assets/shape.png",
                    width: 44.5.w,
                    height: 17.h,
                  )).marginOnly(left: 22.5.w, top: 2.7.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Health",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: const Color.fromRGBO(63, 79, 81, 1),
                        ),
                      ),
                      Text(
                        "4",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: const Color.fromRGBO(7, 80, 157, 1),
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          fontFamily: 'Roboto',
                          color: const Color.fromRGBO(63, 79, 81, 1),
                        ),
                      ),
                    ],
                  ).marginOnly(top: 8.5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'For Deliver Partner',
                        style: TextStyle(
                            color: Color.fromRGBO(14, 13, 18, 1),
                            fontSize: 19.2.sp,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ).marginOnly(top: 16.h),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              const Image(image: AssetImage('assets/LognD.png')),
              SizedBox(
                height: 5.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(81.595.w, 5.h),
                    backgroundColor: buttoncream,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.to(const SignupD());
                  },
                  child: const Text('Sign Up')),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2.0,
                      color: buttonblue,
                    ),
                    minimumSize: Size(81.595.w, 5.h),
                    backgroundColor: whiteColor,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.to(const LoginD());
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: buttonblue),
                  )),
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login as a User? ',
                    style: TextStyle(
                        color: Color.fromRGBO(4, 6, 60, 1), fontSize: 12.4.sp),
                  ),
                  TextButton(
                    onPressed: () {
                     // Get.to(const LoginPage());
                    },
                    child: const Text(
                      'Chick here',
                      style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
