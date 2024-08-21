import 'package:dio/dio.dart';
import 'package:mobile_aris_management_tool/common/client/app_client.dart';
import 'package:mobile_aris_management_tool/common/client/api_paths.dart'
    as Constants;
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/login/domain/models/login_response.dart';
import 'package:mobile_aris_management_tool/login/domain/repository/login_remote_data_source.dart';
import '../../../common/client/app_client.dart';

class DefaultLoginRemoteDataSource implements LoginDataRemoteDataSource {
  @override
  Future<LoginData> login(
      {String username = "", String password = "", String fmc = ""}) async {
    var param = FormData.fromMap({
      'username': username,
      'password': password,
      'fmc': fmc,
    });
    var client = await AppClient.getInstance();
    var response = await client.post(Constants.login, data: param);
    var apiResponse = LoginResponse.fromJson(response.data);
    if (apiResponse.data != null) {
      return apiResponse.data!;
    } else {
      throw APIException(apiResponse.code!, apiResponse.msg!);
    }
  }
}
