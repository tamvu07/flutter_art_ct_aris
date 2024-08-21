import 'package:equatable/equatable.dart';

abstract class LoginDataEvent extends Equatable {
  const LoginDataEvent();

  @override
  List<Object?> get props => [];
}

class LoginDataEventRequest extends LoginDataEvent {
  final String usermane;
  final String password;
  final String fmc;
  const LoginDataEventRequest(this.usermane, this.password, this.fmc);
}
