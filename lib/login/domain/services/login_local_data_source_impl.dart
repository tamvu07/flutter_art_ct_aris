import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/login/domain/models/login_response.dart';
import 'package:mobile_aris_management_tool/login/domain/repository/login_local_data_source.dart';

class DefaultLoginLocalDataSource implements LoginDataLocalDataSource {
  @override
  Future<LoginData>? getLoginData() async {
    var data = Hive.box("loginData").get("loginDataLocal");
    if (data == null) {
      return LoginData();
    } else {
      return (Hive.box("loginData").get("loginDataLocal"));
    }
  }

  @override
  Future<void> saveLoginData(LoginData data) async {
    final loginData = Hive.box("loginData");
    loginData.put("loginDataLocal", data);
  }
}
