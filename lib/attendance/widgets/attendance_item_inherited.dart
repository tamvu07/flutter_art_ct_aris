import 'package:flutter/widgets.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';

class AttendanceItemInherited extends InheritedWidget {
  const AttendanceItemInherited({super.key, required super.child, required this.detailData});
  final AttendanceDetail detailData;
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }

  static AttendanceItemInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AttendanceItemInherited>()!;
  }
}
