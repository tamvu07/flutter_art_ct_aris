import 'package:equatable/equatable.dart';

abstract class AttendanceDataEvent extends Equatable {}

class AttendanceGetServerData extends AttendanceDataEvent {
  @override
  List<Object?> get props => [];
}

class AttendanceGetLocalData extends AttendanceDataEvent {
  @override
  List<Object?> get props => [];
}

class AttendanceFilterByMonth extends AttendanceDataEvent {
  final int selectedPos;
  AttendanceFilterByMonth({required this.selectedPos});

  @override
  List<Object?> get props => [];
}
