import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';

import '../../../common/model/result.dart';

abstract class AttendanceRepository {
  Future<Result<List<AttendanceDetail>>> getListAttendance();
  Future<Result<List<AttendanceDetail>>> filterByPos(int pos);
}
