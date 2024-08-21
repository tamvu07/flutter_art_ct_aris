import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_business_model.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/models/staff_list_response.dart';
import 'package:mobile_aris_management_tool/stafflist/domain/repository/staff_list_repository.dart';

import 'package:mobile_aris_management_tool/common/error/app_error.dart';

part 'staff_list_data_event.dart';

part 'staff_list_data_state.dart';

class StaffListDataBloc extends Bloc<StaffListDataEvent, StaffListDataState> {
  StaffListDataBloc({required StaffListDataRepository staffListDataRepository})
      : _staffListDataRepository = staffListDataRepository,
        super(const StaffListDataState.initial()) {
    on<StaffListDataEventRequest>(_onStaffListDataEventRequest);
    on<StaffListSearchEventRequest>(_onStaffListSearchDataEventRequest);
    on<StaffListFilterEventRequest>(_onStaffListFilterDataEventRequest);
    add(const StaffListDataEventRequest());
  }

  final StaffListDataRepository _staffListDataRepository;

  Future<void> _onStaffListDataEventRequest(
    StaffListDataEventRequest event,
    Emitter<StaffListDataState> emit,
  ) async {
    emit(const StaffListDataState.loading());
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      // I am connected to a mobile network.
      await getRemoteStaffListData(emit);
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a wifi network.
      await getRemoteStaffListData(emit);
    } else {
      await getLocalStaffListData(emit);
    }
  }

  Future<void> _onStaffListSearchDataEventRequest(StaffListSearchEventRequest event, Emitter<StaffListDataState> emit) async {
    emit(const StaffListDataState.loading());
    await _staffListDataRepository.getStaffListDetailData(query: event.searchString).then((value) => {
          value.when(
            success: (data) => emit(StaffListDataState.success(data)),
            failure: (error) => emit(StaffListDataState.failure(error)),
          )
        });
  }

  Future<void> _onStaffListFilterDataEventRequest(StaffListFilterEventRequest event, Emitter<StaffListDataState> emit) async {
    emit(const StaffListDataState.loading());
    await _staffListDataRepository.getStaffListDetailDataWithFilter(filterModel: event.filterModel).then((value) => {
          value.when(
            success: (data) => emit(StaffListDataState.success(data)),
            failure: (error) => emit(StaffListDataState.failure(error)),
          )
        });
  }

  Future<void> getLocalStaffListData(Emitter<StaffListDataState> emit) async {
    await _staffListDataRepository.getStaffListDetailData().then((value) => {
          value.when(
            success: (data) => {emit(StaffListDataState.success(data))},
            failure: (e) {
              emit(StaffListDataState.failure(e));
              print(e.exception);
            },
          )
        });
  }

  Future<void> getRemoteStaffListData(Emitter<StaffListDataState> emit) async {
    await _staffListDataRepository.getStaffListDetailData(forceUpdate: true).then((value) => {
          value.when(
            success: (data) => {emit(StaffListDataState.success(data))},
            failure: (e) {
              emit(StaffListDataState.failure(e));
              print(e.exception);
            },
          )
        });
  }
}
