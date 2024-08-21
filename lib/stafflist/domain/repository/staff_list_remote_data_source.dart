import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';

abstract class StaffListDataRemoteDataSource {
  Future<StaffListData> fetchData();
}