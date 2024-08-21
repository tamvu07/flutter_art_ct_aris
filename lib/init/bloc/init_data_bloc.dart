import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/init/bloc/init_data_event.dart';
import 'package:mobile_aris_management_tool/init/bloc/init_data_state.dart';
import 'package:mobile_aris_management_tool/init/domain/repository/init_data_repository.dart';

class InitDataBloc extends Bloc<InitDataEvent, InitDataState> {
  InitDataBloc({
    required InitDataRepository initRepository,
  })  : _initRepository = initRepository,
        super(const InitDataState.initial()) {
    on<InitDataEventRequest>(_onInitDataEventRequest);
  }

  final InitDataRepository _initRepository;

  Future<void> _onInitDataEventRequest(
    InitDataEventRequest event,
    Emitter<InitDataState> emit,
  ) async {
    emit(const InitDataState.loading());
    await _initRepository.getInitDetail(forceUpdate: true).then((value) => {
          value.when(
            success: (data) => emit(InitDataState.success(data)),
            failure: (e) => emit(InitDataState.failure(e)),
          )
        });
  }
}
