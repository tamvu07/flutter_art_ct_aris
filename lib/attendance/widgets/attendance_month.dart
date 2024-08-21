import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/attendance/attendance_const.dart';
import 'package:mobile_aris_management_tool/attendance/utilities/attendance_util.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/button_month.dart';

class AttendanceMonth extends StatefulWidget {
  final StreamController<int> streamPos;
  const AttendanceMonth({Key? key, required this.streamPos}) : super(key: key);

  @override
  State<AttendanceMonth> createState() => _AttendanceMonthState();
}

class _AttendanceMonthState extends State<AttendanceMonth> {
  final scrollController = ScrollController();
  List<ButtonMonth> listButton = [];
  List<ButtonMonth> _generateListButton() {
    List<ButtonMonth> listButton = [];
    var listMonth = AttendanceUtil.getMonthsInYear(DateTime.now(), attendanceTotalMonth);
    for (int i = 0; i < listMonth.length; i++) {
      listButton.add(ButtonMonth(btnText: listMonth[i], isSelected: false, onClick: _onButtonClick, position: i));
    }
    return listButton;
  }

  void _onButtonClick({required int pos, required bool isAddNewStreamValue}) {
    log("POS: $pos");
    var newList = _generateListButton();
    newList[pos].isSelected = true;
    if (isAddNewStreamValue) {
      widget.streamPos.add(pos);
    }
    setState(() {
      listButton = newList;
    });
  }

  @override
  void initState() {
    listButton = _generateListButton();
    listButton[0].isSelected = true;
    super.initState();
    widget.streamPos.stream.listen((pos) {
      if (pos == -1) {
        _onButtonClick(pos: 0, isAddNewStreamValue: false);
        scrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.ease);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: AttendanceDimens.attendanceMonthMarginLeft),
      child: SizedBox(
        width: MediaQuery.of(context).size.width.w,
        height: AttendanceDimens.attendanceMonthHeight.h,
        child: ListView.builder(
          controller: scrollController,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return listButton[index];
          },
          itemCount: listButton.length,
        ),
      ),
    );
  }
}
