import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/forgotPassword/bloc/forgot_password_data_event.dart';
import 'package:mobile_aris_management_tool/forgotPassword/bloc/forgot_password_data_state.dart';
import '../../common/error/app_error.dart';
import '../domain/repository/forgot_password_repository.dart';

class ForgotPasswordDataBloc
    extends Bloc<ForgotPasswordDataEvent, ForgotPasswordDataState> {
  ForgotPasswordDataBloc(
      {required ForgotPasswordDataRepository forgotPasswordDataRepository})
      : _forgotPasswordDataRepository = forgotPasswordDataRepository,
        super(const ForgotPasswordDataState.initial()) {
    on<ForgotPasswordEventRequest>(_onForgotPasswordDataEventRequest);
  }
  final ForgotPasswordDataRepository _forgotPasswordDataRepository;

  Future<void> _onForgotPasswordDataEventRequest(
    ForgotPasswordEventRequest event,
    Emitter<ForgotPasswordDataState> emit,
  ) async {
    emit(const ForgotPasswordDataState.loading());
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      await postRemoteForgotPasswordData(emit, event);
    } else {
      AppErrorType type = AppErrorType.network;
      APIException apiException = APIException(0, "not connect network");
      var error = AppError(apiException);
      error.type = type;
      emit(ForgotPasswordDataState.failure(error));
    }
  }

  Future<void> postRemoteForgotPasswordData(
      Emitter<ForgotPasswordDataState> emit,
      ForgotPasswordEventRequest event) async {
    await _forgotPasswordDataRepository
        .postForgotPasswordData(
            forceUpdate: true, email: event.email, password: event.password)
        .then((value) => {
              value.when(
                  success: (data) => {
                        if (data == 200)
                          {emit(const ForgotPasswordDataState.success())}
                      },
                  failure: (e) {
                    emit(ForgotPasswordDataState.failure(e));
                  })
            });
  }
}
