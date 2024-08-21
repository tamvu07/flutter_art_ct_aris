import '../models/login_response.dart';

abstract class LoginDataRemoteDataSource {
  Future<LoginData> login(
      {String username = "", String password = "", String fmc = ""});
}
