import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/common/model/result.dart';
import 'package:mobile_aris_management_tool/init/domain/models/init_response.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_local_data_source.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_remote_data_source.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_repository.dart';

class DefaultInitDataRepository implements InitDataRepository{

  const DefaultInitDataRepository( this.remoteDataSource, this.localDataSource);
  final InitDataRemoteDataSource remoteDataSource;
  final InitDataLocalDataSource localDataSource;

  Future<void> fetchData() async {
    var newInitData = await remoteDataSource.fetchData();
    await localDataSource.saveInit(newInitData);
  }

  @override
  Future<Result<InitData>> getInit({bool forceUpdate = false}) async {
    try{
      if(forceUpdate){
        await fetchData();
      }
      return Result.guardFuture(() async => await localDataSource.getInit());
    } on Exception catch (e){
      return Result.failure(error: AppError(e));
    }

  }

  @override
  Future<Result<InitDetailData>> getInitDetail({bool forceUpdate = false}) async {
    try{
      if(forceUpdate){
        await fetchData();
      }
      return Result.guardFuture(() async => await localDataSource.getInitDetail());
    } on Exception catch (e){
      return Result.failure(error: AppError(e));
    }
  }

}