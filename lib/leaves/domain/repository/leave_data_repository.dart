import 'package:mobile_aris_management_tool/common/model/simple_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/Leave_delete_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_checking_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_action_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_statistic_response.dart';

import '../../../common/model/result.dart';

abstract class LeaveDataRepository {
  Future<Result<List<LeaveData>>> getMyLeaves();
  Future<Result<LeaveStatisticData>> getLeaveStatistic();
  Future<Result<List<LeaveManagerData>>> getLeaveManagers();
  Future<Result<SimpleResponse>> postManagerAction(LeaveActionRequest request);
  Future<Result<LeaveCheckingResponseData>> getCreateChecking();
  Future<Result<SimpleResponse>> postCreateForm(LeaveCreateRequest request);
  Future<Result<SimpleResponse>> deleteLeave(LeaveDeleteRequest request);
}