import 'package:mobile_aris_management_tool/common/model/simple_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/Leave_delete_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_checking_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_action_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_statistic_response.dart';

import '../models/leave_create_request.dart';

abstract class LeaveRemoteDataSource {
  Future<List<LeaveData>> getMyLeaves();
  Future<LeaveStatisticData> getLeaveStatistic();
  Future<List<LeaveManagerData>> getLeaveManagers();
  Future<SimpleResponse> postManagerAction(LeaveActionRequest request);
  Future<LeaveCheckingResponseData> getCreateChecking();
  Future<SimpleResponse> postCreateLeave(LeaveCreateRequest request);
  Future<SimpleResponse> deleteLeave(LeaveDeleteRequest request);
}