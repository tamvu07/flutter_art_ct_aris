import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/common/model/result.dart';

import '../repository/forgot_password_repository.dart';
import 'forgot_password_remote_data_source_impl.dart';

class DefaultForgotPasswordRepository implements ForgotPasswordDataRepository {
  const DefaultForgotPasswordRepository(this.remoteDataSource);

  final DefaultForgotPasswordRemoteDataSource remoteDataSource;

  @override
  Future<Result<int>> postForgotPasswordData(
      {bool forceUpdate = false,
      String email = "",
      String password = ""}) async {
    try {
      var code = await remoteDataSource.postForgotPassword(
          email: email, password: password);
      return Result.guardFuture(() async => code);
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }
}
