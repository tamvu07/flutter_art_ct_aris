import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/device/domain/model/device_response.dart';
import 'package:mobile_aris_management_tool/device/domain/repository/device_data_source.dart';
import 'package:mobile_aris_management_tool/device/domain/repository/device_repository.dart';
import 'package:mobile_aris_management_tool/device/domain/services/device_data_source_impl.dart';

class DeviceRepositoryImpl implements DeviceRepository {
  final DeviceRemoteDataSource remoteDataSource = DeviceRemoteDataSourceImpl();

  @override
  Future<Result<List<Device>>> getDeviceListAll() async {
    try {
      return Result.guardFuture(
          () async => await remoteDataSource.getDeviceListAll());
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  @override
  Future<Result<List<Device>>> getDeviceListBorrowing() async {
    try {
      return Result.guardFuture(
          () async => await remoteDataSource.getDeviceListBorrowing());
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }
}
