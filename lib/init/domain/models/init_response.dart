import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'init_response.freezed.dart';
part 'init_response.g.dart';

@freezed
class InitAPIResponse with _$InitAPIResponse {
  const factory InitAPIResponse({
    required int code,
    required String msg,
    required InitDetailData? data,

  }) = _InitAPIResponse;

  factory InitAPIResponse.fromJson(Map<String, Object?> json)
  => _$InitAPIResponseFromJson(json);
}


@freezed
class InitDetailData with _$InitDetailData {
  const factory InitDetailData({
    required InitData init,
    required CompanyDetailData company,
    required EmployeeData employee,
    required LeaveData leave,
    required AttendanceData attendance,
    required CalendarData calendar,
    required WorkingData working,
    required AssetsData assets,
    required BorrowData borrow,
    required RoomData room,
    required WFHData wfh,
    required TicketData ticket,


  }) = _InitDetailData;

  factory InitDetailData.fromJson(Map<String, Object?> json)
  => _$InitDetailDataFromJson(json);
}


@freezed
class InitData with _$InitData {
  const factory InitData({
    required String api_url,
    required String date_format,
    required String version,
    required List<String> permission,
    required GeneralData general,
    required AnnouncementData announcement,
    required DashboardData dashboard,
    required EmployeeInitData employee,
    required CompanyInitData company,
    required BorrowInitData borrow,
    required AssetInitData asset,
    required RoomInitData room,
    required LeaveInitData leave,
    required CalendarInitData calendar,
    required WorkingInitData working,
    required AttendanceInitData attendance,
    required SupportInitData support,

  }) = _InitData;

  factory InitData.fromJson(Map<String, Object?> json)
  => _$InitDataFromJson(json);
}

@freezed
class GeneralData with _$GeneralData {
  const factory GeneralData({
    required bool maintenance_mode,
    required bool disable_login,
    required bool disable_forgot
  }) = _GeneralData;

  factory GeneralData.fromJson(Map<String, Object?> json)
  => _$GeneralDataFromJson(json);
}

@freezed
class AnnouncementData with _$AnnouncementData {
  const factory AnnouncementData({
    required bool disable_module
  }) = _AnnouncementData;

  factory AnnouncementData.fromJson(Map<String, Object?> json)
  => _$AnnouncementDataFromJson(json);
}

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required bool disable_widget_birthday,
    required bool disable_widget_gratz,
    required bool disable_widget_skill_chart,
    required bool disable_widget_borrow_device,
    required bool disable_widget_meeting_room,
    required bool disable_widget_leave,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, Object?> json)
  => _$DashboardDataFromJson(json);
}

@freezed
class EmployeeInitData with _$EmployeeInitData {
  const factory EmployeeInitData({
    required bool disable_staff_list,
    required bool disable_personal_information,
    required bool disable_working_information,
    required bool disable_contact_information,
    required bool disable_language_information,
    required bool disable_skill_information,
    required bool disable_skill_information_additional,
    required bool disable_project_information,
    required bool disable_project_information_additional
  }) = _EmployeeInitData;

  factory EmployeeInitData.fromJson(Map<String, Object?> json)
  => _$EmployeeInitDataFromJson(json);
}

@freezed
class CompanyInitData with _$CompanyInitData {
  const factory CompanyInitData({
    required bool disable_module,
    required bool disable_company_structure
  }) = _CompanyInitData;

  factory CompanyInitData.fromJson(Map<String, Object?> json)
  => _$CompanyInitDataFromJson(json);
}

@freezed
class BorrowInitData with _$BorrowInitData {
  const factory BorrowInitData({
    required bool disable_module,
    required bool disable_borrow_device_approve,
    required bool disable_borrow_device_return,
    required bool disable_borrow_device_reject
  }) = _BorrowInitData;

  factory BorrowInitData.fromJson(Map<String, Object?> json)
  => _$BorrowInitDataFromJson(json);
}

@freezed
class AssetInitData with _$AssetInitData {
  const factory AssetInitData({
    required bool disable_module
  }) = _AssetInitData;

  factory AssetInitData.fromJson(Map<String, Object?> json)
  => _$AssetInitDataFromJson(json);
}

@freezed
class RoomInitData with _$RoomInitData {
  const factory RoomInitData({
    required bool disable_module,
    required bool disable_room_booking
  }) = _RoomInitData;

  factory RoomInitData.fromJson(Map<String, Object?> json)
  => _$RoomInitDataFromJson(json);
}

@freezed
class LeaveData with _$LeaveData {
  const factory LeaveData({
    required List<StatusData> status,
    required int annual_leave,
    required int birthday_leave,
    required int period_leave,

  }) = _LeaveData;

  factory LeaveData.fromJson(Map<String, Object?> json)
  => _$LeaveDataFromJson(json);
}

@freezed
class LeaveInitData with _$LeaveInitData {
  const factory LeaveInitData({
    required bool disable_module,
    required bool disable_create_leave
  }) = _LeaveInitData;

  factory LeaveInitData.fromJson(Map<String, Object?> json)
  => _$LeaveInitDataFromJson(json);
}



@freezed
class CalendarInitData with _$CalendarInitData {
  const factory CalendarInitData({
    required bool disable_module,
    required bool disable_custom_module,
    required bool disable_google_module
  }) = _CalendarInitData;

  factory CalendarInitData.fromJson(Map<String, Object?> json)
  => _$CalendarInitDataFromJson(json);
}

@freezed
class TypeData with _$TypeData {
  const factory TypeData({
    required int id,
    required String name,
  }) = _TypeData;

  factory TypeData.fromJson(Map<String, Object?> json)
  => _$TypeDataFromJson(json);
}

