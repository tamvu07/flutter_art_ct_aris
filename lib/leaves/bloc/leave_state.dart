part of 'leave_bloc.dart';

abstract class LeaveState {}

class LeaveInitial extends LeaveState {}
class LeaveLoading extends LeaveState {}
class MyLeaveSuccess extends LeaveState {
  List<LeaveData>? myLeaveData;
  LeaveStatisticData? leaveStatisticData;
  List<LeaveManagerData>? leaveManagerData;
  AppError? myLeaveError;
  AppError? leaveStatisticError;
  AppError? leaveManagerError;
}


abstract class LeaveActionState {}
class LeaveManagerActionInitial extends LeaveActionState {}
class LeaveManagerActionLoading extends LeaveActionState {}
class LeaveManagerActionSuccess extends LeaveActionState {}
class LeaveManagerActionFailure extends LeaveActionState {
  AppError error;
  LeaveManagerActionFailure(this.error);
}

abstract class LeaveCreateState {}
class LeaveCreateInitial extends LeaveCreateState {}
class LeaveCreateLoading extends LeaveCreateState {}
class LeaveCreateSuccess extends LeaveCreateState {}
class LeaveCreateFailure extends LeaveCreateState {
  AppError error;
  LeaveCreateFailure(this.error);
}