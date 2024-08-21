import 'package:equatable/equatable.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/init/domain/models/init_response.dart';

enum InitDataStatus { initial, loading, success, failure }

class InitDataState extends Equatable {
  const InitDataState._({
    this.status = InitDataStatus.initial,
    this.data,
    this.error
  });

  final InitDataStatus status;
  final InitDetailData? data;
  final AppError? error;

  @override
  List<Object?> get props => [
    status,
    data,
    error
  ];

  const InitDataState.initial() : this._();
  const InitDataState.loading() : this._(status: InitDataStatus.loading);
  const InitDataState.success(InitDetailData data) : this._(status: InitDataStatus.success, data: data);
  const InitDataState.failure(AppError error) : this._(status: InitDataStatus.failure, error: error);
}