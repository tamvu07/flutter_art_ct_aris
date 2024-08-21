

abstract class ForgotPasswordRemoteDataSource {
  Future<int> postForgotPassword({String email = "", String password = ""});
}
