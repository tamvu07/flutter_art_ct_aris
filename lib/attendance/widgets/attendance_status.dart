import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../attendance_const.dart';

class AttendanceStatus extends StatelessWidget {
  const AttendanceStatus({Key? key}) : super(key: key);

  TextStyle getFirstStatusStyle() {
    return TextStyle(
      fontSize: AttendanceDimens.status1FontSize.sp,
      fontWeight: FontWeight.w700,
      color: Colors.white,
      decoration: TextDecoration.none,
    );
  }

  TextStyle getSecondStatusStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.italic,
      fontSize: AttendanceDimens.status2FontSize.sp,
      decoration: TextDecoration.none,
      overflow: TextOverflow.ellipsis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.only(
          top: AttendanceDimens.statusMarginVertical,
          bottom: AttendanceDimens.statusMarginVertical,
          right: AttendanceDimens.statusMarginHorizontal,
          left: AttendanceDimens.statusMarginHorizontal,
        ).r,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              "https://salt.tikicdn.com/ts/product/f7/c7/01/34607943cd054355466fbbb717448e5f.jpg",
              width: AttendanceDimens.icStatusSize.w,
              height: AttendanceDimens.icStatusSize.h,
              errorBuilder: (context, error, stackTrace) {
                log(error.toString());
                return Image.asset(
                  AttendanceImage.iconCheckIn,
                  width: AttendanceDimens.icStatusSize.w,
                  height: AttendanceDimens.icStatusSize.h,
                );
              },
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  left: AttendanceDimens.statusDetailMarginHorizontal,
                  right: AttendanceDimens.statusDetailMarginHorizontal,
                ).r,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.attendance_point_label,
                          style: getFirstStatusStyle(),
                        ),
                        Text(
                          AttendanceHardString.attendancePointValue,
                          style: getFirstStatusStyle(),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AttendanceHardString.status,
                        style: getSecondStatusStyle(),
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
