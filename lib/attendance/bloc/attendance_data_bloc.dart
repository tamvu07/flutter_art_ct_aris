import 'dart:developer' show log;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/attendance/bloc/attendance_data_event.dart';
import 'package:mobile_aris_management_tool/attendance/bloc/attendance_data_state.dart';
import 'package:mobile_aris_management_tool/attendance/domain/repository/attendance_repository.dart';

class AttendanceDataBloc extends Bloc<AttendanceDataEvent, AttendanceDataState> {
  AttendanceDataBloc({required AttendanceRepository attendanceRepo})
      : _attendanceRepo = attendanceRepo,
        super(const AttendanceDataState.initial()) {
    //on<AttendanceGetServerData>(_onGetServerData);
    on<AttendanceFilterByMonth>(_filterByMonth);
  }

  final AttendanceRepository _attendanceRepo;

  /*Future<void> _onGetServerData(AttendanceDataEvent event, Emitter<AttendanceDataState> emit) async {
    emit(const AttendanceDataState.loading());
    await _attendanceRepo.getListAttendance().then((value) => {
          value.when(
            success: (data) => {log(data.toString()), emit(AttendanceDataState.success(data: data))},
            failure: (e) => {log(e.toString()), emit(AttendanceDataState.failure(error: e))},
          )
        });
  }*/

  Future<void> _filterByMonth(AttendanceDataEvent event, Emitter<AttendanceDataState> emit) async {
    emit(const AttendanceDataState.loading());
    await _attendanceRepo.filterByPos((event as AttendanceFilterByMonth).selectedPos).then((value) => {
          value.when(
            success: (data) => {log(data.toString()), emit(AttendanceDataState.successFilter(listData: data))},
            failure: (error) => {log(error.toString()), emit(AttendanceDataState.failure(error: error))},
          )
        });
  }
}
