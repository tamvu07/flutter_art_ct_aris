import 'package:mobile_aris_management_tool/common/model/simple_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/Leave_delete_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_checking_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_action_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_statistic_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_remote_data_source.dart';
import 'package:mobile_aris_management_tool/common/client/api_paths.dart'
    as Constants;

import '../../../common/client/app_client.dart';
import '../../../common/error/app_error.dart';

class LeaveRemoteDataSourceImpl implements LeaveRemoteDataSource {
  @override
  Future<List<LeaveData>> getMyLeaves() async {
    var client = await AppClient.getInstance();
    var response = await client.get(Constants.myLeaves);
    var apiResponse = LeaveResponse.fromJson(response.data);
    if (apiResponse.data != null) {
      return apiResponse.data?.data ?? List.empty();
    } else {
      throw APIException(apiResponse.code!, apiResponse.msg!);
    }
  }

  @override
  Future<LeaveStatisticData> getLeaveStatistic() async {
    var client = await AppClient.getInstance();
    var response = await client.get(Constants.leaveStatistic);
    var apiResponse = LeaveStatisticResponse.fromJson(response.data);
    if (apiResponse.data != null) {
      return apiResponse.data!;
    } else {
      throw APIException(apiResponse.code!, apiResponse.msg!);
    }
  }

  @override
  Future<List<LeaveManagerData>> getLeaveManagers() async {
    var client = await AppClient.getInstance();
    var response = await client.get(Constants.leaveManager);
    var apiResponse = LeaveManagerResponse.fromJson(response.data);
    if (apiResponse.data != null) {
      return apiResponse.data?.data ?? List.empty();
    } else {
      throw APIException(apiResponse.code!, apiResponse.msg!);
    }
  }

  @override
  Future<SimpleResponse> postManagerAction(LeaveActionRequest request) async {
    var client = await AppClient.getInstance();
    var response =
        await client.post(Constants.leaveManagerAction, data: request);
    var apiResponse = SimpleResponse.fromJson(response.data);
    if (apiResponse.code?.toInt() == 200) {
      return apiResponse;
    } else {
      throw APIException(apiResponse.code!.toInt(), apiResponse.msg!);
    }
  }

  @override
  Future<LeaveCheckingResponseData> getCreateChecking() async {
    var client = await AppClient.getInstance();
    var response = await client.get(Constants.leaveCreateChecking);
    var apiResponse = LeaveCreateCheckingResponse.fromJson(response.data);
    if (apiResponse.data != null) {
      return apiResponse.data!;
    } else {
      throw APIException(apiResponse.code!.toInt(), apiResponse.msg!);
    }
  }

  @override
  Future<SimpleResponse> postCreateLeave(LeaveCreateRequest request) async {
    var client = await AppClient.getInstance();
    var response = await client.post(Constants.leaveCreateForm, data: request);
    var apiResponse = SimpleResponse.fromJson(response.data);
    if (apiResponse.code?.toInt() == 200) {
      return apiResponse;
    } else {
      throw APIException(apiResponse.code!.toInt(), apiResponse.msg!);
    }
  }

  @override
  Future<SimpleResponse> deleteLeave(LeaveDeleteRequest request) async {
    var client = await AppClient.getInstance();
    var response = await client.post(Constants.leaveDeleteForm, data: request);

    var apiResponse = SimpleResponse.fromJson(response.data);
    if (apiResponse.code?.toInt() == 200) {
      return apiResponse;
    } else {
      throw APIException(apiResponse.code!.toInt(), apiResponse.msg!);
    }
  }
}
