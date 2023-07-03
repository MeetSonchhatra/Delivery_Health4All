import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:file_picker/file_picker.dart';
import '../../consts/colors.dart';
import 'LognPg.dart';
import 'Vehical2.dart';

final formatter = DateFormat.yMd();

class Vehical1D extends StatefulWidget {
  const Vehical1D({super.key});

  @override
  State<Vehical1D> createState() => _Vehical1DState();
}

class _Vehical1DState extends State<Vehical1D> {
  File? image;
  Future pickImage() async {
    try {
      final XFile? image =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = Image.file(File(image.path));
      setState(() => this.image = imageTemporary as File?);
    } on PlatformException catch (e) {
      print('Failed to pick image $e');
    }
  }

  final formKey = GlobalKey<FormState>();
  String name = "";
  String password = "";
  String img = "";
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
                      'Vehical Details',
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
                        'add details to improve health with us!',
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
                      "Enter your Details ",
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
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  child: GestureDetector(
                    onTap: () {
                      // Get.to(HomePg());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      height: 3.h,
                      width: 82.w,
                      child: Row(
                        children: [
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
                            width: 4.w,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(17.w, 3.h),
                                backgroundColor: whiteColor,
                                elevation: 0,
                              ),
                              onPressed: () {
                                //Get.to(const History());
                              },
                              child: Text(
                                'Company',
                                style: TextStyle(
                                    color: buttonblue, fontSize: 9.sp),
                              )),
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
                    const Icon(
                      Icons.sports_motorsports_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "Driving License",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 7.5.sp,
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
                Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.motorcycle,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Vehical number",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.w, top: 0.5.h),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              color: Color.fromRGBO(233, 234, 233, 1)))),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[A-Z]{2}\s[0-9]{2}\s[A-Z]{2}\s[0-9]{1,4}$')
                            .hasMatch(value)) {
                      return 'Enter correct Vehical number with space \n For Example GJ 01 AB 0000';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.sports_motorsports_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "Vehical Photos",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb and upto 4 images*)",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 7.5.sp,
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
                Row(
                  children: [
                    const Icon(
                      Icons.document_scanner,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "Vehical Insurance",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 7.5.sp,
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
                Row(
                  children: [
                    const Icon(
                      Icons.content_copy_rounded,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "RC book Front ",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 7.5.sp,
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
                Row(
                  children: [
                    const Icon(
                      Icons.content_copy_rounded,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.5.w),
                    Text(
                      "RC book Back ",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    Text(
                      "(pdf not more than 2mb*)",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 7.5.sp,
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
                  height: 4.h,
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
                        Get.to(Vehical2());
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
