import 'package:equatable/equatable.dart';

abstract class ForgotPasswordDataEvent extends Equatable {
  const ForgotPasswordDataEvent();

  @override
  List<Object?> get props => [];
}

class ForgotPasswordEventRequest extends ForgotPasswordDataEvent {
  final String email;
  final String password;
  const ForgotPasswordEventRequest(this.email, this.password);
}
