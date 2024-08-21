import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';

abstract class AttendanceLocalDataSource {
  Future<void> insertAttendanceDetail({required List<AttendanceDetail> listData});
}