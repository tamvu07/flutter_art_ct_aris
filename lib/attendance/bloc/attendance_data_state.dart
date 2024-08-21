import 'package:equatable/equatable.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_data.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';

enum AttendanceDataStatus { initial, loading, success, failure, successFilter }

class AttendanceDataState extends Equatable {
  const AttendanceDataState._({this.status = AttendanceDataStatus.initial, this.data, this.error, this.listData});

  final AttendanceDataStatus status;
  final AttendanceData? data;
  final AppError? error;
  final List<AttendanceDetail>? listData;

  @override
  List<Object?> get props => [status, data, error, listData];

  const AttendanceDataState.initial() : this._();

  const AttendanceDataState.loading() : this._(status: AttendanceDataStatus.loading);

  const AttendanceDataState.success({required AttendanceData? data}) : this._(status: AttendanceDataStatus.success, data: data);

  const AttendanceDataState.failure({required AppError error}) : this._(status: AttendanceDataStatus.failure, error: error);

  const AttendanceDataState.successFilter({required List<AttendanceDetail> listData}) : this._(status: AttendanceDataStatus.successFilter, listData: listData);
}
