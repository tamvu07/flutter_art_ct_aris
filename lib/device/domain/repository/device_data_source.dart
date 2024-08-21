import 'package:mobile_aris_management_tool/device/domain/model/device_response.dart';

abstract class DeviceRemoteDataSource {
  Future<List<Device>> getDeviceListAll();
  Future<List<Device>> getDeviceListBorrowing();
}
