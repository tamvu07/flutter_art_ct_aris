import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_business_model.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/repository/staff_list_repository.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/services/staff_list_local_data_source_impl.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/services/staff_list_remote_data_source_impl.dart';

import '../../../common/error/app_error.dart';

class DefaultStaffListRepository implements StaffListDataRepository {
  const DefaultStaffListRepository(this.remoteDataSource, this.localDataSource);

  final DefaultStaffListRemoteDataSource remoteDataSource;
  final DefaultStaffListLocalDataSource localDataSource;

  Future<void> fetchData() async {
    var newStaffListData = await remoteDataSource.fetchData();
    await localDataSource.saveStaffListData(newStaffListData);
  }

  @override
  Future<Result<List<EmployeeData>>> getStaffListDetailData({bool forceUpdate = false, String query = ""}) async {
    try {
      if (forceUpdate) {
        await fetchData();
      }
      if (query.isEmpty) {
        return Result.guardFuture(() async => await localDataSource.getStaffListDetail());
      } else {
        return Result.guardFuture(() async => await localDataSource.getStaffListDetailQuery(query));
      }
    } on Exception catch (e) {
      print(e.toString());
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<List<EmployeeData>>> getStaffListDetailDataWithFilter({required StaffFilterModel filterModel}) {
    return Result.guardFuture(() async => await localDataSource.getStaffListDetailFilter(filterModel));
  }

  @override
  List<Departments> getStaffListDepartments() {
    return localDataSource.getStaffListDepartments();
  }
}
