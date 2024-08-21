part of 'leave_bloc.dart';

abstract class LeaveEvent {}
class GetMyLeavesEvent extends LeaveEvent {}
class LeaveManagerActionEvent extends LeaveEvent {
  LeaveActionRequest request;
  LeaveManagerActionEvent(this.request);
}
class LeaveCreateEvent extends LeaveEvent {
  LeaveCreateRequest request;
  LeaveCreateEvent(this.request);
}
class LeaveDeleteEvent extends LeaveEvent {
  LeaveDeleteRequest request;
  LeaveDeleteEvent(this.request);
}