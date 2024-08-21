import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/device/domain/model/device_response.dart';
import 'package:mobile_aris_management_tool/device/domain/repository/device_repository.dart';
import 'package:mobile_aris_management_tool/device/domain/services/device_repository_impl.dart';

part 'device_event.dart';
part 'device_state.dart';

class DeviceBloc extends Bloc<DeviceEvent, DeviceState> {
  DeviceBloc() : super(DeviceInitial()) {
    on<DeviceListRequested>(_onDeviceListAllRequest);
  }

  final DeviceRepository _deviceRepository = DeviceRepositoryImpl();

  Future<void> _onDeviceListAllRequest(
    DeviceListRequested event,
    Emitter<DeviceState> emit,
  ) async {
    emit(DeviceLoading());
    await Future.wait(
            [_deviceRepository.getDeviceListAll(), _deviceRepository.getDeviceListBorrowing()])
        .then((value) {
      var state = DeviceGetListSuccess();
      value[0].when(
        success: (data) => state.allDevices = data,
        failure: (error) => state.allError = error,
      );
      value[1].when(
        success: (data) => state.borrowingDevices = data,
        failure: (error) => state.borrowingError = error,
      );
      emit(state);
    });
  }
}
