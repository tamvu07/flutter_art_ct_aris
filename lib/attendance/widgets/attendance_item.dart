import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_aris_management_tool/attendance/attendance_const.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_item_inherited.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_item_time.dart';
import 'package:mobile_aris_management_tool/attendance/widgets/attendance_item_type_status.dart';

class ItemAttendance extends StatelessWidget {
  const ItemAttendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: AttendanceDimens.itemAttendancePaddingVertical,
        bottom: AttendanceDimens.itemAttendancePaddingVertical,
        left: AttendanceDimens.itemAttendancePaddingLeft,
        right: AttendanceDimens.itemAttendancePaddingRight,
      ).r,
      margin: const EdgeInsets.only(
        top: 5,
        left: AttendanceDimens.itemAttendanceMarginHorizontal,
        right: AttendanceDimens.itemAttendanceMarginHorizontal,
      ).r,
      child: Column(
        children: const [
          AttendanceDateWithStatus(),
          AttendanceItemTime(),
        ],
      ),
    );
  }
}

class AttendanceDateWithStatus extends StatelessWidget {
  const AttendanceDateWithStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          AttendanceItemInherited.of(context).detailData.attendanceDay ?? "",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: AttendanceDimens.itemAttendanceDateTxtSize.sp,
            decoration: TextDecoration.none,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Visibility(
                  visible: AttendanceItemInherited.of(context).detailData.typeComeLate != 0,
                  child: AttendanceItemStatusType(isPassed: false, txtType: AppLocalizations.of(context)!.attendance_status_comme_late),
                ),
                Visibility(
                  visible: AttendanceItemInherited.of(context).detailData.typeNoCheckIn != 0,
                  child: AttendanceItemStatusType(isPassed: false, txtType: AppLocalizations.of(context)!.attendance_status_no_check_in),
                ),
                Visibility(
                  visible: AttendanceItemInherited.of(context).detailData.typeNoCheckOut != 0,
                  child: AttendanceItemStatusType(isPassed: false, txtType: AppLocalizations.of(context)!.attendance_status_no_check_out),
                ),
                Visibility(
                  visible: AttendanceItemInherited.of(context).detailData.typeLeaveEarly != 0,
                  child: AttendanceItemStatusType(isPassed: false, txtType: AppLocalizations.of(context)!.attendance_status_leave_early),
                ),
                Visibility(
                  visible: AttendanceItemInherited.of(context).detailData.typePass != 0,
                  child: AttendanceItemStatusType(isPassed: true, txtType: AppLocalizations.of(context)!.attendance_status_pass),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
