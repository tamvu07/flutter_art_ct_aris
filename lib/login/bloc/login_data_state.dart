import 'package:equatable/equatable.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/login/domain/models/login_response.dart';

enum LoginDataStatus { initial, loading, success, failure }

class LoginDataState extends Equatable {
  final LoginDataStatus status;
  final LoginData? data;
  final AppError? error;

  @override
  List<Object?> get props => [status, data, error];

  const LoginDataState._({
    this.status = LoginDataStatus.initial,
    this.data,
    this.error,
  });

  const LoginDataState.initial() : this._();
  const LoginDataState.loading() : this._(status: LoginDataStatus.loading);
  const LoginDataState.success(LoginData data)
      : this._(status: LoginDataStatus.success, data: data);
  const LoginDataState.failure(AppError error)
      : this._(status: LoginDataStatus.failure, error: error);

  LoginDataState? get state => null;
}
