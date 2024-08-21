import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/Leave_delete_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_action_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_statistic_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository_impl.dart';

import '../../common/error/app_error.dart';

part 'leave_event.dart';

part 'leave_state.dart';

class LeaveBloc extends Bloc<LeaveEvent, LeaveState> {
  LeaveBloc() : super(LeaveInitial()) {
    on<GetMyLeavesEvent>((event, emit) async {
      emit(LeaveLoading());
      await Future.wait([_leaveDataRepository.getMyLeaves(), _leaveDataRepository.getLeaveStatistic(), _leaveDataRepository.getLeaveManagers()]).then(
        (value) {
          var state = MyLeaveSuccess();
          value[0].when(
            success: (data) => state.myLeaveData = data as List<LeaveData>?,
            failure: (error) => state.myLeaveError = error,
          );
          value[1].when(
            success: (data) => state.leaveStatisticData = data as LeaveStatisticData?,
            failure: (error) => state.leaveStatisticError = error,
          );
          value[2].when(
            success: (data) => state.leaveManagerData = data as List<LeaveManagerData>?,
            failure: (error) => state.leaveManagerError = error,
          );
          emit(state);
        },
      );
    });
  }

  final LeaveDataRepository _leaveDataRepository = LeaveDataRepositoryImpl();
}

class LeaveActionBloc extends Bloc<LeaveEvent, LeaveActionState> {
  LeaveActionBloc() : super(LeaveManagerActionInitial()) {
    on<LeaveManagerActionEvent>((event, emit) async {
      emit(LeaveManagerActionLoading());
      await _leaveDataRepository.postManagerAction(event.request).then((value) => {
            value.when(
              success: (data) => emit(LeaveManagerActionSuccess()),
              failure: (error) => emit(LeaveManagerActionFailure(error)),
            )
          });
    });
  }

  final LeaveDataRepository _leaveDataRepository = LeaveDataRepositoryImpl();
}

