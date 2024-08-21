import 'package:mobile_aris_management_tool/common/client/app_client.dart';
import 'package:mobile_aris_management_tool/common/client/api_paths.dart'
    as constants;
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/device/domain/model/device_response.dart';
import 'package:mobile_aris_management_tool/device/domain/repository/device_data_source.dart';

class DeviceRemoteDataSourceImpl implements DeviceRemoteDataSource {
  @override
  Future<List<Device>> getDeviceListAll() async {
    var client = await AppClient.getInstance();
    var response = await client.get(constants.deviceListAll);
    var apiResponse = DeviceListResponse.fromJson(response.data);
    if (apiResponse.data?.data != null) {
      return apiResponse.data!.data!;
    } else {
      throw APIException(apiResponse.code ?? 0, apiResponse.msg ?? '');
    }
  }

  @override
  Future<List<Device>> getDeviceListBorrowing() async {
    var client = await AppClient.getInstance();
    var response = await client.get(constants.deviceListBorrowing);
    var apiResponse = DeviceListResponse.fromJson(response.data);
    if (apiResponse.data?.data != null) {
      return apiResponse.data!.data!;
    } else {
      throw APIException(apiResponse.code ?? 0, apiResponse.msg ?? '');
    }
  }
}
