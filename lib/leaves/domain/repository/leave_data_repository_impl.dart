
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/common/model/simple_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/Leave_delete_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_checking_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_create_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_action_request.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_statistic_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_data_repository.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_remote_data_source.dart';
import 'package:mobile_aris_management_tool/leaves/domain/repository/leave_remote_data_source_impl.dart';

class LeaveDataRepositoryImpl implements LeaveDataRepository {

  final LeaveRemoteDataSource _remoteDataSource = LeaveRemoteDataSourceImpl();

  @override
  Future<Result<List<LeaveData>>> getMyLeaves() async {
    try {
      return Result.guardFuture(() async => await _remoteDataSource.getMyLeaves());
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<LeaveStatisticData>> getLeaveStatistic() async {
    try {
      return Result.guardFuture(() async => await _remoteDataSource.getLeaveStatistic());
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<List<LeaveManagerData>>> getLeaveManagers() async {
    try {
      return Result.guardFuture(() async => await _remoteDataSource.getLeaveManagers());
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<SimpleResponse>> postManagerAction(LeaveActionRequest request) async {
    try {
      return Result.guardFuture(() async => await _remoteDataSource.postManagerAction(request));
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<LeaveCheckingResponseData>> getCreateChecking() async {
    try {
      return Result.guardFuture(() async => await _remoteDataSource.getCreateChecking());
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<SimpleResponse>> postCreateForm(LeaveCreateRequest request) async {
    try {
      return Result.guardFuture(() async => await _remoteDataSource.postCreateLeave(request));
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<SimpleResponse>> deleteLeave(LeaveDeleteRequest request) async {
    try {
      return Result.guardFuture(() async => await _remoteDataSource.deleteLeave(request));
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }
}