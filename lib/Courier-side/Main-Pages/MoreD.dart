import 'package:delivery_health4all/Courier-side/Main-Pages/Main-Extra/payout.dart';
import 'package:delivery_health4all/consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:delivery_health4all/consts/date_utils.dart' as date_util;
import 'Main-Extra/accepto.dart';
import 'package:flutter_dash/flutter_dash.dart';

class MoreD extends StatefulWidget {
  const MoreD({super.key});

  @override
  State<MoreD> createState() => _MoreDState();
}

class _MoreDState extends State<MoreD> {
  double width = 0.0;
  double height = 0.0;

  late ScrollController scrollController;
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    currentMonthList = date_util.DateUtils.daysInMonth(currentDateTime);
    currentMonthList.sort((a, b) => a.day.compareTo(b.day));
    currentMonthList = currentMonthList.toSet().toList();
    scrollController =
        ScrollController(initialScrollOffset: 70.0 * currentDateTime.day);
    super.initState();
  }

  Widget topView() {
    return Container(
      height: height * 0.35,
      width: width,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              blurRadius: 4,
              color: Colors.black12,
              offset: Offset(4, 4),
              spreadRadius: 2)
        ],
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            titleView(),
            horizontalCapsuleListView(),
          ]),
    );
  }

  @override
  Widget titleView() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Text(
        date_util.DateUtils.months[currentDateTime.month - 1] +
            ' ' +
            currentDateTime.year.toString(),
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }

  Widget horizontalCapsuleListView() {
    return Container(
      width: width,
      height: 150,
      child: ListView.builder(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        shrinkWrap: true,
        itemCount: currentMonthList.length,
        itemBuilder: (BuildContext context, int index) {
          return capsuleView(index);
        },
      ),
    );
  }

  Widget capsuleView(int index) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              currentDateTime = currentMonthList[index];
            });
          },
          child: Container(
            width: 80,
            height: 140,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    currentMonthList[index].day.toString(),
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color:
                            (currentMonthList[index].day != currentDateTime.day)
                                ? Color.fromRGBO(107, 58, 40, 1)
                                : Colors.white),
                  ),
                  Text(
                    date_util.DateUtils
                        .weekdays[currentMonthList[index].weekday - 1],
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color:
                            (currentMonthList[index].day != currentDateTime.day)
                                ? Color.fromRGBO(107, 58, 40, 1)
                                : Colors.white),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: whiteColor,
            child: Column(
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Accepted Orders',
                      style: TextStyle(
                          color: Color.fromRGBO(14, 13, 18, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Text('Today'),
                    Icon(Icons.calendar_month_outlined),
                    Container(
                      width: 6.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 211, 215, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Color.fromRGBO(210, 22, 41, 1),
                      ),
                    ),
                  ],
                ).paddingOnly(left: 10.w, right: 10.w),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 8.6.h,
                  width: 86.w,
                  child: Image.asset("assets/Calender2.png"),
                ),
                SizedBox(height: 2.h),
                ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 6.h,
                                    width: 18.w,
                                    child: Image.asset("assets/BioS.png")),
                              ],
                            ),
                            Container(
                              width: 40.w,
                              height: 3.h,
                              child: Column(
                                children: [
                                  Text(
                                    'B-20, Indrapasth gulmor, near ITC, Vastrapur, Ahmedabad.',
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: 7.5.sp,
                                        color: Color.fromRGBO(63, 81, 81, 1)),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  '09:20am',
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Color.fromRGBO(197, 197, 197, 1)),
                                ),
                                Text(
                                  '06/05/2023',
                                  style: TextStyle(
                                      fontSize: 9.sp,
                                      color: Color.fromRGBO(197, 197, 197, 1)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(48, 26),
                                  backgroundColor: buttoncream,
                                  elevation: 0,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(50),
                                    ),
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text('Start'))
                          ],
                        ),
                      );
                    }),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Earnings',
                      style: TextStyle(
                          color: Color.fromRGBO(14, 13, 18, 1),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    Container(
                      width: 6.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 211, 215, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Color.fromRGBO(210, 22, 41, 1),
                      ),
                    ),
                  ],
                ).paddingOnly(left: 10.w, right: 10.w),
                SizedBox(
                  height: 2.h,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 13.84.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Container(
                          width: 40.w,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'Current Earnings',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                'Rs: 3,589',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color.fromRGBO(16, 122, 21, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Card(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  width: 35.w,
                                  height: 4.h,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    child: Text(
                                      'Earnings for 305 orders',
                                      style: TextStyle(
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(21, 30, 42, 1)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Dash(
                              direction: Axis.vertical,
                              length: 90,
                              dashLength: 10,
                              dashThickness: 2,
                              dashColor: Color.fromRGBO(219, 218, 219, 1)),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Weekly: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('1st Jun to 15th Jun',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Release date: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('Thu, 15th June',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
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
                      Get.to(() => Payout());
                    },
                    child: const Text('View Daily Earnings')),
                SizedBox(
                  height: 2.h,
                ),
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 13.84.h,
                    width: 82.w,
                    child: Row(
                      children: [
                        Container(
                          width: 40.w,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 1.h,
                              ),
                              Text(
                                'Pending Payout',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Text(
                                'Rs: 1,589',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Color.fromRGBO(255, 194, 44, 1),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Card(
                                color: Color.fromRGBO(250, 250, 250, 1),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                child: Container(
                                  width: 35.w,
                                  height: 4.h,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    child: Text(
                                      'Earnings for 305 orders',
                                      style: TextStyle(
                                          fontSize: 9.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromRGBO(21, 30, 42, 1)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14),
                          child: Dash(
                              direction: Axis.vertical,
                              length: 90,
                              dashLength: 10,
                              dashThickness: 2,
                              dashColor: Color.fromRGBO(219, 218, 219, 1)),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Weekly: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('1st Jun to 15th Jun',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Release date: ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text('Thu, 15th June',
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 194, 44, 1),
                                        fontSize: 8.sp,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
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
                      Get.to(() => Payout());
                    },
                    child: const Text('View Details')),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CalendarAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CalendarAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(148.0);

  @override
  State<CalendarAppBar> createState() => _CalendarAppBarState();
}

class _CalendarAppBarState extends State<CalendarAppBar> {
  int selectedIndex = 0;
  DateTime now = DateTime.now();
  late DateTime lastDayOfMonth;
  @override
  void initState() {
    super.initState();
    lastDayOfMonth = DateTime(now.year, now.month + 1, 0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      toolbarHeight: 100.0,
      title: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: Row(
              children: List.generate(
                lastDayOfMonth.day,
                (index) {
                  final currentDate =
                      lastDayOfMonth.add(Duration(days: index + 1));
                  final dayName = DateFormat('E').format(currentDate);
                  return Padding(
                    padding: EdgeInsets.only(left: 0, right: 16.0),
                    child: GestureDetector(
                      onTap: () => setState(
                        () {
                          selectedIndex = index;
                        },
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 42.0,
                            width: 42.0,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Colors.orange
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(44.0),
                            ),
                            child: Text(
                              dayName.substring(0, 1),
                              style: TextStyle(
                                fontSize: 24.0,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            "${index + 1}",
                            style: const TextStyle(
                              fontSize: 16.0,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Container(
                            height: 2.0,
                            width: 28.0,
                            color: selectedIndex == index
                                ? Colors.orange
                                : Colors.transparent,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
