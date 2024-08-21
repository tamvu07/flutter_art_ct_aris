part of 'staff_list_data_bloc.dart';

enum StaffListDataStatus { initial, loading, success, failure }

class StaffListDataState extends Equatable {
  @override
  List<Object?> get props => [status, data, error];

  const StaffListDataState._(
      {this.status = StaffListDataStatus.initial, this.data, this.error});

  final StaffListDataStatus status;
  final List<EmployeeData>? data;
  final AppError? error;

  const StaffListDataState.initial() : this._();
  const StaffListDataState.loading() : this._(status: StaffListDataStatus.loading);
  const StaffListDataState.success(List<EmployeeData> data) : this._(status: StaffListDataStatus.success, data: data);
  const StaffListDataState.failure(AppError error) : this._(status: StaffListDataStatus.failure, error: error);
}
