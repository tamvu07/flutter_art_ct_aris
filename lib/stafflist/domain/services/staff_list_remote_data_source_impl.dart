import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/common/client/api_paths.dart' as Constants;
import 'package:mobile_aris_management_tool/common/client/app_client.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import '../repository/staff_list_remote_data_source.dart';

class DefaultStaffListRemoteDataSource implements StaffListDataRemoteDataSource {

  @override
  Future<StaffListData> fetchData() async {
    var client = await AppClient.getInstance();
    var response = await client.get(Constants.PATH_STAFF_LIST);

    var apiResponse = StaffListResponse.fromJson(response.data);
    if(apiResponse.data !=null){
      return apiResponse.data!;
    }else{
      throw APIException(apiResponse.code!, apiResponse.msg!);
    }
  }
}