@freezed
class StatusData with _$StatusData {
  const factory StatusData({
    required int id,
    required String name,
  }) = _StatusData;

  factory StatusData.fromJson(Map<String, Object?> json)
  => _$StatusDataFromJson(json);
}

@freezed
class RecurringData with _$RecurringData {
  const factory RecurringData({
    required int id,
    required String name,
  }) = _RecurringData;

  factory RecurringData.fromJson(Map<String, Object?> json)
  => _$RecurringDataFromJson(json);
}


@freezed
class WorkingInitData with _$WorkingInitData {
  const factory WorkingInitData({
    required bool disable_module,
    required int depreciation,
  }) = _WorkingInitData;

  factory WorkingInitData.fromJson(Map<String, Object?> json)
  => _$WorkingInitDataFromJson(json);
}

@freezed
class AttendanceInitData with _$AttendanceInitData {
  const factory AttendanceInitData({
    required bool disable_module
  }) = _AttendanceInitData;

  factory AttendanceInitData.fromJson(Map<String, Object?> json)
  => _$AttendanceInitDataFromJson(json);
}

@freezed
class SupportInitData with _$SupportInitData {
  const factory SupportInitData({
    required bool disable_module
  }) = _SupportInitData;

  factory SupportInitData.fromJson(Map<String, Object?> json)
  => _$SupportInitDataFromJson(json);
}

@freezed
class CompanyData with _$CompanyData {
  const factory CompanyData({
    required int id,
    required String name,
    required String branch_name
  }) = _CompanyData;

  factory CompanyData.fromJson(Map<String, Object?> json)
  => _$CompanyDataFromJson(json);
}

@freezed
class DepartmentData with _$DepartmentData {
  const factory DepartmentData({
    required int id,
    required String name
  }) = _DepartmentData;

  factory DepartmentData.fromJson(Map<String, Object?> json)
  => _$DepartmentDataFromJson(json);
}

@freezed
class CompanyDetailData with _$CompanyDetailData {
  const factory CompanyDetailData({
    required List<CompanyData> company,
    required List<DepartmentData> department,
  }) = _CompanyDetailData;

  factory CompanyDetailData.fromJson(Map<String, Object?> json)
  => _$CompanyDetailDataFromJson(json);
}

@freezed
class ExpData with _$ExpData {
  const factory ExpData({
    required int id,
    required String name,
  }) = _ExpData;

  factory ExpData.fromJson(Map<String, Object?> json)
  => _$ExpDataFromJson(json);
}

@freezed
class GenderData with _$GenderData {
  const factory GenderData({
    required int id,
    required String name,
  }) = _GenderData;

  factory GenderData.fromJson(Map<String, Object?> json)
  => _$GenderDataFromJson(json);
}

@freezed
class EmployeeInformationData with _$EmployeeInformationData {
  const factory EmployeeInformationData({
    required List<ExpData> exp,
    required List<GenderData> gender,
  }) = _EmployeeInformationData;

  factory EmployeeInformationData.fromJson(Map<String, Object?> json)
  => _$EmployeeInformationDataFromJson(json);
}

@freezed
class ImageTypeData with _$ImageTypeData {
  const factory ImageTypeData({
    required int id,
    required String name,
  }) = _ImageTypeData;

  factory ImageTypeData.fromJson(Map<String, Object?> json)
  => _$ImageTypeDataFromJson(json);
}

@freezed
class EmployeeData with _$EmployeeData {
  const factory EmployeeData({
    required EmployeeInformationData information,
    required List<ImageTypeData> images_type,
  }) = _EmployeeData;

  factory EmployeeData.fromJson(Map<String, Object?> json)
  => _$EmployeeDataFromJson(json);
}

@freezed
class AttendanceData with _$AttendanceData {
  const factory AttendanceData({
    required List<TypeData> type,
  }) = _AttendanceData;

  factory AttendanceData.fromJson(Map<String, Object?> json)
  => _$AttendanceDataFromJson(json);
}


@freezed
class CalendarData with _$CalendarData {
  const factory CalendarData({
    required List<TypeData> type,
  }) = _CalendarData;

  factory CalendarData.fromJson(Map<String, Object?> json)
  => _$CalendarDataFromJson(json);
}


@freezed
class WorkingData with _$WorkingData {
  const factory WorkingData({
    required List<TypeData> type,
  }) = _WorkingData;

  factory WorkingData.fromJson(Map<String, Object?> json)
  => _$WorkingDataFromJson(json);
}


@freezed
class AssetsData with _$AssetsData {
  const factory AssetsData({
    required List<StatusData> status,
  }) = _AssetsData;

  factory AssetsData.fromJson(Map<String, Object?> json)
  => _$AssetsDataFromJson(json);
}

@freezed
class BorrowData with _$BorrowData {
  const factory BorrowData({
    required List<StatusData> status,
  }) = _BorrowData;

  factory BorrowData.fromJson(Map<String, Object?> json)
  => _$BorrowDataFromJson(json);
}

@freezed
class RoomData with _$RoomData {
  const factory RoomData({
    required List<RecurringData> recurring,
  }) = _RoomData;

  factory RoomData.fromJson(Map<String, Object?> json)
  => _$RoomDataFromJson(json);
}

@freezed
class WFHData with _$WFHData {
  const factory WFHData({
    required List<TypeData> type,
  }) = _WFHData;

  factory WFHData.fromJson(Map<String, Object?> json)
  => _$WFHDataFromJson(json);
}

@freezed
class TicketData with _$TicketData {
  const factory TicketData({
    required List<TypeData> type,
  }) = _TicketData;

  factory TicketData.fromJson(Map<String, Object?> json)
  => _$TicketDataFromJson(json);
}











