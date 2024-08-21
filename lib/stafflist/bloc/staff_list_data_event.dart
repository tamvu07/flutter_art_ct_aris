part of 'staff_list_data_bloc.dart';

abstract class StaffListDataEvent extends Equatable {
  const StaffListDataEvent();

  @override
  List<Object?> get props => [];
}

class StaffListDataEventRequest extends StaffListDataEvent {
  const StaffListDataEventRequest();
}

class StaffListSearchEventRequest extends StaffListDataEvent {
  final String searchString;

  const StaffListSearchEventRequest(this.searchString);
}

class StaffListFilterEventRequest extends StaffListDataEvent {
  final StaffFilterModel filterModel;

  const StaffListFilterEventRequest(this.filterModel);
}
