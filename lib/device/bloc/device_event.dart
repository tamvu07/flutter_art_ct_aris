part of 'device_bloc.dart';

abstract class DeviceEvent extends Equatable {
  const DeviceEvent();

  @override
  List<Object> get props => [];
}

class DeviceListRequested extends DeviceEvent {}

class DeviceListSearched extends DeviceEvent {
  const DeviceListSearched(this.keyword);

  final String keyword;

  @override
  List<Object> get props => [keyword];
}

class DeviceListFiltered extends DeviceEvent {
  const DeviceListFiltered(this.brand, this.screenSize, this.status);

  final String brand;
  final String screenSize;
  final String status;

  @override
  List<Object> get props => [brand, screenSize, status];
}

class DeviceActionPressed extends DeviceEvent {
  const DeviceActionPressed(this.id, this.type);

  final int id;
  final String type;

  @override
  List<Object> get props => [id, type];
}

class DeviceCancelPressed extends DeviceEvent {
  const DeviceCancelPressed(this.id, this.type);

  final int id;
  final String type;

  @override
  List<Object> get props => [id, type];
}
