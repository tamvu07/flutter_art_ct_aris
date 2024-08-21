import 'package:mobile_aris_management_tool/login/domain/models/login_response.dart';

abstract class LoginDataLocalDataSource {
  Future<void> saveLoginData(LoginData data);
  Future<LoginData>? getLoginData();
}
