import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:quickalert/quickalert.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../consts/colors.dart';
import '../Main-Pages/Home1.dart';
import 'LognPg.dart';
import 'Vehical2.dart';

final formatter = DateFormat.yMd();

class Vehical2 extends StatefulWidget {
  const Vehical2({super.key});

  @override
  State<Vehical2> createState() => _Vehical2State();
}

class _Vehical2State extends State<Vehical2> {
  void showAlert() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: "You have successfully created the Account .",
        confirmBtnText: "Welcome",
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Get.to(const Home1());
        });
  }

  final formKey = GlobalKey<FormState>();
  String name = "";
  String password = "";
  String image = "";
  String confirmpassword = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.to(const LognD());
          },
        ),
        title: Container(
          child: Row(
            children: [
              // Icon(
              //   Icons.arrow_back,
              //   color: Colors.black,
              // ),
              SizedBox(
                width: 50.w,
              ),
              // CountryListPick(
              //   theme: CountryTheme(
              //     isShowFlag: true,
              //     isShowTitle: false,
              //     isShowCode: false,
              //     isDownIcon: true,
              //     showEnglishName: false,
              //     labelColor: Colors.blueAccent,
              //   ),
              //   initialSelection: '+91',

              // )
            ],
          ),
        ),
      ),
      body: Container(
        color: whiteColor,
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    Text(
                      'Verification Details',
                      style: TextStyle(
                          color: const Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 15.6.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                Row(
                  children: [
                    Container(
                      width: 83.w,
                      child: Text(
                        'just one step away from being partner',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(1, 82, 168, 1),
                          fontSize: 12.4.sp,
                        ),
                      ),
                    ).marginOnly(right: 5.w)
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Text(
                      'Upload Your Photo ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromRGBO(4, 6, 60, 1),
                          fontSize: 11.4.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    const Icon(
                      Icons.create,
                      color: buttonblue,
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 2.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(17.w, 3.h),
                      backgroundColor: buttoncream,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Individual',
                      style: TextStyle(fontSize: 9.sp),
                    )),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.image,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.5.w),
                    Container(
                      width: 75.w,
                      child: Text(
                        'A sample image is given below pose your-self in same manner and upload the photo ',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(63, 81, 81, 1),
                          fontSize: 11.4.sp,
                        ),
                      ),
                    ).marginOnly(right: 5.w)
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                Container(
                  height: 18.h,
                  width: 82.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border:
                          Border.all(color: Color.fromRGBO(233, 234, 233, 1))),
                ).paddingSymmetric(horizontal: 8.14.w, vertical: 0.23.h),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.document_scanner,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      'Upload your photo with same pose',
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 82.w,
                      height: 5.7.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: Color.fromRGBO(234, 233, 234, 1))),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () async {
                            final result = await FilePicker.platform.pickFiles(
                              type: FileType.custom,
                              allowedExtensions: ['pdf'],
                            );
                            if (result == null) return;
                            final file = result.files.first;
                            openFile(file);
                            await SaveFilepermanently(file);
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(75, 2),
                            elevation: 0,
                            backgroundColor: bordersilver,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          child: Text(
                            'Upload',
                            style: TextStyle(
                                color: fontblack,
                                fontWeight: FontWeight.w500,
                                fontSize: 10.sp),
                          ),
                        ).marginOnly(right: 4.w),
                      ),
                    ).marginOnly(left: 10.w)
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  width: 75.w,
                  height: 4.3.h,
                  child: Text(
                    'We will notify you once we have verified your account!',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(63, 81, 81, 1),
                      fontSize: 12.4.sp,
                    ),
                  ),
                ).marginOnly(right: 18.5.w, left: 18.5.w),
                SizedBox(
                  height: 20.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(81.w, 5.25.h),
                      backgroundColor: buttoncream,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        showAlert();
                      }
                    },
                    child: const Text('Proceed')),
              ],
            ),
          ),
        ),
      ),
    ));
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }

  Future<File> SaveFilepermanently(PlatformFile file) async {
    final appstorage = await getApplicationDocumentsDirectory();
    final newFile = File('${appstorage.path}/${file.name}');
    return File(file.path!).copy(newFile.path);
  }
}
