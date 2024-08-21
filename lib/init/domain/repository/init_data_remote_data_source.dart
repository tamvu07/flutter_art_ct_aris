import 'package:mobile_aris_management_tool/init/domain/models/init_response.dart';

abstract class InitDataRemoteDataSource {
  Future<InitDetailData> fetchData();
}