import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/attendance/attendance_const.dart';

class AttendanceItemStatusType extends StatelessWidget {
  final String txtType;
  final bool isPassed;
  const AttendanceItemStatusType({Key? key, required this.txtType, required this.isPassed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 97.w,
      height: 23.h,
      padding: const EdgeInsets.only(
        left: AttendanceDimens.itemAttendanceStatusTypeMarginHorizontal,
        right: AttendanceDimens.itemAttendanceStatusTypeMarginHorizontal,
        top: AttendanceDimens.itemAttendanceStatusTypeMarginVertical,
        bottom: AttendanceDimens.itemAttendanceStatusTypeMarginVertical,
      ).r,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)).r,
        color: isPassed ? AttendanceColors.itemAttendanceBgPassedStatus : AttendanceColors.itemAttendanceBgFailedStatus,
      ),
      child: Center(
        child: Text(
          txtType,
          style: TextStyle(
            color: isPassed ? AttendanceColors.itemAttendanceTxtPassedStatus : AttendanceColors.itemAttendanceTxtFailedStatus,
            fontSize: AttendanceDimens.itemAttendanceStatusTxtSize.sp,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
