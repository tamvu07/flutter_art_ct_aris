import '../../../common/model/result.dart';

abstract class ForgotPasswordDataRepository {
  Future<Result<int>> postForgotPasswordData({
    bool forceUpdate = false,
    String email = "",
    String password = "",
  });
}
