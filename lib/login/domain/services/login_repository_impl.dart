

import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/login/domain/models/login_response.dart';
import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/login/domain/repository/login_repository.dart';
import 'login_local_data_source_impl.dart';
import 'login_remote_data_source_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DefaultLoginRepository implements LoginDataRepository {
  const DefaultLoginRepository(this.remoteDataSource, this.localDataSource);

  final DefaultLoginRemoteDataSource remoteDataSource;
  final DefaultLoginLocalDataSource localDataSource;

  @override
  Future<Result<LoginData?>> postLoginData(
      {bool forceUpdate = false,
      String username = "",
      String password = "",
      String fmc = ""}) async {
    try {
      var loginData = await remoteDataSource.login(
          username: username, password: password, fmc: fmc);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', loginData.token ?? "");
      await localDataSource.saveLoginData(loginData);
      return Result.guardFuture(
          () async => await localDataSource.getLoginData());
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
    // throw UnimplementedError();
  }
}
