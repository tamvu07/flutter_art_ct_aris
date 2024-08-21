import 'dart:developer' show log;

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../attendance_const.dart';

class AttendanceAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AttendanceAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight((56.0).h);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(
          top: AttendanceDimens.appbarMarginVertical,
          bottom: AttendanceDimens.appbarMarginVertical,
          right: AttendanceDimens.appbarMarginHorizontal,
          left: AttendanceDimens.appbarMarginHorizontal,
        ).r,
        color: Colors.black,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Text(
                AppLocalizations.of(context)!.menu_attendance_title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: AttendanceDimens.appbarTxtTileSize.sp,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2).r,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8).r,
                child: SizedBox(
                  child: Image.network(
                    "https://salt.tikicdn.com/ts/product/f7/c7/01/34607943cd054355466fbbb717448e5f.jpg",
                    width: AttendanceDimens.appbarAvatarSize.w,
                    height: AttendanceDimens.appbarAvatarSize.h,
                    errorBuilder: (context, error, stackTrace) {
                      log(error.toString());
                      return Image.asset(
                        AttendanceImage.iconCheckIn,
                        width: AttendanceDimens.appbarAvatarSize.w,
                        height: AttendanceDimens.appbarAvatarSize.h,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
