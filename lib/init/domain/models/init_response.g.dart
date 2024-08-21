// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'init_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InitAPIResponse _$$_InitAPIResponseFromJson(Map<String, dynamic> json) =>
    _$_InitAPIResponse(
      code: json['code'] as int,
      msg: json['msg'] as String,
      data: json['data'] == null
          ? null
          : InitDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InitAPIResponseToJson(_$_InitAPIResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

_$_InitDetailData _$$_InitDetailDataFromJson(Map<String, dynamic> json) =>
    _$_InitDetailData(
      init: InitData.fromJson(json['init'] as Map<String, dynamic>),
      company:
          CompanyDetailData.fromJson(json['company'] as Map<String, dynamic>),
      employee: EmployeeData.fromJson(json['employee'] as Map<String, dynamic>),
      leave: LeaveData.fromJson(json['leave'] as Map<String, dynamic>),
      attendance:
          AttendanceData.fromJson(json['attendance'] as Map<String, dynamic>),
      calendar: CalendarData.fromJson(json['calendar'] as Map<String, dynamic>),
      working: WorkingData.fromJson(json['working'] as Map<String, dynamic>),
      assets: AssetsData.fromJson(json['assets'] as Map<String, dynamic>),
      borrow: BorrowData.fromJson(json['borrow'] as Map<String, dynamic>),
      room: RoomData.fromJson(json['room'] as Map<String, dynamic>),
      wfh: WFHData.fromJson(json['wfh'] as Map<String, dynamic>),
      ticket: TicketData.fromJson(json['ticket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InitDetailDataToJson(_$_InitDetailData instance) =>
    <String, dynamic>{
      'init': instance.init,
      'company': instance.company,
      'employee': instance.employee,
      'leave': instance.leave,
      'attendance': instance.attendance,
      'calendar': instance.calendar,
      'working': instance.working,
      'assets': instance.assets,
      'borrow': instance.borrow,
      'room': instance.room,
      'wfh': instance.wfh,
      'ticket': instance.ticket,
    };

_$_InitData _$$_InitDataFromJson(Map<String, dynamic> json) => _$_InitData(
      api_url: json['api_url'] as String,
      date_format: json['date_format'] as String,
      version: json['version'] as String,
      permission: (json['permission'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      general: GeneralData.fromJson(json['general'] as Map<String, dynamic>),
      announcement: AnnouncementData.fromJson(
          json['announcement'] as Map<String, dynamic>),
      dashboard:
          DashboardData.fromJson(json['dashboard'] as Map<String, dynamic>),
      employee:
          EmployeeInitData.fromJson(json['employee'] as Map<String, dynamic>),
      company:
          CompanyInitData.fromJson(json['company'] as Map<String, dynamic>),
      borrow: BorrowInitData.fromJson(json['borrow'] as Map<String, dynamic>),
      asset: AssetInitData.fromJson(json['asset'] as Map<String, dynamic>),
      room: RoomInitData.fromJson(json['room'] as Map<String, dynamic>),
      leave: LeaveInitData.fromJson(json['leave'] as Map<String, dynamic>),
      calendar:
          CalendarInitData.fromJson(json['calendar'] as Map<String, dynamic>),
      working:
          WorkingInitData.fromJson(json['working'] as Map<String, dynamic>),
      attendance: AttendanceInitData.fromJson(
          json['attendance'] as Map<String, dynamic>),
      support:
          SupportInitData.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InitDataToJson(_$_InitData instance) =>
    <String, dynamic>{
      'api_url': instance.api_url,
      'date_format': instance.date_format,
      'version': instance.version,
      'permission': instance.permission,
      'general': instance.general,
      'announcement': instance.announcement,
      'dashboard': instance.dashboard,
      'employee': instance.employee,
      'company': instance.company,
      'borrow': instance.borrow,
      'asset': instance.asset,
      'room': instance.room,
      'leave': instance.leave,
      'calendar': instance.calendar,
      'working': instance.working,
      'attendance': instance.attendance,
      'support': instance.support,
    };

_$_GeneralData _$$_GeneralDataFromJson(Map<String, dynamic> json) =>
    _$_GeneralData(
      maintenance_mode: json['maintenance_mode'] as bool,
      disable_login: json['disable_login'] as bool,
      disable_forgot: json['disable_forgot'] as bool,
    );

Map<String, dynamic> _$$_GeneralDataToJson(_$_GeneralData instance) =>
    <String, dynamic>{
      'maintenance_mode': instance.maintenance_mode,
      'disable_login': instance.disable_login,
      'disable_forgot': instance.disable_forgot,
    };

_$_AnnouncementData _$$_AnnouncementDataFromJson(Map<String, dynamic> json) =>
    _$_AnnouncementData(
      disable_module: json['disable_module'] as bool,
    );

Map<String, dynamic> _$$_AnnouncementDataToJson(_$_AnnouncementData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
    };

_$_DashboardData _$$_DashboardDataFromJson(Map<String, dynamic> json) =>
    _$_DashboardData(
      disable_widget_birthday: json['disable_widget_birthday'] as bool,
      disable_widget_gratz: json['disable_widget_gratz'] as bool,
      disable_widget_skill_chart: json['disable_widget_skill_chart'] as bool,
      disable_widget_borrow_device:
          json['disable_widget_borrow_device'] as bool,
      disable_widget_meeting_room: json['disable_widget_meeting_room'] as bool,
      disable_widget_leave: json['disable_widget_leave'] as bool,
    );

Map<String, dynamic> _$$_DashboardDataToJson(_$_DashboardData instance) =>
    <String, dynamic>{
      'disable_widget_birthday': instance.disable_widget_birthday,
      'disable_widget_gratz': instance.disable_widget_gratz,
      'disable_widget_skill_chart': instance.disable_widget_skill_chart,
      'disable_widget_borrow_device': instance.disable_widget_borrow_device,
      'disable_widget_meeting_room': instance.disable_widget_meeting_room,
      'disable_widget_leave': instance.disable_widget_leave,
    };

_$_EmployeeInitData _$$_EmployeeInitDataFromJson(Map<String, dynamic> json) =>
    _$_EmployeeInitData(
      disable_staff_list: json['disable_staff_list'] as bool,
      disable_personal_information:
          json['disable_personal_information'] as bool,
      disable_working_information: json['disable_working_information'] as bool,
      disable_contact_information: json['disable_contact_information'] as bool,
      disable_language_information:
          json['disable_language_information'] as bool,
      disable_skill_information: json['disable_skill_information'] as bool,
      disable_skill_information_additional:
          json['disable_skill_information_additional'] as bool,
      disable_project_information: json['disable_project_information'] as bool,
      disable_project_information_additional:
          json['disable_project_information_additional'] as bool,
    );

Map<String, dynamic> _$$_EmployeeInitDataToJson(_$_EmployeeInitData instance) =>
    <String, dynamic>{
      'disable_staff_list': instance.disable_staff_list,
      'disable_personal_information': instance.disable_personal_information,
      'disable_working_information': instance.disable_working_information,
      'disable_contact_information': instance.disable_contact_information,
      'disable_language_information': instance.disable_language_information,
      'disable_skill_information': instance.disable_skill_information,
      'disable_skill_information_additional':
          instance.disable_skill_information_additional,
      'disable_project_information': instance.disable_project_information,
      'disable_project_information_additional':
          instance.disable_project_information_additional,
    };

_$_CompanyInitData _$$_CompanyInitDataFromJson(Map<String, dynamic> json) =>
    _$_CompanyInitData(
      disable_module: json['disable_module'] as bool,
      disable_company_structure: json['disable_company_structure'] as bool,
    );

Map<String, dynamic> _$$_CompanyInitDataToJson(_$_CompanyInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
      'disable_company_structure': instance.disable_company_structure,
    };

_$_BorrowInitData _$$_BorrowInitDataFromJson(Map<String, dynamic> json) =>
    _$_BorrowInitData(
      disable_module: json['disable_module'] as bool,
      disable_borrow_device_approve:
          json['disable_borrow_device_approve'] as bool,
      disable_borrow_device_return:
          json['disable_borrow_device_return'] as bool,
      disable_borrow_device_reject:
          json['disable_borrow_device_reject'] as bool,
    );

Map<String, dynamic> _$$_BorrowInitDataToJson(_$_BorrowInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
      'disable_borrow_device_approve': instance.disable_borrow_device_approve,
      'disable_borrow_device_return': instance.disable_borrow_device_return,
      'disable_borrow_device_reject': instance.disable_borrow_device_reject,
    };

_$_AssetInitData _$$_AssetInitDataFromJson(Map<String, dynamic> json) =>
    _$_AssetInitData(
      disable_module: json['disable_module'] as bool,
    );

Map<String, dynamic> _$$_AssetInitDataToJson(_$_AssetInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
    };

_$_RoomInitData _$$_RoomInitDataFromJson(Map<String, dynamic> json) =>
    _$_RoomInitData(
      disable_module: json['disable_module'] as bool,
      disable_room_booking: json['disable_room_booking'] as bool,
    );

Map<String, dynamic> _$$_RoomInitDataToJson(_$_RoomInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
      'disable_room_booking': instance.disable_room_booking,
    };

_$_LeaveData _$$_LeaveDataFromJson(Map<String, dynamic> json) => _$_LeaveData(
      status: (json['status'] as List<dynamic>)
          .map((e) => StatusData.fromJson(e as Map<String, dynamic>))
          .toList(),
      annual_leave: json['annual_leave'] as int,
      birthday_leave: json['birthday_leave'] as int,
      period_leave: json['period_leave'] as int,
    );

Map<String, dynamic> _$$_LeaveDataToJson(_$_LeaveData instance) =>
    <String, dynamic>{
      'status': instance.status,
      'annual_leave': instance.annual_leave,
      'birthday_leave': instance.birthday_leave,
      'period_leave': instance.period_leave,
    };

_$_LeaveInitData _$$_LeaveInitDataFromJson(Map<String, dynamic> json) =>
    _$_LeaveInitData(
      disable_module: json['disable_module'] as bool,
      disable_create_leave: json['disable_create_leave'] as bool,
    );

Map<String, dynamic> _$$_LeaveInitDataToJson(_$_LeaveInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
      'disable_create_leave': instance.disable_create_leave,
    };

_$_CalendarInitData _$$_CalendarInitDataFromJson(Map<String, dynamic> json) =>
    _$_CalendarInitData(
      disable_module: json['disable_module'] as bool,
      disable_custom_module: json['disable_custom_module'] as bool,
      disable_google_module: json['disable_google_module'] as bool,
    );

Map<String, dynamic> _$$_CalendarInitDataToJson(_$_CalendarInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
      'disable_custom_module': instance.disable_custom_module,
      'disable_google_module': instance.disable_google_module,
    };

_$_TypeData _$$_TypeDataFromJson(Map<String, dynamic> json) => _$_TypeData(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_TypeDataToJson(_$_TypeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_StatusData _$$_StatusDataFromJson(Map<String, dynamic> json) =>
    _$_StatusData(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_StatusDataToJson(_$_StatusData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_RecurringData _$$_RecurringDataFromJson(Map<String, dynamic> json) =>
    _$_RecurringData(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_RecurringDataToJson(_$_RecurringData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_WorkingInitData _$$_WorkingInitDataFromJson(Map<String, dynamic> json) =>
    _$_WorkingInitData(
      disable_module: json['disable_module'] as bool,
      depreciation: json['depreciation'] as int,
    );

Map<String, dynamic> _$$_WorkingInitDataToJson(_$_WorkingInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
      'depreciation': instance.depreciation,
    };

_$_AttendanceInitData _$$_AttendanceInitDataFromJson(
        Map<String, dynamic> json) =>
    _$_AttendanceInitData(
      disable_module: json['disable_module'] as bool,
    );

Map<String, dynamic> _$$_AttendanceInitDataToJson(
        _$_AttendanceInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
    };

_$_SupportInitData _$$_SupportInitDataFromJson(Map<String, dynamic> json) =>
    _$_SupportInitData(
      disable_module: json['disable_module'] as bool,
    );

Map<String, dynamic> _$$_SupportInitDataToJson(_$_SupportInitData instance) =>
    <String, dynamic>{
      'disable_module': instance.disable_module,
    };

_$_CompanyData _$$_CompanyDataFromJson(Map<String, dynamic> json) =>
    _$_CompanyData(
      id: json['id'] as int,
      name: json['name'] as String,
      branch_name: json['branch_name'] as String,
    );

Map<String, dynamic> _$$_CompanyDataToJson(_$_CompanyData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'branch_name': instance.branch_name,
    };

_$_DepartmentData _$$_DepartmentDataFromJson(Map<String, dynamic> json) =>
    _$_DepartmentData(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_DepartmentDataToJson(_$_DepartmentData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_CompanyDetailData _$$_CompanyDetailDataFromJson(Map<String, dynamic> json) =>
    _$_CompanyDetailData(
      company: (json['company'] as List<dynamic>)
          .map((e) => CompanyData.fromJson(e as Map<String, dynamic>))
          .toList(),
      department: (json['department'] as List<dynamic>)
          .map((e) => DepartmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CompanyDetailDataToJson(
        _$_CompanyDetailData instance) =>
    <String, dynamic>{
      'company': instance.company,
      'department': instance.department,
    };

_$_ExpData _$$_ExpDataFromJson(Map<String, dynamic> json) => _$_ExpData(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ExpDataToJson(_$_ExpData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_GenderData _$$_GenderDataFromJson(Map<String, dynamic> json) =>
    _$_GenderData(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_GenderDataToJson(_$_GenderData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_EmployeeInformationData _$$_EmployeeInformationDataFromJson(
        Map<String, dynamic> json) =>
    _$_EmployeeInformationData(
      exp: (json['exp'] as List<dynamic>)
          .map((e) => ExpData.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: (json['gender'] as List<dynamic>)
          .map((e) => GenderData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmployeeInformationDataToJson(
        _$_EmployeeInformationData instance) =>
    <String, dynamic>{
      'exp': instance.exp,
      'gender': instance.gender,
    };

_$_ImageTypeData _$$_ImageTypeDataFromJson(Map<String, dynamic> json) =>
    _$_ImageTypeData(
      id: json['id'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ImageTypeDataToJson(_$_ImageTypeData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_EmployeeData _$$_EmployeeDataFromJson(Map<String, dynamic> json) =>
    _$_EmployeeData(
      information: EmployeeInformationData.fromJson(
          json['information'] as Map<String, dynamic>),
      images_type: (json['images_type'] as List<dynamic>)
          .map((e) => ImageTypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmployeeDataToJson(_$_EmployeeData instance) =>
    <String, dynamic>{
      'information': instance.information,
      'images_type': instance.images_type,
    };

_$_AttendanceData _$$_AttendanceDataFromJson(Map<String, dynamic> json) =>
    _$_AttendanceData(
      type: (json['type'] as List<dynamic>)
          .map((e) => TypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttendanceDataToJson(_$_AttendanceData instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$_CalendarData _$$_CalendarDataFromJson(Map<String, dynamic> json) =>
    _$_CalendarData(
      type: (json['type'] as List<dynamic>)
          .map((e) => TypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CalendarDataToJson(_$_CalendarData instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$_WorkingData _$$_WorkingDataFromJson(Map<String, dynamic> json) =>
    _$_WorkingData(
      type: (json['type'] as List<dynamic>)
          .map((e) => TypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WorkingDataToJson(_$_WorkingData instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$_AssetsData _$$_AssetsDataFromJson(Map<String, dynamic> json) =>
    _$_AssetsData(
      status: (json['status'] as List<dynamic>)
          .map((e) => StatusData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AssetsDataToJson(_$_AssetsData instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$_BorrowData _$$_BorrowDataFromJson(Map<String, dynamic> json) =>
    _$_BorrowData(
      status: (json['status'] as List<dynamic>)
          .map((e) => StatusData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BorrowDataToJson(_$_BorrowData instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$_RoomData _$$_RoomDataFromJson(Map<String, dynamic> json) => _$_RoomData(
      recurring: (json['recurring'] as List<dynamic>)
          .map((e) => RecurringData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RoomDataToJson(_$_RoomData instance) =>
    <String, dynamic>{
      'recurring': instance.recurring,
    };

_$_WFHData _$$_WFHDataFromJson(Map<String, dynamic> json) => _$_WFHData(
      type: (json['type'] as List<dynamic>)
          .map((e) => TypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WFHDataToJson(_$_WFHData instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

_$_TicketData _$$_TicketDataFromJson(Map<String, dynamic> json) =>
    _$_TicketData(
      type: (json['type'] as List<dynamic>)
          .map((e) => TypeData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TicketDataToJson(_$_TicketData instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
