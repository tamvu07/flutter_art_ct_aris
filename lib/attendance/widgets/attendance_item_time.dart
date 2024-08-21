import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/attendance/attendance_const.dart';
import 'package:mobile_aris_management_tool/attendance/utilities/vertical_dashed_line_painter.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_item_inherited.dart';

class AttendanceItemTime extends StatelessWidget {
  const AttendanceItemTime({Key? key}) : super(key: key);

  TextStyle _getTextCheckInOutStyle({required bool isPassed}) {
    return TextStyle(
      color: isPassed ? AttendanceColors.itemAttendanceTxtPassedColor : AttendanceColors.itemAttendanceTxtFailedColor,
      fontSize: AttendanceDimens.itemAttendanceTxtTimeSize.sp,
      fontWeight: FontWeight.w400,
      decoration: TextDecoration.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10).r,
      padding: const EdgeInsets.only(left: 10, right: 10).r,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Wrap(
            children: [
              Row(
                children: [
                  Image.asset(
                    AttendanceImage.iconCheckIn,
                    width: AttendanceDimens.itemAttendanceIconCheckInSize.w,
                    height: AttendanceDimens.itemAttendanceIconCheckInSize.h,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5).r,
                    child: Text(
                      AttendanceItemInherited.of(context).detailData.checkIn ?? "",
                      style: _getTextCheckInOutStyle(isPassed: AttendanceItemInherited.of(context).detailData.isCheckInPass),
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomPaint(
            size: Size(1.r, 30.r),
            painter: VerticalDashedLinePainter(
              dashHeight: AttendanceDimens.itemAttendanceLineDashHeight.r,
              dashWidth: AttendanceDimens.itemAttendanceLineDashWidth.r,
              dashSpace: AttendanceDimens.itemAttendanceLineDashSpace.r,
              dashedColors: AttendanceColors.itemAttendanceDashColor,
            ),
          ),
          Wrap(
            children: [
              Row(
                children: [
                  Image.asset(
                    AttendanceImage.iconCheckOut,
                    width: AttendanceDimens.itemAttendanceIconCheckInSize.w,
                    height: AttendanceDimens.itemAttendanceIconCheckInSize.h,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5).r,
                    child: Text(
                      AttendanceItemInherited.of(context).detailData.checkOut ?? "",
                      style: _getTextCheckInOutStyle(isPassed: AttendanceItemInherited.of(context).detailData.isCheckOutPass),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
