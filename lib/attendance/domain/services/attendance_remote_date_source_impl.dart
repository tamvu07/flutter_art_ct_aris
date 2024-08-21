import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_response.dart';
import 'package:mobile_aris_management_tool/attendance/domain/repository/attendance_remote_data_source.dart';
import 'package:mobile_aris_management_tool/common/client/api_paths.dart';
import 'package:mobile_aris_management_tool/common/client/app_client.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';

class AttendanceRemoteDataSourceImpl implements AttendanceRemoteDataSource {
  AttendanceResponse? _jsonRes;
  @override
  Future<List<AttendanceDetail>> fetchData() async {
    var client = await AppClient.getInstance();
    var response = await client.get(attendanceData);

    var jsonResponse = AttendanceResponse.fromJson(response.data);
    _jsonRes = jsonResponse;
    if (jsonResponse.data != null) {
      return jsonResponse.data?.listAttendanceDetail ?? List.empty();
    } else {
      throw APIException(jsonResponse.code!, jsonResponse.msg!);
    }
  }

  @override
  Future<List<AttendanceDetail>> getCurrentList() async {
    if (_jsonRes?.data?.listAttendanceDetail == null) {
      return await fetchData().then((listData) => listData);
    } else {
      return _jsonRes?.data?.listAttendanceDetail ?? List.empty();
    }
  }
}
