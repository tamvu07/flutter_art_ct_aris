part of 'device_bloc.dart';

@immutable
abstract class DeviceState extends Equatable {
  const DeviceState();

  @override
  List<Object?> get props => [];
}

class DeviceInitial extends DeviceState {}

class DeviceLoading extends DeviceState {}

class DeviceGetListSuccess extends DeviceState {
  List<Device>? allDevices;
  List<Device>? borrowingDevices;
  AppError? allError;
  AppError? borrowingError;

  @override
  List<Object?> get props => [allDevices, borrowingDevices, allError, borrowingError];
}

class DeviceFailure extends DeviceState {
  final AppError error;

  const DeviceFailure(this.error);

  @override
  List<Object?> get props => [error];
}

class DeviceActionSuccess extends DeviceState {}

class DeviceCancelSuccess extends DeviceState {}
