
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_business_model.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';

abstract class StaffListDataLocalDataSource {
  Future<List<EmployeeData>> getStaffListDetail();
  Future<List<EmployeeData>> getStaffListDetailQuery(String query);
  Future<List<EmployeeData>> getStaffListDetailFilter(StaffFilterModel filterModel);
  Future<void> saveStaffListData(StaffListData data);
  List<Departments> getStaffListDepartments();
}