
import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/init/domain/models/init_response.dart';

abstract class InitDataRepository {
  Future<Result<InitDetailData>> getInitDetail({bool forceUpdate = false});
  Future<Result<InitData>> getInit({bool forceUpdate = false});
}