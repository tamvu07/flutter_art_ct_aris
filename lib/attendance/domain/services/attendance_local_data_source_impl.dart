import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';
import 'package:mobile_aris_management_tool/attendance/domain/repository/attendance_local_data_source.dart';

class AttendanceLocalDataSourceImpl implements AttendanceLocalDataSource {
  @override
  Future<void> insertAttendanceDetail({required List<AttendanceDetail> listData}) async {
    var box = await Hive.openBox(AttendanceDetail().getClassName());
    for (var obj in listData) {
      await box.add(obj);
    }
  }
}
