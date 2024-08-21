import 'package:mobile_aris_management_tool/common/client/api_paths.dart'
    as Constants;
import 'package:mobile_aris_management_tool/common/client/app_client.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/init/domain/models/init_response.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_remote_data_source.dart';

class DefaultInitDataRemoteDataSource implements InitDataRemoteDataSource {
  @override
  Future<InitDetailData> fetchData() async {
    var client = await AppClient.getInstance();
    var response = await client.get(Constants.PATH_INIT);
    var apiResponse = InitAPIResponse.fromJson(response.data);
    if (apiResponse.data != null) {
      return apiResponse.data!;
    } else {
      throw APIException(apiResponse.code, apiResponse.msg);
    }
  }
}
