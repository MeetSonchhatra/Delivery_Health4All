import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';
import '../../Profile/ProfileD.dart';
import '../Delivery.dart';
import '../HistD.dart';
import '../Home1.dart';
import '../HomeD.dart';
import '../MoreD.dart';
import 'NotifD.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

final TextEditingController _searchText = TextEditingController();

class _InvoiceState extends State<Invoice> {
  int num = 0;
  var padding = EdgeInsets.symmetric(horizontal: 4.5.w, vertical: 0.57.w);
  double gap = 10;
  int _index = 2;
  final _pageData = [
    const HomeD(),
    const Delivery(),
    const HistD(),
    const MoreD()
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        toolbarHeight: 12.3.h,
        flexibleSpace: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = 0;
                });
                Get.to(const ProfileD());
              },
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/person.png",
                ),
              ),
            ),
            SizedBox(
              width: 4.w,
            ),
            Container(
              width: 65.w,
              color: const Color.fromRGBO(250, 250, 250, 1),
              child: TextField(
                readOnly: true,
                onTap: () {
                  //  Get.to(const Search());
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                    prefixIconColor: const Color.fromRGBO(197, 197, 197, 1),
                    hintText: "Search order number or date",
                    contentPadding: const EdgeInsets.symmetric(vertical: 10),
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 9.sp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: const BorderSide(color: Colors.white))),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined),
              onPressed: () {
                Get.to(const NotifD());
              },
              color: Colors.black,
            ).marginOnly(top: 0.h),
          ],
        ).marginOnly(top: 4.5.h, left: 5.w),
      ),
      extendBody: true,
      body: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Text(
                'Order No: ',
                style: TextStyle(
                  fontSize: 12.4.sp,
                  color: Color.fromRGBO(14, 13, 18, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'CD1201583',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.4.sp,
                    color: Color.fromRGBO(151, 117, 105, 1)),
              ),
              SizedBox(
                width: 14.w,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
            ],
          ).marginOnly(left: 10.w),
          Card(
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              width: 90.w,
              height: 53.8.h,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 6.8.h,
                          width: 15.w,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.5.w, vertical: 1.7.h),
                              child: Image.asset('assets/coronavirus.png'))),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Your delivery invoice ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        '11:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
              child: SizedBox(
            height: 28.35.h,
            child: PageView.builder(
                itemCount: 4,
                controller: controller,
                onPageChanged: (page) {
                  setState(() {
                    _index = page;
                  });
                },
                itemBuilder: (context, positions) {
                  return Container(
                    child: _pageData[positions],
                  );
                }),
          ))
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: whiteColor, boxShadow: [
            BoxShadow(
              spreadRadius: -10,
              blurRadius: 60,
              color: Colors.black.withOpacity(0.4),
              offset: const Offset(0, 25),
            )
          ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 900),
              tabs: [
                GButton(
                  gap: gap,
                  icon: LineIcons.home,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'Home',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttoncream,
                  iconSize: 24,
                  padding: padding,
                  onPressed: () {
                    Get.to(const Home1());
                  },
                ),
                GButton(
                  gap: gap,
                  icon: FontAwesomeIcons.motorcycle,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'DELIVERY',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttoncream,
                  iconSize: 24,
                  padding: padding,
                  onPressed: () {
                    Get.to(const HistD());
                  },
                ),
                GButton(
                  gap: gap,
                  icon: Icons.history,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'HISTORY',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttoncream,
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: Icons.more_horiz,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'More',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttoncream,
                  iconSize: 24,
                  padding: padding,
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    ));
  }
}
