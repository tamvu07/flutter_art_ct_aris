
import 'package:mobile_aris_management_tool/init/domain/models/init_response.dart';

abstract class InitDataLocalDataSource {
  Future<InitData> getInit();
  Future<InitDetailData> getInitDetail();
  Future<void> saveInit(InitDetailData data);
}