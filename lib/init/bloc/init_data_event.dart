import 'package:equatable/equatable.dart';

abstract class InitDataEvent extends Equatable {
  const InitDataEvent();

  @override
  List<Object> get props => [];
}

class InitDataEventRequest extends InitDataEvent {
  const InitDataEventRequest();
}
