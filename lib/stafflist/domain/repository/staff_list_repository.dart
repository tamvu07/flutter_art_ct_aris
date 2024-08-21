
import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_business_model.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';

abstract class StaffListDataRepository {
  Future<Result<List<EmployeeData>>> getStaffListDetailData({bool forceUpdate = false, String query = ""});
  Future<Result<List<EmployeeData>>> getStaffListDetailDataWithFilter({required StaffFilterModel filterModel});
  List<Departments> getStaffListDepartments();
}