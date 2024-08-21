import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/device/domain/model/device_response.dart';

abstract class DeviceRepository {
  Future<Result<List<Device>>> getDeviceListAll();
  Future<Result<List<Device>>> getDeviceListBorrowing();
}
