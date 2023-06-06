import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../Model/deliverydisplaymodel.dart';
import '../../api.dart';
import '../../consts/colors.dart';
import '../Login/SignupD.dart';

class GenD extends StatefulWidget {
  const GenD({super.key});

  @override
  State<GenD> createState() => _GenDState();
}

class _GenDState extends State<GenD> {
  String name = '';
  String email = '';
  String phone = '';
  String addres = '';
  String dob = '';
  // String photo = '';
  void getdata() async {
    deliverydisplay_Model data =
        await deliverydisplayApi().deliverydisplayList();
    setState(() {
      name = data.data![0].fullName.toString();
      phone = data.data![0].mobileNum.toString();
      email = data.data![0].emailid.toString();
      addres = data.data![0].fullAddress.toString();
      dob = data.data![0].birthDate.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  int myIndex = 0;
  DateTime? _selectedDate;
  final _pin = ["380001", "380002", "380003", "380004", "380005", "380006"];
  String? _selectedVal = "380001";

  final _city = [
    "Ahemdabad",
    "Vadodara",
    "Surat",
    "Nadiad",
    "Anand",
    "Rajkot",
    "Jamnagar"
  ];
  String? _selectedCity = "Ahemdabad";

  void _presentdatepicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 100, now.month, now.day);

    final pickeddate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    //print(pickeddate);
    setState(() {
      _selectedDate = pickeddate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: whiteColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).pop();
              },
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 30.25.w,
                      height: 14.75.h,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: whiteColor),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.white)
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/person.png"),
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 4.54.h,
                        width: 10.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // border: Border.all(
                            //     width: 4, color: ),
                            color: buttoncream),
                        child: const Icon(
                          LineIcons.camera,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Text(
                    'General Information',
                    style: TextStyle(
                        fontSize: 12.4.sp, color: Color.fromRGBO(5, 27, 98, 1)),
                  ).marginOnly(left: 5.w),
                  SizedBox(
                    width: 29.w,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(6.25.w, 3.h),
                        side: const BorderSide(width: 1, color: Colors.white),
                        backgroundColor: buttoncream,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(38),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Get.to(const EditProfile());
                      },
                      child: Wrap(
                        children: [
                          const Icon(
                            Icons.edit_note,
                            size: 16,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(fontSize: 9.sp),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Name",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 12.4.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 5.95.h,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1),
                            fontSize: 12.4.sp),
                      ).marginOnly(left: 10.w)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 12.4.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 5.95.h,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        email,
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1),
                            fontSize: 12.4.sp),
                      ).marginOnly(left: 10.w)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Mobile Number",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 12.4.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 5.95.h,
                  width: 90.w,
                  child: Row(
                    children: [
                      Text(
                        phone,
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1),
                            fontSize: 12.4.sp),
                      ).marginOnly(left: 10.w)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.home,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Address",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 12.4.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 10.43.h,
                  width: 90.w,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 9.01.h,
                        width: 62.5.w,
                        child: Text(
                          addres,
                          // overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                              color: Color.fromRGBO(63, 81, 81, 1),
                              fontSize: 12.4.sp),
                        ).marginOnly(left: 5.w),
                      ).paddingOnly(left: 5.w, top: 2.h)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.cake,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Enter your Date of Birth",
                    style: TextStyle(
                      color: const Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 1.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _selectedDate == null
                        ? 'Select a date  ->'
                        : formatter.format(_selectedDate!),
                    style: TextStyle(
                      fontSize: 12.4.sp,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.calendar_month,
                      color: Color.fromRGBO(63, 81, 81, 1),
                      size: 30,
                    ),
                    onPressed: _presentdatepicker,
                  ),
                ],
              ).marginOnly(left: 12.5.w),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_city,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "City ",
                    style: TextStyle(
                      color: const Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 12.4.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 1.h,
              ),
              DropdownButtonFormField(
                value: _selectedCity,
                items: _city
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedCity = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromRGBO(197, 197, 197, 1),
                ),
                dropdownColor: lightblue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(197, 197, 197, 1)))),
              ).paddingSymmetric(horizontal: 8.14.w, vertical: 0.23.h),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.my_location,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Pincode",
                    style: TextStyle(
                      color: const Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 12.4.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 1.h,
              ),
              DropdownButtonFormField(
                value: _selectedVal,
                items: _pin
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedVal = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromRGBO(197, 197, 197, 1),
                ),
                dropdownColor: lightblue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(197, 197, 197, 1)))),
              ).paddingSymmetric(horizontal: 8.14.w, vertical: 0.23.h),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(145, 44),
                        backgroundColor: whiteColor,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          side: BorderSide(
                            width: 1.0,
                            color: buttonblue,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: buttonblue, fontSize: 12.4.sp),
                      )),
                  SizedBox(
                    width: 8.w,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(145, 44),
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
                        'Save Changes',
                        style: TextStyle(fontSize: 12.4.sp),
                      )),
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
