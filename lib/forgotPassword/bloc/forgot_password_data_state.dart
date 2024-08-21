import 'package:equatable/equatable.dart';

import '../../common/error/app_error.dart';

enum ForgotPasswordDataStatus { initial, loading, success, failure }

class ForgotPasswordDataState extends Equatable {
  final ForgotPasswordDataStatus status;
  final AppError? error;

  @override
  List<Object?> get props => [status, error];

  const ForgotPasswordDataState._({
    this.status = ForgotPasswordDataStatus.initial,
    this.error,
  });
  const ForgotPasswordDataState.initial() : this._();
  const ForgotPasswordDataState.loading()
      : this._(status: ForgotPasswordDataStatus.loading);
  const ForgotPasswordDataState.success()
      : this._(status: ForgotPasswordDataStatus.success);
  const ForgotPasswordDataState.failure(AppError error)
      : this._(status: ForgotPasswordDataStatus.failure, error: error);
}
