
import 'package:dio/dio.dart';
import '../../../common/client/app_client.dart';
import '../../../common/error/app_error.dart';
import '../models/forgot_password_response.dart';
import '../repository/forgot_password_remote_data_source.dart';
import 'package:mobile_aris_management_tool/common/client/api_paths.dart'
    as Constants;

class DefaultForgotPasswordRemoteDataSource
    implements ForgotPasswordRemoteDataSource {
  @override
  Future<int> postForgotPassword(
      {String email = "", String password = ""}) async {
    var param = FormData.fromMap({
      'email': email,
      'password': password,
    });
    var client = await AppClient.getInstance();
    var response = await client.post(Constants.forgotPassword, data: param);
    var apiResponse = ForgotPasswordResponse.fromJson(response.data);
    if (apiResponse.code != 200) {
      throw APIException(apiResponse.code!, apiResponse.msg!);
    } else {
      return apiResponse.code ?? 0;
    }
  }
}
