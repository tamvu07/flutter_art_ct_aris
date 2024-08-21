import 'package:mobile_aris_management_tool/login/domain/models/login_response.dart';
import '../../../common/model/result.dart';

abstract class LoginDataRepository {
  Future<Result<LoginData?>> postLoginData(
      {bool forceUpdate = false,
      String username = "",
      String password = "",
      String fmc = ""});
}
