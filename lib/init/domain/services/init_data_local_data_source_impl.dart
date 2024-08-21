
import 'package:mobile_aris_management_tool/init/domain/models/init_response.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_local_data_source.dart';


class DefaultInitDataLocalDataSource implements InitDataLocalDataSource {
  @override
  Future<InitData> getInit() async {
    throw UnimplementedError();
  }

  @override
  Future<void> saveInit(InitDetailData data) async {
    throw Exception("Not implemented");
  }

  @override
  Future<InitDetailData> getInitDetail() async{
    throw UnimplementedError();
  }
}