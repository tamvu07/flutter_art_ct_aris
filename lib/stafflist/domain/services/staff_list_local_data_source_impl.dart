import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_business_model.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/repository/staff_list_local_data_source.dart';

class DefaultStaffListLocalDataSource implements StaffListDataLocalDataSource {
  List<EmployeeData> employees = [];

  @override
  Future<List<EmployeeData>> getStaffListDetail() async {
    // var data = Hive.box("staffList").get("staffList");
    // if (data == null) {
    //   return [];
    // } else {
    //   print("staffLst: ${(Hive.box("staffList").get("staffList") as StaffListData).toJson()}");
    //   return (Hive.box("staffList").get("staffList") as StaffListData).employeeData ?? [];
    // }
    return employees;
  }

  @override
  Future<void> saveStaffListData(StaffListData data) async {
    // final staffListBox = Hive.box("staffList");
    // staffListBox.put("staffList", data);
    employees.clear();
    employees.addAll(data.employeeData ?? []);
  }

  @override
  Future<List<EmployeeData>> getStaffListDetailQuery(String query) async {
    // var data = Hive.box("staffList").get("staffList");
    // if (data == null) {
    //   return [];
    // } else {
    //   var staffListData = (Hive.box("staffList").get("staffList") as StaffListData);
    //   var result = staffListData.employeeData
    //       ?.where((element) => element.employeeProfiles?.fullname?.contains(RegExp(query, caseSensitive: false)) == true)
    //       .toList();
    //   return result ?? [];
    // }
    var result = employees.where((element) => element.employeeProfiles?.fullname?.contains(RegExp(query, caseSensitive: false)) == true).toList();
    return result;
  }

  @override
  Future<List<EmployeeData>> getStaffListDetailFilter(StaffFilterModel filterModel) async {
    // var data = Hive.box("staffList").get("staffList");
    // if (data == null) {
    //   return [];
    // } else {
    //   var result = (Hive.box("staffList").get("staffList") as StaffListData).employeeData;
    //   if (filterModel.departmentId != -1 && filterModel.gender != -1) {
    //     result = result?.where((element) => element.employeeProfiles?.gender == filterModel.gender).toList();
    //     result = result
    //         ?.where(
    //           (element) =>
    //               element.departments
    //                   ?.map((e) => e.id)
    //                   .where(
    //                     (element) => element == filterModel.departmentId,
    //                   )
    //                   .toList()
    //                   .isNotEmpty ==
    //               true,
    //         )
    //         .toList();
    //     return result ?? [];
    //   }
    //   if (filterModel.gender != -1) {
    //     result = result?.where((element) => element.employeeProfiles?.gender == filterModel.gender).toList();
    //     return result ?? [];
    //   }
    //   if (filterModel.departmentId != -1) {
    //     result = result
    //         ?.where(
    //           (element) =>
    //               element.departments
    //                   ?.map((e) => e.id)
    //                   .where(
    //                     (element) => element == filterModel.departmentId,
    //                   )
    //                   .toList()
    //                   .isNotEmpty ==
    //               true,
    //         )
    //         .toList();
    //     return result ?? [];
    //   }
    //   return result ?? [];
    // }
    List<EmployeeData> result = [];
    if (filterModel.departmentId != -1 && filterModel.gender != -1) {
      result = employees.where((element) => element.employeeProfiles?.gender == filterModel.gender).toList();
      result = result
          .where(
            (element) =>
                element.departments
                    ?.map((e) => e.id)
                    .where(
                      (element) => element == filterModel.departmentId,
                    )
                    .toList()
                    .isNotEmpty ==
                true,
          )
          .toList();
      return result;
    }
    if (filterModel.gender != -1) {
      result = employees.where((element) => element.employeeProfiles?.gender == filterModel.gender).toList();
      return result;
    }
    if (filterModel.departmentId != -1) {
      result = employees
          .where(
            (element) =>
                element.departments
                    ?.map((e) => e.id)
                    .where(
                      (element) => element == filterModel.departmentId,
                    )
                    .toList()
                    .isNotEmpty ==
                true,
          )
          .toList();
      return result;
    }
    return employees;
  }

  @override
  List<Departments> getStaffListDepartments() {
    // var data = Hive.box("staffList").get("staffList");
    // if (data == null) {
    //   return [];
    // } else {
    //   var staffListData = (Hive.box("staffList").get("staffList") as StaffListData);
    //   List<Departments> listDepartment = [];
    //   var idSet = <String>{};
    //   List<Departments> distinctListDepartment = [];
    //   staffListData.employeeData?.forEach(
    //     (employee) {
    //       employee.departments?.forEach(
    //         (department) {
    //           listDepartment.add(department);
    //         },
    //       );
    //     },
    //   );
    //   for (var element in listDepartment) {
    //     if (idSet.add(element.id.toString())) {
    //       distinctListDepartment.add(element);
    //     }
    //   }
    //   return distinctListDepartment;
    // }
    List<Departments> listDepartment = [];
    var idSet = <String>{};
    List<Departments> distinctListDepartment = [];
    for (var employee in employees) {
      employee.departments?.forEach(
        (department) {
          listDepartment.add(department);
        },
      );
    }
    for (var element in listDepartment) {
      if (idSet.add(element.id.toString())) {
        distinctListDepartment.add(element);
      }
    }
    return distinctListDepartment;
  }
}
