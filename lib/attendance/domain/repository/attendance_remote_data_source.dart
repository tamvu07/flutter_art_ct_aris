import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';

abstract class AttendanceRemoteDataSource {
  Future<List<AttendanceDetail>> fetchData();
  Future<List<AttendanceDetail>> getCurrentList();
}
