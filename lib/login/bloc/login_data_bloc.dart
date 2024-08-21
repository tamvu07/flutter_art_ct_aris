import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_aris_management_tool/login/domain/repository/login_repository.dart';

import '../../common/error/app_error.dart';
import 'login_data_event.dart';
import 'login_data_state.dart';

class LoginDataBloc extends Bloc<LoginDataEvent, LoginDataState> {
  LoginDataBloc({required LoginDataRepository loginDataRepository})
      : _loginDataRepository = loginDataRepository,
        super(const LoginDataState.initial()) {
    on<LoginDataEventRequest>(_onLoginDataEventRequest);
  }

  final LoginDataRepository _loginDataRepository;

  Future<void> _onLoginDataEventRequest(
    LoginDataEventRequest event,
    Emitter<LoginDataState> emit,
  ) async {
    emit(const LoginDataState.loading());
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      await postRemoteLoginData(emit, event);
    } else {
      AppErrorType type = AppErrorType.network;
      APIException apiException = APIException(0, "not connect network");
      var error = AppError(apiException);
      error.type = type;
      emit(LoginDataState.failure(error));
    }
  }

  Future<void> postRemoteLoginData(
      Emitter<LoginDataState> emit, LoginDataEventRequest event) async {
    await _loginDataRepository
        .postLoginData(
            forceUpdate: true,
            username: event.usermane,
            password: event.password,
            fmc: event.fmc)
        .then((value) => {
              value.when(
                  success: (data) => {emit(LoginDataState.success(data!))},
                  failure: (e) {
                    emit(LoginDataState.failure(e));
                  })
            });
  }
}
