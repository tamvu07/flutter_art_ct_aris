// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'init_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitAPIResponse _$InitAPIResponseFromJson(Map<String, dynamic> json) {
  return _InitAPIResponse.fromJson(json);
}

/// @nodoc
mixin _$InitAPIResponse {
  int get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  InitDetailData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitAPIResponseCopyWith<InitAPIResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitAPIResponseCopyWith<$Res> {
  factory $InitAPIResponseCopyWith(
          InitAPIResponse value, $Res Function(InitAPIResponse) then) =
      _$InitAPIResponseCopyWithImpl<$Res>;
  $Res call({int code, String msg, InitDetailData? data});

  $InitDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$InitAPIResponseCopyWithImpl<$Res>
    implements $InitAPIResponseCopyWith<$Res> {
  _$InitAPIResponseCopyWithImpl(this._value, this._then);

  final InitAPIResponse _value;
  // ignore: unused_field
  final $Res Function(InitAPIResponse) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InitDetailData?,
    ));
  }

  @override
  $InitDetailDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $InitDetailDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitAPIResponseCopyWith<$Res>
    implements $InitAPIResponseCopyWith<$Res> {
  factory _$$_InitAPIResponseCopyWith(
          _$_InitAPIResponse value, $Res Function(_$_InitAPIResponse) then) =
      __$$_InitAPIResponseCopyWithImpl<$Res>;
  @override
  $Res call({int code, String msg, InitDetailData? data});

  @override
  $InitDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_InitAPIResponseCopyWithImpl<$Res>
    extends _$InitAPIResponseCopyWithImpl<$Res>
    implements _$$_InitAPIResponseCopyWith<$Res> {
  __$$_InitAPIResponseCopyWithImpl(
      _$_InitAPIResponse _value, $Res Function(_$_InitAPIResponse) _then)
      : super(_value, (v) => _then(v as _$_InitAPIResponse));

  @override
  _$_InitAPIResponse get _value => super._value as _$_InitAPIResponse;

  @override
  $Res call({
    Object? code = freezed,
    Object? msg = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_InitAPIResponse(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InitDetailData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitAPIResponse
    with DiagnosticableTreeMixin
    implements _InitAPIResponse {
  const _$_InitAPIResponse(
      {required this.code, required this.msg, required this.data});

  factory _$_InitAPIResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InitAPIResponseFromJson(json);

  @override
  final int code;
  @override
  final String msg;
  @override
  final InitDetailData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitAPIResponse(code: $code, msg: $msg, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InitAPIResponse'))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('msg', msg))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitAPIResponse &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.msg, msg) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(msg),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_InitAPIResponseCopyWith<_$_InitAPIResponse> get copyWith =>
      __$$_InitAPIResponseCopyWithImpl<_$_InitAPIResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitAPIResponseToJson(
      this,
    );
  }
}

abstract class _InitAPIResponse implements InitAPIResponse {
  const factory _InitAPIResponse(
      {required final int code,
      required final String msg,
      required final InitDetailData? data}) = _$_InitAPIResponse;

  factory _InitAPIResponse.fromJson(Map<String, dynamic> json) =
      _$_InitAPIResponse.fromJson;

  @override
  int get code;
  @override
  String get msg;
  @override
  InitDetailData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_InitAPIResponseCopyWith<_$_InitAPIResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

InitDetailData _$InitDetailDataFromJson(Map<String, dynamic> json) {
  return _InitDetailData.fromJson(json);
}

/// @nodoc
mixin _$InitDetailData {
  InitData get init => throw _privateConstructorUsedError;
  CompanyDetailData get company => throw _privateConstructorUsedError;
  EmployeeData get employee => throw _privateConstructorUsedError;
  LeaveData get leave => throw _privateConstructorUsedError;
  AttendanceData get attendance => throw _privateConstructorUsedError;
  CalendarData get calendar => throw _privateConstructorUsedError;
  WorkingData get working => throw _privateConstructorUsedError;
  AssetsData get assets => throw _privateConstructorUsedError;
  BorrowData get borrow => throw _privateConstructorUsedError;
  RoomData get room => throw _privateConstructorUsedError;
  WFHData get wfh => throw _privateConstructorUsedError;
  TicketData get ticket => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitDetailDataCopyWith<InitDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitDetailDataCopyWith<$Res> {
  factory $InitDetailDataCopyWith(
          InitDetailData value, $Res Function(InitDetailData) then) =
      _$InitDetailDataCopyWithImpl<$Res>;
  $Res call(
      {InitData init,
      CompanyDetailData company,
      EmployeeData employee,
      LeaveData leave,
      AttendanceData attendance,
      CalendarData calendar,
      WorkingData working,
      AssetsData assets,
      BorrowData borrow,
      RoomData room,
      WFHData wfh,
      TicketData ticket});

  $InitDataCopyWith<$Res> get init;
  $CompanyDetailDataCopyWith<$Res> get company;
  $EmployeeDataCopyWith<$Res> get employee;
  $LeaveDataCopyWith<$Res> get leave;
  $AttendanceDataCopyWith<$Res> get attendance;
  $CalendarDataCopyWith<$Res> get calendar;
  $WorkingDataCopyWith<$Res> get working;
  $AssetsDataCopyWith<$Res> get assets;
  $BorrowDataCopyWith<$Res> get borrow;
  $RoomDataCopyWith<$Res> get room;
  $WFHDataCopyWith<$Res> get wfh;
  $TicketDataCopyWith<$Res> get ticket;
}

/// @nodoc
class _$InitDetailDataCopyWithImpl<$Res>
    implements $InitDetailDataCopyWith<$Res> {
  _$InitDetailDataCopyWithImpl(this._value, this._then);

  final InitDetailData _value;
  // ignore: unused_field
  final $Res Function(InitDetailData) _then;

  @override
  $Res call({
    Object? init = freezed,
    Object? company = freezed,
    Object? employee = freezed,
    Object? leave = freezed,
    Object? attendance = freezed,
    Object? calendar = freezed,
    Object? working = freezed,
    Object? assets = freezed,
    Object? borrow = freezed,
    Object? room = freezed,
    Object? wfh = freezed,
    Object? ticket = freezed,
  }) {
    return _then(_value.copyWith(
      init: init == freezed
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as InitData,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDetailData,
      employee: employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeData,
      leave: leave == freezed
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as LeaveData,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceData,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as CalendarData,
      working: working == freezed
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as WorkingData,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as AssetsData,
      borrow: borrow == freezed
          ? _value.borrow
          : borrow // ignore: cast_nullable_to_non_nullable
              as BorrowData,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomData,
      wfh: wfh == freezed
          ? _value.wfh
          : wfh // ignore: cast_nullable_to_non_nullable
              as WFHData,
      ticket: ticket == freezed
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketData,
    ));
  }

  @override
  $InitDataCopyWith<$Res> get init {
    return $InitDataCopyWith<$Res>(_value.init, (value) {
      return _then(_value.copyWith(init: value));
    });
  }

  @override
  $CompanyDetailDataCopyWith<$Res> get company {
    return $CompanyDetailDataCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }

  @override
  $EmployeeDataCopyWith<$Res> get employee {
    return $EmployeeDataCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }

  @override
  $LeaveDataCopyWith<$Res> get leave {
    return $LeaveDataCopyWith<$Res>(_value.leave, (value) {
      return _then(_value.copyWith(leave: value));
    });
  }

  @override
  $AttendanceDataCopyWith<$Res> get attendance {
    return $AttendanceDataCopyWith<$Res>(_value.attendance, (value) {
      return _then(_value.copyWith(attendance: value));
    });
  }

  @override
  $CalendarDataCopyWith<$Res> get calendar {
    return $CalendarDataCopyWith<$Res>(_value.calendar, (value) {
      return _then(_value.copyWith(calendar: value));
    });
  }

  @override
  $WorkingDataCopyWith<$Res> get working {
    return $WorkingDataCopyWith<$Res>(_value.working, (value) {
      return _then(_value.copyWith(working: value));
    });
  }

  @override
  $AssetsDataCopyWith<$Res> get assets {
    return $AssetsDataCopyWith<$Res>(_value.assets, (value) {
      return _then(_value.copyWith(assets: value));
    });
  }

  @override
  $BorrowDataCopyWith<$Res> get borrow {
    return $BorrowDataCopyWith<$Res>(_value.borrow, (value) {
      return _then(_value.copyWith(borrow: value));
    });
  }

  @override
  $RoomDataCopyWith<$Res> get room {
    return $RoomDataCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }

  @override
  $WFHDataCopyWith<$Res> get wfh {
    return $WFHDataCopyWith<$Res>(_value.wfh, (value) {
      return _then(_value.copyWith(wfh: value));
    });
  }

  @override
  $TicketDataCopyWith<$Res> get ticket {
    return $TicketDataCopyWith<$Res>(_value.ticket, (value) {
      return _then(_value.copyWith(ticket: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitDetailDataCopyWith<$Res>
    implements $InitDetailDataCopyWith<$Res> {
  factory _$$_InitDetailDataCopyWith(
          _$_InitDetailData value, $Res Function(_$_InitDetailData) then) =
      __$$_InitDetailDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {InitData init,
      CompanyDetailData company,
      EmployeeData employee,
      LeaveData leave,
      AttendanceData attendance,
      CalendarData calendar,
      WorkingData working,
      AssetsData assets,
      BorrowData borrow,
      RoomData room,
      WFHData wfh,
      TicketData ticket});

  @override
  $InitDataCopyWith<$Res> get init;
  @override
  $CompanyDetailDataCopyWith<$Res> get company;
  @override
  $EmployeeDataCopyWith<$Res> get employee;
  @override
  $LeaveDataCopyWith<$Res> get leave;
  @override
  $AttendanceDataCopyWith<$Res> get attendance;
  @override
  $CalendarDataCopyWith<$Res> get calendar;
  @override
  $WorkingDataCopyWith<$Res> get working;
  @override
  $AssetsDataCopyWith<$Res> get assets;
  @override
  $BorrowDataCopyWith<$Res> get borrow;
  @override
  $RoomDataCopyWith<$Res> get room;
  @override
  $WFHDataCopyWith<$Res> get wfh;
  @override
  $TicketDataCopyWith<$Res> get ticket;
}

/// @nodoc
class __$$_InitDetailDataCopyWithImpl<$Res>
    extends _$InitDetailDataCopyWithImpl<$Res>
    implements _$$_InitDetailDataCopyWith<$Res> {
  __$$_InitDetailDataCopyWithImpl(
      _$_InitDetailData _value, $Res Function(_$_InitDetailData) _then)
      : super(_value, (v) => _then(v as _$_InitDetailData));

  @override
  _$_InitDetailData get _value => super._value as _$_InitDetailData;

  @override
  $Res call({
    Object? init = freezed,
    Object? company = freezed,
    Object? employee = freezed,
    Object? leave = freezed,
    Object? attendance = freezed,
    Object? calendar = freezed,
    Object? working = freezed,
    Object? assets = freezed,
    Object? borrow = freezed,
    Object? room = freezed,
    Object? wfh = freezed,
    Object? ticket = freezed,
  }) {
    return _then(_$_InitDetailData(
      init: init == freezed
          ? _value.init
          : init // ignore: cast_nullable_to_non_nullable
              as InitData,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyDetailData,
      employee: employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeData,
      leave: leave == freezed
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as LeaveData,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceData,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as CalendarData,
      working: working == freezed
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as WorkingData,
      assets: assets == freezed
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as AssetsData,
      borrow: borrow == freezed
          ? _value.borrow
          : borrow // ignore: cast_nullable_to_non_nullable
              as BorrowData,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomData,
      wfh: wfh == freezed
          ? _value.wfh
          : wfh // ignore: cast_nullable_to_non_nullable
              as WFHData,
      ticket: ticket == freezed
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as TicketData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitDetailData
    with DiagnosticableTreeMixin
    implements _InitDetailData {
  const _$_InitDetailData(
      {required this.init,
      required this.company,
      required this.employee,
      required this.leave,
      required this.attendance,
      required this.calendar,
      required this.working,
      required this.assets,
      required this.borrow,
      required this.room,
      required this.wfh,
      required this.ticket});

  factory _$_InitDetailData.fromJson(Map<String, dynamic> json) =>
      _$$_InitDetailDataFromJson(json);

  @override
  final InitData init;
  @override
  final CompanyDetailData company;
  @override
  final EmployeeData employee;
  @override
  final LeaveData leave;
  @override
  final AttendanceData attendance;
  @override
  final CalendarData calendar;
  @override
  final WorkingData working;
  @override
  final AssetsData assets;
  @override
  final BorrowData borrow;
  @override
  final RoomData room;
  @override
  final WFHData wfh;
  @override
  final TicketData ticket;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitDetailData(init: $init, company: $company, employee: $employee, leave: $leave, attendance: $attendance, calendar: $calendar, working: $working, assets: $assets, borrow: $borrow, room: $room, wfh: $wfh, ticket: $ticket)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InitDetailData'))
      ..add(DiagnosticsProperty('init', init))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('employee', employee))
      ..add(DiagnosticsProperty('leave', leave))
      ..add(DiagnosticsProperty('attendance', attendance))
      ..add(DiagnosticsProperty('calendar', calendar))
      ..add(DiagnosticsProperty('working', working))
      ..add(DiagnosticsProperty('assets', assets))
      ..add(DiagnosticsProperty('borrow', borrow))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('wfh', wfh))
      ..add(DiagnosticsProperty('ticket', ticket));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitDetailData &&
            const DeepCollectionEquality().equals(other.init, init) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.employee, employee) &&
            const DeepCollectionEquality().equals(other.leave, leave) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance) &&
            const DeepCollectionEquality().equals(other.calendar, calendar) &&
            const DeepCollectionEquality().equals(other.working, working) &&
            const DeepCollectionEquality().equals(other.assets, assets) &&
            const DeepCollectionEquality().equals(other.borrow, borrow) &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality().equals(other.wfh, wfh) &&
            const DeepCollectionEquality().equals(other.ticket, ticket));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(init),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(employee),
      const DeepCollectionEquality().hash(leave),
      const DeepCollectionEquality().hash(attendance),
      const DeepCollectionEquality().hash(calendar),
      const DeepCollectionEquality().hash(working),
      const DeepCollectionEquality().hash(assets),
      const DeepCollectionEquality().hash(borrow),
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(wfh),
      const DeepCollectionEquality().hash(ticket));

  @JsonKey(ignore: true)
  @override
  _$$_InitDetailDataCopyWith<_$_InitDetailData> get copyWith =>
      __$$_InitDetailDataCopyWithImpl<_$_InitDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitDetailDataToJson(
      this,
    );
  }
}

abstract class _InitDetailData implements InitDetailData {
  const factory _InitDetailData(
      {required final InitData init,
      required final CompanyDetailData company,
      required final EmployeeData employee,
      required final LeaveData leave,
      required final AttendanceData attendance,
      required final CalendarData calendar,
      required final WorkingData working,
      required final AssetsData assets,
      required final BorrowData borrow,
      required final RoomData room,
      required final WFHData wfh,
      required final TicketData ticket}) = _$_InitDetailData;

  factory _InitDetailData.fromJson(Map<String, dynamic> json) =
      _$_InitDetailData.fromJson;

  @override
  InitData get init;
  @override
  CompanyDetailData get company;
  @override
  EmployeeData get employee;
  @override
  LeaveData get leave;
  @override
  AttendanceData get attendance;
  @override
  CalendarData get calendar;
  @override
  WorkingData get working;
  @override
  AssetsData get assets;
  @override
  BorrowData get borrow;
  @override
  RoomData get room;
  @override
  WFHData get wfh;
  @override
  TicketData get ticket;
  @override
  @JsonKey(ignore: true)
  _$$_InitDetailDataCopyWith<_$_InitDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

InitData _$InitDataFromJson(Map<String, dynamic> json) {
  return _InitData.fromJson(json);
}

/// @nodoc
mixin _$InitData {
  String get api_url => throw _privateConstructorUsedError;
  String get date_format => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  List<String> get permission => throw _privateConstructorUsedError;
  GeneralData get general => throw _privateConstructorUsedError;
  AnnouncementData get announcement => throw _privateConstructorUsedError;
  DashboardData get dashboard => throw _privateConstructorUsedError;
  EmployeeInitData get employee => throw _privateConstructorUsedError;
  CompanyInitData get company => throw _privateConstructorUsedError;
  BorrowInitData get borrow => throw _privateConstructorUsedError;
  AssetInitData get asset => throw _privateConstructorUsedError;
  RoomInitData get room => throw _privateConstructorUsedError;
  LeaveInitData get leave => throw _privateConstructorUsedError;
  CalendarInitData get calendar => throw _privateConstructorUsedError;
  WorkingInitData get working => throw _privateConstructorUsedError;
  AttendanceInitData get attendance => throw _privateConstructorUsedError;
  SupportInitData get support => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitDataCopyWith<InitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitDataCopyWith<$Res> {
  factory $InitDataCopyWith(InitData value, $Res Function(InitData) then) =
      _$InitDataCopyWithImpl<$Res>;
  $Res call(
      {String api_url,
      String date_format,
      String version,
      List<String> permission,
      GeneralData general,
      AnnouncementData announcement,
      DashboardData dashboard,
      EmployeeInitData employee,
      CompanyInitData company,
      BorrowInitData borrow,
      AssetInitData asset,
      RoomInitData room,
      LeaveInitData leave,
      CalendarInitData calendar,
      WorkingInitData working,
      AttendanceInitData attendance,
      SupportInitData support});

  $GeneralDataCopyWith<$Res> get general;
  $AnnouncementDataCopyWith<$Res> get announcement;
  $DashboardDataCopyWith<$Res> get dashboard;
  $EmployeeInitDataCopyWith<$Res> get employee;
  $CompanyInitDataCopyWith<$Res> get company;
  $BorrowInitDataCopyWith<$Res> get borrow;
  $AssetInitDataCopyWith<$Res> get asset;
  $RoomInitDataCopyWith<$Res> get room;
  $LeaveInitDataCopyWith<$Res> get leave;
  $CalendarInitDataCopyWith<$Res> get calendar;
  $WorkingInitDataCopyWith<$Res> get working;
  $AttendanceInitDataCopyWith<$Res> get attendance;
  $SupportInitDataCopyWith<$Res> get support;
}

/// @nodoc
class _$InitDataCopyWithImpl<$Res> implements $InitDataCopyWith<$Res> {
  _$InitDataCopyWithImpl(this._value, this._then);

  final InitData _value;
  // ignore: unused_field
  final $Res Function(InitData) _then;

  @override
  $Res call({
    Object? api_url = freezed,
    Object? date_format = freezed,
    Object? version = freezed,
    Object? permission = freezed,
    Object? general = freezed,
    Object? announcement = freezed,
    Object? dashboard = freezed,
    Object? employee = freezed,
    Object? company = freezed,
    Object? borrow = freezed,
    Object? asset = freezed,
    Object? room = freezed,
    Object? leave = freezed,
    Object? calendar = freezed,
    Object? working = freezed,
    Object? attendance = freezed,
    Object? support = freezed,
  }) {
    return _then(_value.copyWith(
      api_url: api_url == freezed
          ? _value.api_url
          : api_url // ignore: cast_nullable_to_non_nullable
              as String,
      date_format: date_format == freezed
          ? _value.date_format
          : date_format // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      permission: permission == freezed
          ? _value.permission
          : permission // ignore: cast_nullable_to_non_nullable
              as List<String>,
      general: general == freezed
          ? _value.general
          : general // ignore: cast_nullable_to_non_nullable
              as GeneralData,
      announcement: announcement == freezed
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as AnnouncementData,
      dashboard: dashboard == freezed
          ? _value.dashboard
          : dashboard // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      employee: employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeInitData,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyInitData,
      borrow: borrow == freezed
          ? _value.borrow
          : borrow // ignore: cast_nullable_to_non_nullable
              as BorrowInitData,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetInitData,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomInitData,
      leave: leave == freezed
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as LeaveInitData,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as CalendarInitData,
      working: working == freezed
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as WorkingInitData,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceInitData,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportInitData,
    ));
  }

  @override
  $GeneralDataCopyWith<$Res> get general {
    return $GeneralDataCopyWith<$Res>(_value.general, (value) {
      return _then(_value.copyWith(general: value));
    });
  }

  @override
  $AnnouncementDataCopyWith<$Res> get announcement {
    return $AnnouncementDataCopyWith<$Res>(_value.announcement, (value) {
      return _then(_value.copyWith(announcement: value));
    });
  }

  @override
  $DashboardDataCopyWith<$Res> get dashboard {
    return $DashboardDataCopyWith<$Res>(_value.dashboard, (value) {
      return _then(_value.copyWith(dashboard: value));
    });
  }

  @override
  $EmployeeInitDataCopyWith<$Res> get employee {
    return $EmployeeInitDataCopyWith<$Res>(_value.employee, (value) {
      return _then(_value.copyWith(employee: value));
    });
  }

  @override
  $CompanyInitDataCopyWith<$Res> get company {
    return $CompanyInitDataCopyWith<$Res>(_value.company, (value) {
      return _then(_value.copyWith(company: value));
    });
  }

  @override
  $BorrowInitDataCopyWith<$Res> get borrow {
    return $BorrowInitDataCopyWith<$Res>(_value.borrow, (value) {
      return _then(_value.copyWith(borrow: value));
    });
  }

  @override
  $AssetInitDataCopyWith<$Res> get asset {
    return $AssetInitDataCopyWith<$Res>(_value.asset, (value) {
      return _then(_value.copyWith(asset: value));
    });
  }

  @override
  $RoomInitDataCopyWith<$Res> get room {
    return $RoomInitDataCopyWith<$Res>(_value.room, (value) {
      return _then(_value.copyWith(room: value));
    });
  }

  @override
  $LeaveInitDataCopyWith<$Res> get leave {
    return $LeaveInitDataCopyWith<$Res>(_value.leave, (value) {
      return _then(_value.copyWith(leave: value));
    });
  }

  @override
  $CalendarInitDataCopyWith<$Res> get calendar {
    return $CalendarInitDataCopyWith<$Res>(_value.calendar, (value) {
      return _then(_value.copyWith(calendar: value));
    });
  }

  @override
  $WorkingInitDataCopyWith<$Res> get working {
    return $WorkingInitDataCopyWith<$Res>(_value.working, (value) {
      return _then(_value.copyWith(working: value));
    });
  }

  @override
  $AttendanceInitDataCopyWith<$Res> get attendance {
    return $AttendanceInitDataCopyWith<$Res>(_value.attendance, (value) {
      return _then(_value.copyWith(attendance: value));
    });
  }

  @override
  $SupportInitDataCopyWith<$Res> get support {
    return $SupportInitDataCopyWith<$Res>(_value.support, (value) {
      return _then(_value.copyWith(support: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitDataCopyWith<$Res> implements $InitDataCopyWith<$Res> {
  factory _$$_InitDataCopyWith(
          _$_InitData value, $Res Function(_$_InitData) then) =
      __$$_InitDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String api_url,
      String date_format,
      String version,
      List<String> permission,
      GeneralData general,
      AnnouncementData announcement,
      DashboardData dashboard,
      EmployeeInitData employee,
      CompanyInitData company,
      BorrowInitData borrow,
      AssetInitData asset,
      RoomInitData room,
      LeaveInitData leave,
      CalendarInitData calendar,
      WorkingInitData working,
      AttendanceInitData attendance,
      SupportInitData support});

  @override
  $GeneralDataCopyWith<$Res> get general;
  @override
  $AnnouncementDataCopyWith<$Res> get announcement;
  @override
  $DashboardDataCopyWith<$Res> get dashboard;
  @override
  $EmployeeInitDataCopyWith<$Res> get employee;
  @override
  $CompanyInitDataCopyWith<$Res> get company;
  @override
  $BorrowInitDataCopyWith<$Res> get borrow;
  @override
  $AssetInitDataCopyWith<$Res> get asset;
  @override
  $RoomInitDataCopyWith<$Res> get room;
  @override
  $LeaveInitDataCopyWith<$Res> get leave;
  @override
  $CalendarInitDataCopyWith<$Res> get calendar;
  @override
  $WorkingInitDataCopyWith<$Res> get working;
  @override
  $AttendanceInitDataCopyWith<$Res> get attendance;
  @override
  $SupportInitDataCopyWith<$Res> get support;
}

/// @nodoc
class __$$_InitDataCopyWithImpl<$Res> extends _$InitDataCopyWithImpl<$Res>
    implements _$$_InitDataCopyWith<$Res> {
  __$$_InitDataCopyWithImpl(
      _$_InitData _value, $Res Function(_$_InitData) _then)
      : super(_value, (v) => _then(v as _$_InitData));

  @override
  _$_InitData get _value => super._value as _$_InitData;

  @override
  $Res call({
    Object? api_url = freezed,
    Object? date_format = freezed,
    Object? version = freezed,
    Object? permission = freezed,
    Object? general = freezed,
    Object? announcement = freezed,
    Object? dashboard = freezed,
    Object? employee = freezed,
    Object? company = freezed,
    Object? borrow = freezed,
    Object? asset = freezed,
    Object? room = freezed,
    Object? leave = freezed,
    Object? calendar = freezed,
    Object? working = freezed,
    Object? attendance = freezed,
    Object? support = freezed,
  }) {
    return _then(_$_InitData(
      api_url: api_url == freezed
          ? _value.api_url
          : api_url // ignore: cast_nullable_to_non_nullable
              as String,
      date_format: date_format == freezed
          ? _value.date_format
          : date_format // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      permission: permission == freezed
          ? _value._permission
          : permission // ignore: cast_nullable_to_non_nullable
              as List<String>,
      general: general == freezed
          ? _value.general
          : general // ignore: cast_nullable_to_non_nullable
              as GeneralData,
      announcement: announcement == freezed
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as AnnouncementData,
      dashboard: dashboard == freezed
          ? _value.dashboard
          : dashboard // ignore: cast_nullable_to_non_nullable
              as DashboardData,
      employee: employee == freezed
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeInitData,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as CompanyInitData,
      borrow: borrow == freezed
          ? _value.borrow
          : borrow // ignore: cast_nullable_to_non_nullable
              as BorrowInitData,
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as AssetInitData,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as RoomInitData,
      leave: leave == freezed
          ? _value.leave
          : leave // ignore: cast_nullable_to_non_nullable
              as LeaveInitData,
      calendar: calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as CalendarInitData,
      working: working == freezed
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as WorkingInitData,
      attendance: attendance == freezed
          ? _value.attendance
          : attendance // ignore: cast_nullable_to_non_nullable
              as AttendanceInitData,
      support: support == freezed
          ? _value.support
          : support // ignore: cast_nullable_to_non_nullable
              as SupportInitData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitData with DiagnosticableTreeMixin implements _InitData {
  const _$_InitData(
      {required this.api_url,
      required this.date_format,
      required this.version,
      required final List<String> permission,
      required this.general,
      required this.announcement,
      required this.dashboard,
      required this.employee,
      required this.company,
      required this.borrow,
      required this.asset,
      required this.room,
      required this.leave,
      required this.calendar,
      required this.working,
      required this.attendance,
      required this.support})
      : _permission = permission;

  factory _$_InitData.fromJson(Map<String, dynamic> json) =>
      _$$_InitDataFromJson(json);

  @override
  final String api_url;
  @override
  final String date_format;
  @override
  final String version;
  final List<String> _permission;
  @override
  List<String> get permission {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permission);
  }

  @override
  final GeneralData general;
  @override
  final AnnouncementData announcement;
  @override
  final DashboardData dashboard;
  @override
  final EmployeeInitData employee;
  @override
  final CompanyInitData company;
  @override
  final BorrowInitData borrow;
  @override
  final AssetInitData asset;
  @override
  final RoomInitData room;
  @override
  final LeaveInitData leave;
  @override
  final CalendarInitData calendar;
  @override
  final WorkingInitData working;
  @override
  final AttendanceInitData attendance;
  @override
  final SupportInitData support;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InitData(api_url: $api_url, date_format: $date_format, version: $version, permission: $permission, general: $general, announcement: $announcement, dashboard: $dashboard, employee: $employee, company: $company, borrow: $borrow, asset: $asset, room: $room, leave: $leave, calendar: $calendar, working: $working, attendance: $attendance, support: $support)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InitData'))
      ..add(DiagnosticsProperty('api_url', api_url))
      ..add(DiagnosticsProperty('date_format', date_format))
      ..add(DiagnosticsProperty('version', version))
      ..add(DiagnosticsProperty('permission', permission))
      ..add(DiagnosticsProperty('general', general))
      ..add(DiagnosticsProperty('announcement', announcement))
      ..add(DiagnosticsProperty('dashboard', dashboard))
      ..add(DiagnosticsProperty('employee', employee))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('borrow', borrow))
      ..add(DiagnosticsProperty('asset', asset))
      ..add(DiagnosticsProperty('room', room))
      ..add(DiagnosticsProperty('leave', leave))
      ..add(DiagnosticsProperty('calendar', calendar))
      ..add(DiagnosticsProperty('working', working))
      ..add(DiagnosticsProperty('attendance', attendance))
      ..add(DiagnosticsProperty('support', support));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitData &&
            const DeepCollectionEquality().equals(other.api_url, api_url) &&
            const DeepCollectionEquality()
                .equals(other.date_format, date_format) &&
            const DeepCollectionEquality().equals(other.version, version) &&
            const DeepCollectionEquality()
                .equals(other._permission, _permission) &&
            const DeepCollectionEquality().equals(other.general, general) &&
            const DeepCollectionEquality()
                .equals(other.announcement, announcement) &&
            const DeepCollectionEquality().equals(other.dashboard, dashboard) &&
            const DeepCollectionEquality().equals(other.employee, employee) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.borrow, borrow) &&
            const DeepCollectionEquality().equals(other.asset, asset) &&
            const DeepCollectionEquality().equals(other.room, room) &&
            const DeepCollectionEquality().equals(other.leave, leave) &&
            const DeepCollectionEquality().equals(other.calendar, calendar) &&
            const DeepCollectionEquality().equals(other.working, working) &&
            const DeepCollectionEquality()
                .equals(other.attendance, attendance) &&
            const DeepCollectionEquality().equals(other.support, support));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(api_url),
      const DeepCollectionEquality().hash(date_format),
      const DeepCollectionEquality().hash(version),
      const DeepCollectionEquality().hash(_permission),
      const DeepCollectionEquality().hash(general),
      const DeepCollectionEquality().hash(announcement),
      const DeepCollectionEquality().hash(dashboard),
      const DeepCollectionEquality().hash(employee),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(borrow),
      const DeepCollectionEquality().hash(asset),
      const DeepCollectionEquality().hash(room),
      const DeepCollectionEquality().hash(leave),
      const DeepCollectionEquality().hash(calendar),
      const DeepCollectionEquality().hash(working),
      const DeepCollectionEquality().hash(attendance),
      const DeepCollectionEquality().hash(support));

  @JsonKey(ignore: true)
  @override
  _$$_InitDataCopyWith<_$_InitData> get copyWith =>
      __$$_InitDataCopyWithImpl<_$_InitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitDataToJson(
      this,
    );
  }
}

abstract class _InitData implements InitData {
  const factory _InitData(
      {required final String api_url,
      required final String date_format,
      required final String version,
      required final List<String> permission,
      required final GeneralData general,
      required final AnnouncementData announcement,
      required final DashboardData dashboard,
      required final EmployeeInitData employee,
      required final CompanyInitData company,
      required final BorrowInitData borrow,
      required final AssetInitData asset,
      required final RoomInitData room,
      required final LeaveInitData leave,
      required final CalendarInitData calendar,
      required final WorkingInitData working,
      required final AttendanceInitData attendance,
      required final SupportInitData support}) = _$_InitData;

  factory _InitData.fromJson(Map<String, dynamic> json) = _$_InitData.fromJson;

  @override
  String get api_url;
  @override
  String get date_format;
  @override
  String get version;
  @override
  List<String> get permission;
  @override
  GeneralData get general;
  @override
  AnnouncementData get announcement;
  @override
  DashboardData get dashboard;
  @override
  EmployeeInitData get employee;
  @override
  CompanyInitData get company;
  @override
  BorrowInitData get borrow;
  @override
  AssetInitData get asset;
  @override
  RoomInitData get room;
  @override
  LeaveInitData get leave;
  @override
  CalendarInitData get calendar;
  @override
  WorkingInitData get working;
  @override
  AttendanceInitData get attendance;
  @override
  SupportInitData get support;
  @override
  @JsonKey(ignore: true)
  _$$_InitDataCopyWith<_$_InitData> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneralData _$GeneralDataFromJson(Map<String, dynamic> json) {
  return _GeneralData.fromJson(json);
}

/// @nodoc
mixin _$GeneralData {
  bool get maintenance_mode => throw _privateConstructorUsedError;
  bool get disable_login => throw _privateConstructorUsedError;
  bool get disable_forgot => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralDataCopyWith<GeneralData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralDataCopyWith<$Res> {
  factory $GeneralDataCopyWith(
          GeneralData value, $Res Function(GeneralData) then) =
      _$GeneralDataCopyWithImpl<$Res>;
  $Res call({bool maintenance_mode, bool disable_login, bool disable_forgot});
}

/// @nodoc
class _$GeneralDataCopyWithImpl<$Res> implements $GeneralDataCopyWith<$Res> {
  _$GeneralDataCopyWithImpl(this._value, this._then);

  final GeneralData _value;
  // ignore: unused_field
  final $Res Function(GeneralData) _then;

  @override
  $Res call({
    Object? maintenance_mode = freezed,
    Object? disable_login = freezed,
    Object? disable_forgot = freezed,
  }) {
    return _then(_value.copyWith(
      maintenance_mode: maintenance_mode == freezed
          ? _value.maintenance_mode
          : maintenance_mode // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_login: disable_login == freezed
          ? _value.disable_login
          : disable_login // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_forgot: disable_forgot == freezed
          ? _value.disable_forgot
          : disable_forgot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_GeneralDataCopyWith<$Res>
    implements $GeneralDataCopyWith<$Res> {
  factory _$$_GeneralDataCopyWith(
          _$_GeneralData value, $Res Function(_$_GeneralData) then) =
      __$$_GeneralDataCopyWithImpl<$Res>;
  @override
  $Res call({bool maintenance_mode, bool disable_login, bool disable_forgot});
}

/// @nodoc
class __$$_GeneralDataCopyWithImpl<$Res> extends _$GeneralDataCopyWithImpl<$Res>
    implements _$$_GeneralDataCopyWith<$Res> {
  __$$_GeneralDataCopyWithImpl(
      _$_GeneralData _value, $Res Function(_$_GeneralData) _then)
      : super(_value, (v) => _then(v as _$_GeneralData));

  @override
  _$_GeneralData get _value => super._value as _$_GeneralData;

  @override
  $Res call({
    Object? maintenance_mode = freezed,
    Object? disable_login = freezed,
    Object? disable_forgot = freezed,
  }) {
    return _then(_$_GeneralData(
      maintenance_mode: maintenance_mode == freezed
          ? _value.maintenance_mode
          : maintenance_mode // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_login: disable_login == freezed
          ? _value.disable_login
          : disable_login // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_forgot: disable_forgot == freezed
          ? _value.disable_forgot
          : disable_forgot // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralData with DiagnosticableTreeMixin implements _GeneralData {
  const _$_GeneralData(
      {required this.maintenance_mode,
      required this.disable_login,
      required this.disable_forgot});

  factory _$_GeneralData.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralDataFromJson(json);

  @override
  final bool maintenance_mode;
  @override
  final bool disable_login;
  @override
  final bool disable_forgot;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GeneralData(maintenance_mode: $maintenance_mode, disable_login: $disable_login, disable_forgot: $disable_forgot)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GeneralData'))
      ..add(DiagnosticsProperty('maintenance_mode', maintenance_mode))
      ..add(DiagnosticsProperty('disable_login', disable_login))
      ..add(DiagnosticsProperty('disable_forgot', disable_forgot));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralData &&
            const DeepCollectionEquality()
                .equals(other.maintenance_mode, maintenance_mode) &&
            const DeepCollectionEquality()
                .equals(other.disable_login, disable_login) &&
            const DeepCollectionEquality()
                .equals(other.disable_forgot, disable_forgot));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maintenance_mode),
      const DeepCollectionEquality().hash(disable_login),
      const DeepCollectionEquality().hash(disable_forgot));

  @JsonKey(ignore: true)
  @override
  _$$_GeneralDataCopyWith<_$_GeneralData> get copyWith =>
      __$$_GeneralDataCopyWithImpl<_$_GeneralData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralDataToJson(
      this,
    );
  }
}

abstract class _GeneralData implements GeneralData {
  const factory _GeneralData(
      {required final bool maintenance_mode,
      required final bool disable_login,
      required final bool disable_forgot}) = _$_GeneralData;

  factory _GeneralData.fromJson(Map<String, dynamic> json) =
      _$_GeneralData.fromJson;

  @override
  bool get maintenance_mode;
  @override
  bool get disable_login;
  @override
  bool get disable_forgot;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralDataCopyWith<_$_GeneralData> get copyWith =>
      throw _privateConstructorUsedError;
}

AnnouncementData _$AnnouncementDataFromJson(Map<String, dynamic> json) {
  return _AnnouncementData.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementData {
  bool get disable_module => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementDataCopyWith<AnnouncementData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementDataCopyWith<$Res> {
  factory $AnnouncementDataCopyWith(
          AnnouncementData value, $Res Function(AnnouncementData) then) =
      _$AnnouncementDataCopyWithImpl<$Res>;
  $Res call({bool disable_module});
}

/// @nodoc
class _$AnnouncementDataCopyWithImpl<$Res>
    implements $AnnouncementDataCopyWith<$Res> {
  _$AnnouncementDataCopyWithImpl(this._value, this._then);

  final AnnouncementData _value;
  // ignore: unused_field
  final $Res Function(AnnouncementData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AnnouncementDataCopyWith<$Res>
    implements $AnnouncementDataCopyWith<$Res> {
  factory _$$_AnnouncementDataCopyWith(
          _$_AnnouncementData value, $Res Function(_$_AnnouncementData) then) =
      __$$_AnnouncementDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module});
}

/// @nodoc
class __$$_AnnouncementDataCopyWithImpl<$Res>
    extends _$AnnouncementDataCopyWithImpl<$Res>
    implements _$$_AnnouncementDataCopyWith<$Res> {
  __$$_AnnouncementDataCopyWithImpl(
      _$_AnnouncementData _value, $Res Function(_$_AnnouncementData) _then)
      : super(_value, (v) => _then(v as _$_AnnouncementData));

  @override
  _$_AnnouncementData get _value => super._value as _$_AnnouncementData;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_$_AnnouncementData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnnouncementData
    with DiagnosticableTreeMixin
    implements _AnnouncementData {
  const _$_AnnouncementData({required this.disable_module});

  factory _$_AnnouncementData.fromJson(Map<String, dynamic> json) =>
      _$$_AnnouncementDataFromJson(json);

  @override
  final bool disable_module;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnnouncementData(disable_module: $disable_module)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnnouncementData'))
      ..add(DiagnosticsProperty('disable_module', disable_module));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnouncementData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(disable_module));

  @JsonKey(ignore: true)
  @override
  _$$_AnnouncementDataCopyWith<_$_AnnouncementData> get copyWith =>
      __$$_AnnouncementDataCopyWithImpl<_$_AnnouncementData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnouncementDataToJson(
      this,
    );
  }
}

abstract class _AnnouncementData implements AnnouncementData {
  const factory _AnnouncementData({required final bool disable_module}) =
      _$_AnnouncementData;

  factory _AnnouncementData.fromJson(Map<String, dynamic> json) =
      _$_AnnouncementData.fromJson;

  @override
  bool get disable_module;
  @override
  @JsonKey(ignore: true)
  _$$_AnnouncementDataCopyWith<_$_AnnouncementData> get copyWith =>
      throw _privateConstructorUsedError;
}

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) {
  return _DashboardData.fromJson(json);
}

/// @nodoc
mixin _$DashboardData {
  bool get disable_widget_birthday => throw _privateConstructorUsedError;
  bool get disable_widget_gratz => throw _privateConstructorUsedError;
  bool get disable_widget_skill_chart => throw _privateConstructorUsedError;
  bool get disable_widget_borrow_device => throw _privateConstructorUsedError;
  bool get disable_widget_meeting_room => throw _privateConstructorUsedError;
  bool get disable_widget_leave => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardDataCopyWith<DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardDataCopyWith<$Res> {
  factory $DashboardDataCopyWith(
          DashboardData value, $Res Function(DashboardData) then) =
      _$DashboardDataCopyWithImpl<$Res>;
  $Res call(
      {bool disable_widget_birthday,
      bool disable_widget_gratz,
      bool disable_widget_skill_chart,
      bool disable_widget_borrow_device,
      bool disable_widget_meeting_room,
      bool disable_widget_leave});
}

/// @nodoc
class _$DashboardDataCopyWithImpl<$Res>
    implements $DashboardDataCopyWith<$Res> {
  _$DashboardDataCopyWithImpl(this._value, this._then);

  final DashboardData _value;
  // ignore: unused_field
  final $Res Function(DashboardData) _then;

  @override
  $Res call({
    Object? disable_widget_birthday = freezed,
    Object? disable_widget_gratz = freezed,
    Object? disable_widget_skill_chart = freezed,
    Object? disable_widget_borrow_device = freezed,
    Object? disable_widget_meeting_room = freezed,
    Object? disable_widget_leave = freezed,
  }) {
    return _then(_value.copyWith(
      disable_widget_birthday: disable_widget_birthday == freezed
          ? _value.disable_widget_birthday
          : disable_widget_birthday // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_gratz: disable_widget_gratz == freezed
          ? _value.disable_widget_gratz
          : disable_widget_gratz // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_skill_chart: disable_widget_skill_chart == freezed
          ? _value.disable_widget_skill_chart
          : disable_widget_skill_chart // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_borrow_device: disable_widget_borrow_device == freezed
          ? _value.disable_widget_borrow_device
          : disable_widget_borrow_device // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_meeting_room: disable_widget_meeting_room == freezed
          ? _value.disable_widget_meeting_room
          : disable_widget_meeting_room // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_leave: disable_widget_leave == freezed
          ? _value.disable_widget_leave
          : disable_widget_leave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_DashboardDataCopyWith<$Res>
    implements $DashboardDataCopyWith<$Res> {
  factory _$$_DashboardDataCopyWith(
          _$_DashboardData value, $Res Function(_$_DashboardData) then) =
      __$$_DashboardDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool disable_widget_birthday,
      bool disable_widget_gratz,
      bool disable_widget_skill_chart,
      bool disable_widget_borrow_device,
      bool disable_widget_meeting_room,
      bool disable_widget_leave});
}

/// @nodoc
class __$$_DashboardDataCopyWithImpl<$Res>
    extends _$DashboardDataCopyWithImpl<$Res>
    implements _$$_DashboardDataCopyWith<$Res> {
  __$$_DashboardDataCopyWithImpl(
      _$_DashboardData _value, $Res Function(_$_DashboardData) _then)
      : super(_value, (v) => _then(v as _$_DashboardData));

  @override
  _$_DashboardData get _value => super._value as _$_DashboardData;

  @override
  $Res call({
    Object? disable_widget_birthday = freezed,
    Object? disable_widget_gratz = freezed,
    Object? disable_widget_skill_chart = freezed,
    Object? disable_widget_borrow_device = freezed,
    Object? disable_widget_meeting_room = freezed,
    Object? disable_widget_leave = freezed,
  }) {
    return _then(_$_DashboardData(
      disable_widget_birthday: disable_widget_birthday == freezed
          ? _value.disable_widget_birthday
          : disable_widget_birthday // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_gratz: disable_widget_gratz == freezed
          ? _value.disable_widget_gratz
          : disable_widget_gratz // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_skill_chart: disable_widget_skill_chart == freezed
          ? _value.disable_widget_skill_chart
          : disable_widget_skill_chart // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_borrow_device: disable_widget_borrow_device == freezed
          ? _value.disable_widget_borrow_device
          : disable_widget_borrow_device // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_meeting_room: disable_widget_meeting_room == freezed
          ? _value.disable_widget_meeting_room
          : disable_widget_meeting_room // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_widget_leave: disable_widget_leave == freezed
          ? _value.disable_widget_leave
          : disable_widget_leave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardData with DiagnosticableTreeMixin implements _DashboardData {
  const _$_DashboardData(
      {required this.disable_widget_birthday,
      required this.disable_widget_gratz,
      required this.disable_widget_skill_chart,
      required this.disable_widget_borrow_device,
      required this.disable_widget_meeting_room,
      required this.disable_widget_leave});

  factory _$_DashboardData.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardDataFromJson(json);

  @override
  final bool disable_widget_birthday;
  @override
  final bool disable_widget_gratz;
  @override
  final bool disable_widget_skill_chart;
  @override
  final bool disable_widget_borrow_device;
  @override
  final bool disable_widget_meeting_room;
  @override
  final bool disable_widget_leave;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DashboardData(disable_widget_birthday: $disable_widget_birthday, disable_widget_gratz: $disable_widget_gratz, disable_widget_skill_chart: $disable_widget_skill_chart, disable_widget_borrow_device: $disable_widget_borrow_device, disable_widget_meeting_room: $disable_widget_meeting_room, disable_widget_leave: $disable_widget_leave)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DashboardData'))
      ..add(DiagnosticsProperty(
          'disable_widget_birthday', disable_widget_birthday))
      ..add(DiagnosticsProperty('disable_widget_gratz', disable_widget_gratz))
      ..add(DiagnosticsProperty(
          'disable_widget_skill_chart', disable_widget_skill_chart))
      ..add(DiagnosticsProperty(
          'disable_widget_borrow_device', disable_widget_borrow_device))
      ..add(DiagnosticsProperty(
          'disable_widget_meeting_room', disable_widget_meeting_room))
      ..add(DiagnosticsProperty('disable_widget_leave', disable_widget_leave));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardData &&
            const DeepCollectionEquality().equals(
                other.disable_widget_birthday, disable_widget_birthday) &&
            const DeepCollectionEquality()
                .equals(other.disable_widget_gratz, disable_widget_gratz) &&
            const DeepCollectionEquality().equals(
                other.disable_widget_skill_chart, disable_widget_skill_chart) &&
            const DeepCollectionEquality().equals(
                other.disable_widget_borrow_device,
                disable_widget_borrow_device) &&
            const DeepCollectionEquality().equals(
                other.disable_widget_meeting_room,
                disable_widget_meeting_room) &&
            const DeepCollectionEquality()
                .equals(other.disable_widget_leave, disable_widget_leave));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_widget_birthday),
      const DeepCollectionEquality().hash(disable_widget_gratz),
      const DeepCollectionEquality().hash(disable_widget_skill_chart),
      const DeepCollectionEquality().hash(disable_widget_borrow_device),
      const DeepCollectionEquality().hash(disable_widget_meeting_room),
      const DeepCollectionEquality().hash(disable_widget_leave));

  @JsonKey(ignore: true)
  @override
  _$$_DashboardDataCopyWith<_$_DashboardData> get copyWith =>
      __$$_DashboardDataCopyWithImpl<_$_DashboardData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardDataToJson(
      this,
    );
  }
}

abstract class _DashboardData implements DashboardData {
  const factory _DashboardData(
      {required final bool disable_widget_birthday,
      required final bool disable_widget_gratz,
      required final bool disable_widget_skill_chart,
      required final bool disable_widget_borrow_device,
      required final bool disable_widget_meeting_room,
      required final bool disable_widget_leave}) = _$_DashboardData;

  factory _DashboardData.fromJson(Map<String, dynamic> json) =
      _$_DashboardData.fromJson;

  @override
  bool get disable_widget_birthday;
  @override
  bool get disable_widget_gratz;
  @override
  bool get disable_widget_skill_chart;
  @override
  bool get disable_widget_borrow_device;
  @override
  bool get disable_widget_meeting_room;
  @override
  bool get disable_widget_leave;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardDataCopyWith<_$_DashboardData> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeInitData _$EmployeeInitDataFromJson(Map<String, dynamic> json) {
  return _EmployeeInitData.fromJson(json);
}

/// @nodoc
mixin _$EmployeeInitData {
  bool get disable_staff_list => throw _privateConstructorUsedError;
  bool get disable_personal_information => throw _privateConstructorUsedError;
  bool get disable_working_information => throw _privateConstructorUsedError;
  bool get disable_contact_information => throw _privateConstructorUsedError;
  bool get disable_language_information => throw _privateConstructorUsedError;
  bool get disable_skill_information => throw _privateConstructorUsedError;
  bool get disable_skill_information_additional =>
      throw _privateConstructorUsedError;
  bool get disable_project_information => throw _privateConstructorUsedError;
  bool get disable_project_information_additional =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeInitDataCopyWith<EmployeeInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeInitDataCopyWith<$Res> {
  factory $EmployeeInitDataCopyWith(
          EmployeeInitData value, $Res Function(EmployeeInitData) then) =
      _$EmployeeInitDataCopyWithImpl<$Res>;
  $Res call(
      {bool disable_staff_list,
      bool disable_personal_information,
      bool disable_working_information,
      bool disable_contact_information,
      bool disable_language_information,
      bool disable_skill_information,
      bool disable_skill_information_additional,
      bool disable_project_information,
      bool disable_project_information_additional});
}

/// @nodoc
class _$EmployeeInitDataCopyWithImpl<$Res>
    implements $EmployeeInitDataCopyWith<$Res> {
  _$EmployeeInitDataCopyWithImpl(this._value, this._then);

  final EmployeeInitData _value;
  // ignore: unused_field
  final $Res Function(EmployeeInitData) _then;

  @override
  $Res call({
    Object? disable_staff_list = freezed,
    Object? disable_personal_information = freezed,
    Object? disable_working_information = freezed,
    Object? disable_contact_information = freezed,
    Object? disable_language_information = freezed,
    Object? disable_skill_information = freezed,
    Object? disable_skill_information_additional = freezed,
    Object? disable_project_information = freezed,
    Object? disable_project_information_additional = freezed,
  }) {
    return _then(_value.copyWith(
      disable_staff_list: disable_staff_list == freezed
          ? _value.disable_staff_list
          : disable_staff_list // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_personal_information: disable_personal_information == freezed
          ? _value.disable_personal_information
          : disable_personal_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_working_information: disable_working_information == freezed
          ? _value.disable_working_information
          : disable_working_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_contact_information: disable_contact_information == freezed
          ? _value.disable_contact_information
          : disable_contact_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_language_information: disable_language_information == freezed
          ? _value.disable_language_information
          : disable_language_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_skill_information: disable_skill_information == freezed
          ? _value.disable_skill_information
          : disable_skill_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_skill_information_additional: disable_skill_information_additional ==
              freezed
          ? _value.disable_skill_information_additional
          : disable_skill_information_additional // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_project_information: disable_project_information == freezed
          ? _value.disable_project_information
          : disable_project_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_project_information_additional:
          disable_project_information_additional == freezed
              ? _value.disable_project_information_additional
              : disable_project_information_additional // ignore: cast_nullable_to_non_nullable
                  as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeInitDataCopyWith<$Res>
    implements $EmployeeInitDataCopyWith<$Res> {
  factory _$$_EmployeeInitDataCopyWith(
          _$_EmployeeInitData value, $Res Function(_$_EmployeeInitData) then) =
      __$$_EmployeeInitDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool disable_staff_list,
      bool disable_personal_information,
      bool disable_working_information,
      bool disable_contact_information,
      bool disable_language_information,
      bool disable_skill_information,
      bool disable_skill_information_additional,
      bool disable_project_information,
      bool disable_project_information_additional});
}

/// @nodoc
class __$$_EmployeeInitDataCopyWithImpl<$Res>
    extends _$EmployeeInitDataCopyWithImpl<$Res>
    implements _$$_EmployeeInitDataCopyWith<$Res> {
  __$$_EmployeeInitDataCopyWithImpl(
      _$_EmployeeInitData _value, $Res Function(_$_EmployeeInitData) _then)
      : super(_value, (v) => _then(v as _$_EmployeeInitData));

  @override
  _$_EmployeeInitData get _value => super._value as _$_EmployeeInitData;

  @override
  $Res call({
    Object? disable_staff_list = freezed,
    Object? disable_personal_information = freezed,
    Object? disable_working_information = freezed,
    Object? disable_contact_information = freezed,
    Object? disable_language_information = freezed,
    Object? disable_skill_information = freezed,
    Object? disable_skill_information_additional = freezed,
    Object? disable_project_information = freezed,
    Object? disable_project_information_additional = freezed,
  }) {
    return _then(_$_EmployeeInitData(
      disable_staff_list: disable_staff_list == freezed
          ? _value.disable_staff_list
          : disable_staff_list // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_personal_information: disable_personal_information == freezed
          ? _value.disable_personal_information
          : disable_personal_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_working_information: disable_working_information == freezed
          ? _value.disable_working_information
          : disable_working_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_contact_information: disable_contact_information == freezed
          ? _value.disable_contact_information
          : disable_contact_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_language_information: disable_language_information == freezed
          ? _value.disable_language_information
          : disable_language_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_skill_information: disable_skill_information == freezed
          ? _value.disable_skill_information
          : disable_skill_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_skill_information_additional: disable_skill_information_additional ==
              freezed
          ? _value.disable_skill_information_additional
          : disable_skill_information_additional // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_project_information: disable_project_information == freezed
          ? _value.disable_project_information
          : disable_project_information // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_project_information_additional:
          disable_project_information_additional == freezed
              ? _value.disable_project_information_additional
              : disable_project_information_additional // ignore: cast_nullable_to_non_nullable
                  as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeInitData
    with DiagnosticableTreeMixin
    implements _EmployeeInitData {
  const _$_EmployeeInitData(
      {required this.disable_staff_list,
      required this.disable_personal_information,
      required this.disable_working_information,
      required this.disable_contact_information,
      required this.disable_language_information,
      required this.disable_skill_information,
      required this.disable_skill_information_additional,
      required this.disable_project_information,
      required this.disable_project_information_additional});

  factory _$_EmployeeInitData.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeInitDataFromJson(json);

  @override
  final bool disable_staff_list;
  @override
  final bool disable_personal_information;
  @override
  final bool disable_working_information;
  @override
  final bool disable_contact_information;
  @override
  final bool disable_language_information;
  @override
  final bool disable_skill_information;
  @override
  final bool disable_skill_information_additional;
  @override
  final bool disable_project_information;
  @override
  final bool disable_project_information_additional;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeInitData(disable_staff_list: $disable_staff_list, disable_personal_information: $disable_personal_information, disable_working_information: $disable_working_information, disable_contact_information: $disable_contact_information, disable_language_information: $disable_language_information, disable_skill_information: $disable_skill_information, disable_skill_information_additional: $disable_skill_information_additional, disable_project_information: $disable_project_information, disable_project_information_additional: $disable_project_information_additional)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeInitData'))
      ..add(DiagnosticsProperty('disable_staff_list', disable_staff_list))
      ..add(DiagnosticsProperty(
          'disable_personal_information', disable_personal_information))
      ..add(DiagnosticsProperty(
          'disable_working_information', disable_working_information))
      ..add(DiagnosticsProperty(
          'disable_contact_information', disable_contact_information))
      ..add(DiagnosticsProperty(
          'disable_language_information', disable_language_information))
      ..add(DiagnosticsProperty(
          'disable_skill_information', disable_skill_information))
      ..add(DiagnosticsProperty('disable_skill_information_additional',
          disable_skill_information_additional))
      ..add(DiagnosticsProperty(
          'disable_project_information', disable_project_information))
      ..add(DiagnosticsProperty('disable_project_information_additional',
          disable_project_information_additional));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_staff_list, disable_staff_list) &&
            const DeepCollectionEquality().equals(
                other.disable_personal_information,
                disable_personal_information) &&
            const DeepCollectionEquality().equals(
                other.disable_working_information,
                disable_working_information) &&
            const DeepCollectionEquality().equals(
                other.disable_contact_information,
                disable_contact_information) &&
            const DeepCollectionEquality().equals(
                other.disable_language_information,
                disable_language_information) &&
            const DeepCollectionEquality().equals(
                other.disable_skill_information, disable_skill_information) &&
            const DeepCollectionEquality().equals(
                other.disable_skill_information_additional,
                disable_skill_information_additional) &&
            const DeepCollectionEquality().equals(
                other.disable_project_information,
                disable_project_information) &&
            const DeepCollectionEquality().equals(
                other.disable_project_information_additional,
                disable_project_information_additional));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_staff_list),
      const DeepCollectionEquality().hash(disable_personal_information),
      const DeepCollectionEquality().hash(disable_working_information),
      const DeepCollectionEquality().hash(disable_contact_information),
      const DeepCollectionEquality().hash(disable_language_information),
      const DeepCollectionEquality().hash(disable_skill_information),
      const DeepCollectionEquality().hash(disable_skill_information_additional),
      const DeepCollectionEquality().hash(disable_project_information),
      const DeepCollectionEquality()
          .hash(disable_project_information_additional));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeInitDataCopyWith<_$_EmployeeInitData> get copyWith =>
      __$$_EmployeeInitDataCopyWithImpl<_$_EmployeeInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeInitDataToJson(
      this,
    );
  }
}

abstract class _EmployeeInitData implements EmployeeInitData {
  const factory _EmployeeInitData(
          {required final bool disable_staff_list,
          required final bool disable_personal_information,
          required final bool disable_working_information,
          required final bool disable_contact_information,
          required final bool disable_language_information,
          required final bool disable_skill_information,
          required final bool disable_skill_information_additional,
          required final bool disable_project_information,
          required final bool disable_project_information_additional}) =
      _$_EmployeeInitData;

  factory _EmployeeInitData.fromJson(Map<String, dynamic> json) =
      _$_EmployeeInitData.fromJson;

  @override
  bool get disable_staff_list;
  @override
  bool get disable_personal_information;
  @override
  bool get disable_working_information;
  @override
  bool get disable_contact_information;
  @override
  bool get disable_language_information;
  @override
  bool get disable_skill_information;
  @override
  bool get disable_skill_information_additional;
  @override
  bool get disable_project_information;
  @override
  bool get disable_project_information_additional;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeInitDataCopyWith<_$_EmployeeInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyInitData _$CompanyInitDataFromJson(Map<String, dynamic> json) {
  return _CompanyInitData.fromJson(json);
}

/// @nodoc
mixin _$CompanyInitData {
  bool get disable_module => throw _privateConstructorUsedError;
  bool get disable_company_structure => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInitDataCopyWith<CompanyInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInitDataCopyWith<$Res> {
  factory $CompanyInitDataCopyWith(
          CompanyInitData value, $Res Function(CompanyInitData) then) =
      _$CompanyInitDataCopyWithImpl<$Res>;
  $Res call({bool disable_module, bool disable_company_structure});
}

/// @nodoc
class _$CompanyInitDataCopyWithImpl<$Res>
    implements $CompanyInitDataCopyWith<$Res> {
  _$CompanyInitDataCopyWithImpl(this._value, this._then);

  final CompanyInitData _value;
  // ignore: unused_field
  final $Res Function(CompanyInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_company_structure = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_company_structure: disable_company_structure == freezed
          ? _value.disable_company_structure
          : disable_company_structure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyInitDataCopyWith<$Res>
    implements $CompanyInitDataCopyWith<$Res> {
  factory _$$_CompanyInitDataCopyWith(
          _$_CompanyInitData value, $Res Function(_$_CompanyInitData) then) =
      __$$_CompanyInitDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module, bool disable_company_structure});
}

/// @nodoc
class __$$_CompanyInitDataCopyWithImpl<$Res>
    extends _$CompanyInitDataCopyWithImpl<$Res>
    implements _$$_CompanyInitDataCopyWith<$Res> {
  __$$_CompanyInitDataCopyWithImpl(
      _$_CompanyInitData _value, $Res Function(_$_CompanyInitData) _then)
      : super(_value, (v) => _then(v as _$_CompanyInitData));

  @override
  _$_CompanyInitData get _value => super._value as _$_CompanyInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_company_structure = freezed,
  }) {
    return _then(_$_CompanyInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_company_structure: disable_company_structure == freezed
          ? _value.disable_company_structure
          : disable_company_structure // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyInitData
    with DiagnosticableTreeMixin
    implements _CompanyInitData {
  const _$_CompanyInitData(
      {required this.disable_module, required this.disable_company_structure});

  factory _$_CompanyInitData.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyInitDataFromJson(json);

  @override
  final bool disable_module;
  @override
  final bool disable_company_structure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyInitData(disable_module: $disable_module, disable_company_structure: $disable_company_structure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module))
      ..add(DiagnosticsProperty(
          'disable_company_structure', disable_company_structure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module) &&
            const DeepCollectionEquality().equals(
                other.disable_company_structure, disable_company_structure));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_module),
      const DeepCollectionEquality().hash(disable_company_structure));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyInitDataCopyWith<_$_CompanyInitData> get copyWith =>
      __$$_CompanyInitDataCopyWithImpl<_$_CompanyInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyInitDataToJson(
      this,
    );
  }
}

abstract class _CompanyInitData implements CompanyInitData {
  const factory _CompanyInitData(
      {required final bool disable_module,
      required final bool disable_company_structure}) = _$_CompanyInitData;

  factory _CompanyInitData.fromJson(Map<String, dynamic> json) =
      _$_CompanyInitData.fromJson;

  @override
  bool get disable_module;
  @override
  bool get disable_company_structure;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyInitDataCopyWith<_$_CompanyInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

BorrowInitData _$BorrowInitDataFromJson(Map<String, dynamic> json) {
  return _BorrowInitData.fromJson(json);
}

/// @nodoc
mixin _$BorrowInitData {
  bool get disable_module => throw _privateConstructorUsedError;
  bool get disable_borrow_device_approve => throw _privateConstructorUsedError;
  bool get disable_borrow_device_return => throw _privateConstructorUsedError;
  bool get disable_borrow_device_reject => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BorrowInitDataCopyWith<BorrowInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorrowInitDataCopyWith<$Res> {
  factory $BorrowInitDataCopyWith(
          BorrowInitData value, $Res Function(BorrowInitData) then) =
      _$BorrowInitDataCopyWithImpl<$Res>;
  $Res call(
      {bool disable_module,
      bool disable_borrow_device_approve,
      bool disable_borrow_device_return,
      bool disable_borrow_device_reject});
}

/// @nodoc
class _$BorrowInitDataCopyWithImpl<$Res>
    implements $BorrowInitDataCopyWith<$Res> {
  _$BorrowInitDataCopyWithImpl(this._value, this._then);

  final BorrowInitData _value;
  // ignore: unused_field
  final $Res Function(BorrowInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_borrow_device_approve = freezed,
    Object? disable_borrow_device_return = freezed,
    Object? disable_borrow_device_reject = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_borrow_device_approve: disable_borrow_device_approve == freezed
          ? _value.disable_borrow_device_approve
          : disable_borrow_device_approve // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_borrow_device_return: disable_borrow_device_return == freezed
          ? _value.disable_borrow_device_return
          : disable_borrow_device_return // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_borrow_device_reject: disable_borrow_device_reject == freezed
          ? _value.disable_borrow_device_reject
          : disable_borrow_device_reject // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_BorrowInitDataCopyWith<$Res>
    implements $BorrowInitDataCopyWith<$Res> {
  factory _$$_BorrowInitDataCopyWith(
          _$_BorrowInitData value, $Res Function(_$_BorrowInitData) then) =
      __$$_BorrowInitDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool disable_module,
      bool disable_borrow_device_approve,
      bool disable_borrow_device_return,
      bool disable_borrow_device_reject});
}

/// @nodoc
class __$$_BorrowInitDataCopyWithImpl<$Res>
    extends _$BorrowInitDataCopyWithImpl<$Res>
    implements _$$_BorrowInitDataCopyWith<$Res> {
  __$$_BorrowInitDataCopyWithImpl(
      _$_BorrowInitData _value, $Res Function(_$_BorrowInitData) _then)
      : super(_value, (v) => _then(v as _$_BorrowInitData));

  @override
  _$_BorrowInitData get _value => super._value as _$_BorrowInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_borrow_device_approve = freezed,
    Object? disable_borrow_device_return = freezed,
    Object? disable_borrow_device_reject = freezed,
  }) {
    return _then(_$_BorrowInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_borrow_device_approve: disable_borrow_device_approve == freezed
          ? _value.disable_borrow_device_approve
          : disable_borrow_device_approve // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_borrow_device_return: disable_borrow_device_return == freezed
          ? _value.disable_borrow_device_return
          : disable_borrow_device_return // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_borrow_device_reject: disable_borrow_device_reject == freezed
          ? _value.disable_borrow_device_reject
          : disable_borrow_device_reject // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BorrowInitData
    with DiagnosticableTreeMixin
    implements _BorrowInitData {
  const _$_BorrowInitData(
      {required this.disable_module,
      required this.disable_borrow_device_approve,
      required this.disable_borrow_device_return,
      required this.disable_borrow_device_reject});

  factory _$_BorrowInitData.fromJson(Map<String, dynamic> json) =>
      _$$_BorrowInitDataFromJson(json);

  @override
  final bool disable_module;
  @override
  final bool disable_borrow_device_approve;
  @override
  final bool disable_borrow_device_return;
  @override
  final bool disable_borrow_device_reject;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowInitData(disable_module: $disable_module, disable_borrow_device_approve: $disable_borrow_device_approve, disable_borrow_device_return: $disable_borrow_device_return, disable_borrow_device_reject: $disable_borrow_device_reject)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module))
      ..add(DiagnosticsProperty(
          'disable_borrow_device_approve', disable_borrow_device_approve))
      ..add(DiagnosticsProperty(
          'disable_borrow_device_return', disable_borrow_device_return))
      ..add(DiagnosticsProperty(
          'disable_borrow_device_reject', disable_borrow_device_reject));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BorrowInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module) &&
            const DeepCollectionEquality().equals(
                other.disable_borrow_device_approve,
                disable_borrow_device_approve) &&
            const DeepCollectionEquality().equals(
                other.disable_borrow_device_return,
                disable_borrow_device_return) &&
            const DeepCollectionEquality().equals(
                other.disable_borrow_device_reject,
                disable_borrow_device_reject));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_module),
      const DeepCollectionEquality().hash(disable_borrow_device_approve),
      const DeepCollectionEquality().hash(disable_borrow_device_return),
      const DeepCollectionEquality().hash(disable_borrow_device_reject));

  @JsonKey(ignore: true)
  @override
  _$$_BorrowInitDataCopyWith<_$_BorrowInitData> get copyWith =>
      __$$_BorrowInitDataCopyWithImpl<_$_BorrowInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BorrowInitDataToJson(
      this,
    );
  }
}

abstract class _BorrowInitData implements BorrowInitData {
  const factory _BorrowInitData(
      {required final bool disable_module,
      required final bool disable_borrow_device_approve,
      required final bool disable_borrow_device_return,
      required final bool disable_borrow_device_reject}) = _$_BorrowInitData;

  factory _BorrowInitData.fromJson(Map<String, dynamic> json) =
      _$_BorrowInitData.fromJson;

  @override
  bool get disable_module;
  @override
  bool get disable_borrow_device_approve;
  @override
  bool get disable_borrow_device_return;
  @override
  bool get disable_borrow_device_reject;
  @override
  @JsonKey(ignore: true)
  _$$_BorrowInitDataCopyWith<_$_BorrowInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

AssetInitData _$AssetInitDataFromJson(Map<String, dynamic> json) {
  return _AssetInitData.fromJson(json);
}

/// @nodoc
mixin _$AssetInitData {
  bool get disable_module => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetInitDataCopyWith<AssetInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetInitDataCopyWith<$Res> {
  factory $AssetInitDataCopyWith(
          AssetInitData value, $Res Function(AssetInitData) then) =
      _$AssetInitDataCopyWithImpl<$Res>;
  $Res call({bool disable_module});
}

/// @nodoc
class _$AssetInitDataCopyWithImpl<$Res>
    implements $AssetInitDataCopyWith<$Res> {
  _$AssetInitDataCopyWithImpl(this._value, this._then);

  final AssetInitData _value;
  // ignore: unused_field
  final $Res Function(AssetInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AssetInitDataCopyWith<$Res>
    implements $AssetInitDataCopyWith<$Res> {
  factory _$$_AssetInitDataCopyWith(
          _$_AssetInitData value, $Res Function(_$_AssetInitData) then) =
      __$$_AssetInitDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module});
}

/// @nodoc
class __$$_AssetInitDataCopyWithImpl<$Res>
    extends _$AssetInitDataCopyWithImpl<$Res>
    implements _$$_AssetInitDataCopyWith<$Res> {
  __$$_AssetInitDataCopyWithImpl(
      _$_AssetInitData _value, $Res Function(_$_AssetInitData) _then)
      : super(_value, (v) => _then(v as _$_AssetInitData));

  @override
  _$_AssetInitData get _value => super._value as _$_AssetInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_$_AssetInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetInitData with DiagnosticableTreeMixin implements _AssetInitData {
  const _$_AssetInitData({required this.disable_module});

  factory _$_AssetInitData.fromJson(Map<String, dynamic> json) =>
      _$$_AssetInitDataFromJson(json);

  @override
  final bool disable_module;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AssetInitData(disable_module: $disable_module)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AssetInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(disable_module));

  @JsonKey(ignore: true)
  @override
  _$$_AssetInitDataCopyWith<_$_AssetInitData> get copyWith =>
      __$$_AssetInitDataCopyWithImpl<_$_AssetInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetInitDataToJson(
      this,
    );
  }
}

abstract class _AssetInitData implements AssetInitData {
  const factory _AssetInitData({required final bool disable_module}) =
      _$_AssetInitData;

  factory _AssetInitData.fromJson(Map<String, dynamic> json) =
      _$_AssetInitData.fromJson;

  @override
  bool get disable_module;
  @override
  @JsonKey(ignore: true)
  _$$_AssetInitDataCopyWith<_$_AssetInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomInitData _$RoomInitDataFromJson(Map<String, dynamic> json) {
  return _RoomInitData.fromJson(json);
}

/// @nodoc
mixin _$RoomInitData {
  bool get disable_module => throw _privateConstructorUsedError;
  bool get disable_room_booking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomInitDataCopyWith<RoomInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomInitDataCopyWith<$Res> {
  factory $RoomInitDataCopyWith(
          RoomInitData value, $Res Function(RoomInitData) then) =
      _$RoomInitDataCopyWithImpl<$Res>;
  $Res call({bool disable_module, bool disable_room_booking});
}

/// @nodoc
class _$RoomInitDataCopyWithImpl<$Res> implements $RoomInitDataCopyWith<$Res> {
  _$RoomInitDataCopyWithImpl(this._value, this._then);

  final RoomInitData _value;
  // ignore: unused_field
  final $Res Function(RoomInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_room_booking = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_room_booking: disable_room_booking == freezed
          ? _value.disable_room_booking
          : disable_room_booking // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomInitDataCopyWith<$Res>
    implements $RoomInitDataCopyWith<$Res> {
  factory _$$_RoomInitDataCopyWith(
          _$_RoomInitData value, $Res Function(_$_RoomInitData) then) =
      __$$_RoomInitDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module, bool disable_room_booking});
}

/// @nodoc
class __$$_RoomInitDataCopyWithImpl<$Res>
    extends _$RoomInitDataCopyWithImpl<$Res>
    implements _$$_RoomInitDataCopyWith<$Res> {
  __$$_RoomInitDataCopyWithImpl(
      _$_RoomInitData _value, $Res Function(_$_RoomInitData) _then)
      : super(_value, (v) => _then(v as _$_RoomInitData));

  @override
  _$_RoomInitData get _value => super._value as _$_RoomInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_room_booking = freezed,
  }) {
    return _then(_$_RoomInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_room_booking: disable_room_booking == freezed
          ? _value.disable_room_booking
          : disable_room_booking // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomInitData with DiagnosticableTreeMixin implements _RoomInitData {
  const _$_RoomInitData(
      {required this.disable_module, required this.disable_room_booking});

  factory _$_RoomInitData.fromJson(Map<String, dynamic> json) =>
      _$$_RoomInitDataFromJson(json);

  @override
  final bool disable_module;
  @override
  final bool disable_room_booking;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomInitData(disable_module: $disable_module, disable_room_booking: $disable_room_booking)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module))
      ..add(DiagnosticsProperty('disable_room_booking', disable_room_booking));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module) &&
            const DeepCollectionEquality()
                .equals(other.disable_room_booking, disable_room_booking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_module),
      const DeepCollectionEquality().hash(disable_room_booking));

  @JsonKey(ignore: true)
  @override
  _$$_RoomInitDataCopyWith<_$_RoomInitData> get copyWith =>
      __$$_RoomInitDataCopyWithImpl<_$_RoomInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomInitDataToJson(
      this,
    );
  }
}

abstract class _RoomInitData implements RoomInitData {
  const factory _RoomInitData(
      {required final bool disable_module,
      required final bool disable_room_booking}) = _$_RoomInitData;

  factory _RoomInitData.fromJson(Map<String, dynamic> json) =
      _$_RoomInitData.fromJson;

  @override
  bool get disable_module;
  @override
  bool get disable_room_booking;
  @override
  @JsonKey(ignore: true)
  _$$_RoomInitDataCopyWith<_$_RoomInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveData _$LeaveDataFromJson(Map<String, dynamic> json) {
  return _LeaveData.fromJson(json);
}

/// @nodoc
mixin _$LeaveData {
  List<StatusData> get status => throw _privateConstructorUsedError;
  int get annual_leave => throw _privateConstructorUsedError;
  int get birthday_leave => throw _privateConstructorUsedError;
  int get period_leave => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveDataCopyWith<LeaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveDataCopyWith<$Res> {
  factory $LeaveDataCopyWith(LeaveData value, $Res Function(LeaveData) then) =
      _$LeaveDataCopyWithImpl<$Res>;
  $Res call(
      {List<StatusData> status,
      int annual_leave,
      int birthday_leave,
      int period_leave});
}

/// @nodoc
class _$LeaveDataCopyWithImpl<$Res> implements $LeaveDataCopyWith<$Res> {
  _$LeaveDataCopyWithImpl(this._value, this._then);

  final LeaveData _value;
  // ignore: unused_field
  final $Res Function(LeaveData) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? annual_leave = freezed,
    Object? birthday_leave = freezed,
    Object? period_leave = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<StatusData>,
      annual_leave: annual_leave == freezed
          ? _value.annual_leave
          : annual_leave // ignore: cast_nullable_to_non_nullable
              as int,
      birthday_leave: birthday_leave == freezed
          ? _value.birthday_leave
          : birthday_leave // ignore: cast_nullable_to_non_nullable
              as int,
      period_leave: period_leave == freezed
          ? _value.period_leave
          : period_leave // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LeaveDataCopyWith<$Res> implements $LeaveDataCopyWith<$Res> {
  factory _$$_LeaveDataCopyWith(
          _$_LeaveData value, $Res Function(_$_LeaveData) then) =
      __$$_LeaveDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<StatusData> status,
      int annual_leave,
      int birthday_leave,
      int period_leave});
}

/// @nodoc
class __$$_LeaveDataCopyWithImpl<$Res> extends _$LeaveDataCopyWithImpl<$Res>
    implements _$$_LeaveDataCopyWith<$Res> {
  __$$_LeaveDataCopyWithImpl(
      _$_LeaveData _value, $Res Function(_$_LeaveData) _then)
      : super(_value, (v) => _then(v as _$_LeaveData));

  @override
  _$_LeaveData get _value => super._value as _$_LeaveData;

  @override
  $Res call({
    Object? status = freezed,
    Object? annual_leave = freezed,
    Object? birthday_leave = freezed,
    Object? period_leave = freezed,
  }) {
    return _then(_$_LeaveData(
      status: status == freezed
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<StatusData>,
      annual_leave: annual_leave == freezed
          ? _value.annual_leave
          : annual_leave // ignore: cast_nullable_to_non_nullable
              as int,
      birthday_leave: birthday_leave == freezed
          ? _value.birthday_leave
          : birthday_leave // ignore: cast_nullable_to_non_nullable
              as int,
      period_leave: period_leave == freezed
          ? _value.period_leave
          : period_leave // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaveData with DiagnosticableTreeMixin implements _LeaveData {
  const _$_LeaveData(
      {required final List<StatusData> status,
      required this.annual_leave,
      required this.birthday_leave,
      required this.period_leave})
      : _status = status;

  factory _$_LeaveData.fromJson(Map<String, dynamic> json) =>
      _$$_LeaveDataFromJson(json);

  final List<StatusData> _status;
  @override
  List<StatusData> get status {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_status);
  }

  @override
  final int annual_leave;
  @override
  final int birthday_leave;
  @override
  final int period_leave;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaveData(status: $status, annual_leave: $annual_leave, birthday_leave: $birthday_leave, period_leave: $period_leave)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LeaveData'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('annual_leave', annual_leave))
      ..add(DiagnosticsProperty('birthday_leave', birthday_leave))
      ..add(DiagnosticsProperty('period_leave', period_leave));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveData &&
            const DeepCollectionEquality().equals(other._status, _status) &&
            const DeepCollectionEquality()
                .equals(other.annual_leave, annual_leave) &&
            const DeepCollectionEquality()
                .equals(other.birthday_leave, birthday_leave) &&
            const DeepCollectionEquality()
                .equals(other.period_leave, period_leave));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_status),
      const DeepCollectionEquality().hash(annual_leave),
      const DeepCollectionEquality().hash(birthday_leave),
      const DeepCollectionEquality().hash(period_leave));

  @JsonKey(ignore: true)
  @override
  _$$_LeaveDataCopyWith<_$_LeaveData> get copyWith =>
      __$$_LeaveDataCopyWithImpl<_$_LeaveData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaveDataToJson(
      this,
    );
  }
}

abstract class _LeaveData implements LeaveData {
  const factory _LeaveData(
      {required final List<StatusData> status,
      required final int annual_leave,
      required final int birthday_leave,
      required final int period_leave}) = _$_LeaveData;

  factory _LeaveData.fromJson(Map<String, dynamic> json) =
      _$_LeaveData.fromJson;

  @override
  List<StatusData> get status;
  @override
  int get annual_leave;
  @override
  int get birthday_leave;
  @override
  int get period_leave;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveDataCopyWith<_$_LeaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaveInitData _$LeaveInitDataFromJson(Map<String, dynamic> json) {
  return _LeaveInitData.fromJson(json);
}

/// @nodoc
mixin _$LeaveInitData {
  bool get disable_module => throw _privateConstructorUsedError;
  bool get disable_create_leave => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveInitDataCopyWith<LeaveInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaveInitDataCopyWith<$Res> {
  factory $LeaveInitDataCopyWith(
          LeaveInitData value, $Res Function(LeaveInitData) then) =
      _$LeaveInitDataCopyWithImpl<$Res>;
  $Res call({bool disable_module, bool disable_create_leave});
}

/// @nodoc
class _$LeaveInitDataCopyWithImpl<$Res>
    implements $LeaveInitDataCopyWith<$Res> {
  _$LeaveInitDataCopyWithImpl(this._value, this._then);

  final LeaveInitData _value;
  // ignore: unused_field
  final $Res Function(LeaveInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_create_leave = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_create_leave: disable_create_leave == freezed
          ? _value.disable_create_leave
          : disable_create_leave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LeaveInitDataCopyWith<$Res>
    implements $LeaveInitDataCopyWith<$Res> {
  factory _$$_LeaveInitDataCopyWith(
          _$_LeaveInitData value, $Res Function(_$_LeaveInitData) then) =
      __$$_LeaveInitDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module, bool disable_create_leave});
}

/// @nodoc
class __$$_LeaveInitDataCopyWithImpl<$Res>
    extends _$LeaveInitDataCopyWithImpl<$Res>
    implements _$$_LeaveInitDataCopyWith<$Res> {
  __$$_LeaveInitDataCopyWithImpl(
      _$_LeaveInitData _value, $Res Function(_$_LeaveInitData) _then)
      : super(_value, (v) => _then(v as _$_LeaveInitData));

  @override
  _$_LeaveInitData get _value => super._value as _$_LeaveInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_create_leave = freezed,
  }) {
    return _then(_$_LeaveInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_create_leave: disable_create_leave == freezed
          ? _value.disable_create_leave
          : disable_create_leave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeaveInitData with DiagnosticableTreeMixin implements _LeaveInitData {
  const _$_LeaveInitData(
      {required this.disable_module, required this.disable_create_leave});

  factory _$_LeaveInitData.fromJson(Map<String, dynamic> json) =>
      _$$_LeaveInitDataFromJson(json);

  @override
  final bool disable_module;
  @override
  final bool disable_create_leave;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LeaveInitData(disable_module: $disable_module, disable_create_leave: $disable_create_leave)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LeaveInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module))
      ..add(DiagnosticsProperty('disable_create_leave', disable_create_leave));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeaveInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module) &&
            const DeepCollectionEquality()
                .equals(other.disable_create_leave, disable_create_leave));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_module),
      const DeepCollectionEquality().hash(disable_create_leave));

  @JsonKey(ignore: true)
  @override
  _$$_LeaveInitDataCopyWith<_$_LeaveInitData> get copyWith =>
      __$$_LeaveInitDataCopyWithImpl<_$_LeaveInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeaveInitDataToJson(
      this,
    );
  }
}

abstract class _LeaveInitData implements LeaveInitData {
  const factory _LeaveInitData(
      {required final bool disable_module,
      required final bool disable_create_leave}) = _$_LeaveInitData;

  factory _LeaveInitData.fromJson(Map<String, dynamic> json) =
      _$_LeaveInitData.fromJson;

  @override
  bool get disable_module;
  @override
  bool get disable_create_leave;
  @override
  @JsonKey(ignore: true)
  _$$_LeaveInitDataCopyWith<_$_LeaveInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

CalendarInitData _$CalendarInitDataFromJson(Map<String, dynamic> json) {
  return _CalendarInitData.fromJson(json);
}

/// @nodoc
mixin _$CalendarInitData {
  bool get disable_module => throw _privateConstructorUsedError;
  bool get disable_custom_module => throw _privateConstructorUsedError;
  bool get disable_google_module => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarInitDataCopyWith<CalendarInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarInitDataCopyWith<$Res> {
  factory $CalendarInitDataCopyWith(
          CalendarInitData value, $Res Function(CalendarInitData) then) =
      _$CalendarInitDataCopyWithImpl<$Res>;
  $Res call(
      {bool disable_module,
      bool disable_custom_module,
      bool disable_google_module});
}

/// @nodoc
class _$CalendarInitDataCopyWithImpl<$Res>
    implements $CalendarInitDataCopyWith<$Res> {
  _$CalendarInitDataCopyWithImpl(this._value, this._then);

  final CalendarInitData _value;
  // ignore: unused_field
  final $Res Function(CalendarInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_custom_module = freezed,
    Object? disable_google_module = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_custom_module: disable_custom_module == freezed
          ? _value.disable_custom_module
          : disable_custom_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_google_module: disable_google_module == freezed
          ? _value.disable_google_module
          : disable_google_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarInitDataCopyWith<$Res>
    implements $CalendarInitDataCopyWith<$Res> {
  factory _$$_CalendarInitDataCopyWith(
          _$_CalendarInitData value, $Res Function(_$_CalendarInitData) then) =
      __$$_CalendarInitDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool disable_module,
      bool disable_custom_module,
      bool disable_google_module});
}

/// @nodoc
class __$$_CalendarInitDataCopyWithImpl<$Res>
    extends _$CalendarInitDataCopyWithImpl<$Res>
    implements _$$_CalendarInitDataCopyWith<$Res> {
  __$$_CalendarInitDataCopyWithImpl(
      _$_CalendarInitData _value, $Res Function(_$_CalendarInitData) _then)
      : super(_value, (v) => _then(v as _$_CalendarInitData));

  @override
  _$_CalendarInitData get _value => super._value as _$_CalendarInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? disable_custom_module = freezed,
    Object? disable_google_module = freezed,
  }) {
    return _then(_$_CalendarInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_custom_module: disable_custom_module == freezed
          ? _value.disable_custom_module
          : disable_custom_module // ignore: cast_nullable_to_non_nullable
              as bool,
      disable_google_module: disable_google_module == freezed
          ? _value.disable_google_module
          : disable_google_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarInitData
    with DiagnosticableTreeMixin
    implements _CalendarInitData {
  const _$_CalendarInitData(
      {required this.disable_module,
      required this.disable_custom_module,
      required this.disable_google_module});

  factory _$_CalendarInitData.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarInitDataFromJson(json);

  @override
  final bool disable_module;
  @override
  final bool disable_custom_module;
  @override
  final bool disable_google_module;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarInitData(disable_module: $disable_module, disable_custom_module: $disable_custom_module, disable_google_module: $disable_google_module)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalendarInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module))
      ..add(DiagnosticsProperty('disable_custom_module', disable_custom_module))
      ..add(
          DiagnosticsProperty('disable_google_module', disable_google_module));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module) &&
            const DeepCollectionEquality()
                .equals(other.disable_custom_module, disable_custom_module) &&
            const DeepCollectionEquality()
                .equals(other.disable_google_module, disable_google_module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_module),
      const DeepCollectionEquality().hash(disable_custom_module),
      const DeepCollectionEquality().hash(disable_google_module));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarInitDataCopyWith<_$_CalendarInitData> get copyWith =>
      __$$_CalendarInitDataCopyWithImpl<_$_CalendarInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarInitDataToJson(
      this,
    );
  }
}

abstract class _CalendarInitData implements CalendarInitData {
  const factory _CalendarInitData(
      {required final bool disable_module,
      required final bool disable_custom_module,
      required final bool disable_google_module}) = _$_CalendarInitData;

  factory _CalendarInitData.fromJson(Map<String, dynamic> json) =
      _$_CalendarInitData.fromJson;

  @override
  bool get disable_module;
  @override
  bool get disable_custom_module;
  @override
  bool get disable_google_module;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarInitDataCopyWith<_$_CalendarInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeData _$TypeDataFromJson(Map<String, dynamic> json) {
  return _TypeData.fromJson(json);
}

/// @nodoc
mixin _$TypeData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeDataCopyWith<TypeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeDataCopyWith<$Res> {
  factory $TypeDataCopyWith(TypeData value, $Res Function(TypeData) then) =
      _$TypeDataCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$TypeDataCopyWithImpl<$Res> implements $TypeDataCopyWith<$Res> {
  _$TypeDataCopyWithImpl(this._value, this._then);

  final TypeData _value;
  // ignore: unused_field
  final $Res Function(TypeData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TypeDataCopyWith<$Res> implements $TypeDataCopyWith<$Res> {
  factory _$$_TypeDataCopyWith(
          _$_TypeData value, $Res Function(_$_TypeData) then) =
      __$$_TypeDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_TypeDataCopyWithImpl<$Res> extends _$TypeDataCopyWithImpl<$Res>
    implements _$$_TypeDataCopyWith<$Res> {
  __$$_TypeDataCopyWithImpl(
      _$_TypeData _value, $Res Function(_$_TypeData) _then)
      : super(_value, (v) => _then(v as _$_TypeData));

  @override
  _$_TypeData get _value => super._value as _$_TypeData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_TypeData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TypeData with DiagnosticableTreeMixin implements _TypeData {
  const _$_TypeData({required this.id, required this.name});

  factory _$_TypeData.fromJson(Map<String, dynamic> json) =>
      _$$_TypeDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TypeData(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TypeData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_TypeDataCopyWith<_$_TypeData> get copyWith =>
      __$$_TypeDataCopyWithImpl<_$_TypeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TypeDataToJson(
      this,
    );
  }
}

abstract class _TypeData implements TypeData {
  const factory _TypeData({required final int id, required final String name}) =
      _$_TypeData;

  factory _TypeData.fromJson(Map<String, dynamic> json) = _$_TypeData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TypeDataCopyWith<_$_TypeData> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusData _$StatusDataFromJson(Map<String, dynamic> json) {
  return _StatusData.fromJson(json);
}

/// @nodoc
mixin _$StatusData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusDataCopyWith<StatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusDataCopyWith<$Res> {
  factory $StatusDataCopyWith(
          StatusData value, $Res Function(StatusData) then) =
      _$StatusDataCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$StatusDataCopyWithImpl<$Res> implements $StatusDataCopyWith<$Res> {
  _$StatusDataCopyWithImpl(this._value, this._then);

  final StatusData _value;
  // ignore: unused_field
  final $Res Function(StatusData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StatusDataCopyWith<$Res>
    implements $StatusDataCopyWith<$Res> {
  factory _$$_StatusDataCopyWith(
          _$_StatusData value, $Res Function(_$_StatusData) then) =
      __$$_StatusDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_StatusDataCopyWithImpl<$Res> extends _$StatusDataCopyWithImpl<$Res>
    implements _$$_StatusDataCopyWith<$Res> {
  __$$_StatusDataCopyWithImpl(
      _$_StatusData _value, $Res Function(_$_StatusData) _then)
      : super(_value, (v) => _then(v as _$_StatusData));

  @override
  _$_StatusData get _value => super._value as _$_StatusData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_StatusData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusData with DiagnosticableTreeMixin implements _StatusData {
  const _$_StatusData({required this.id, required this.name});

  factory _$_StatusData.fromJson(Map<String, dynamic> json) =>
      _$$_StatusDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatusData(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatusData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_StatusDataCopyWith<_$_StatusData> get copyWith =>
      __$$_StatusDataCopyWithImpl<_$_StatusData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusDataToJson(
      this,
    );
  }
}

abstract class _StatusData implements StatusData {
  const factory _StatusData(
      {required final int id, required final String name}) = _$_StatusData;

  factory _StatusData.fromJson(Map<String, dynamic> json) =
      _$_StatusData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StatusDataCopyWith<_$_StatusData> get copyWith =>
      throw _privateConstructorUsedError;
}

RecurringData _$RecurringDataFromJson(Map<String, dynamic> json) {
  return _RecurringData.fromJson(json);
}

/// @nodoc
mixin _$RecurringData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecurringDataCopyWith<RecurringData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecurringDataCopyWith<$Res> {
  factory $RecurringDataCopyWith(
          RecurringData value, $Res Function(RecurringData) then) =
      _$RecurringDataCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$RecurringDataCopyWithImpl<$Res>
    implements $RecurringDataCopyWith<$Res> {
  _$RecurringDataCopyWithImpl(this._value, this._then);

  final RecurringData _value;
  // ignore: unused_field
  final $Res Function(RecurringData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RecurringDataCopyWith<$Res>
    implements $RecurringDataCopyWith<$Res> {
  factory _$$_RecurringDataCopyWith(
          _$_RecurringData value, $Res Function(_$_RecurringData) then) =
      __$$_RecurringDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_RecurringDataCopyWithImpl<$Res>
    extends _$RecurringDataCopyWithImpl<$Res>
    implements _$$_RecurringDataCopyWith<$Res> {
  __$$_RecurringDataCopyWithImpl(
      _$_RecurringData _value, $Res Function(_$_RecurringData) _then)
      : super(_value, (v) => _then(v as _$_RecurringData));

  @override
  _$_RecurringData get _value => super._value as _$_RecurringData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_RecurringData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecurringData with DiagnosticableTreeMixin implements _RecurringData {
  const _$_RecurringData({required this.id, required this.name});

  factory _$_RecurringData.fromJson(Map<String, dynamic> json) =>
      _$$_RecurringDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecurringData(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecurringData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecurringData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_RecurringDataCopyWith<_$_RecurringData> get copyWith =>
      __$$_RecurringDataCopyWithImpl<_$_RecurringData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecurringDataToJson(
      this,
    );
  }
}

abstract class _RecurringData implements RecurringData {
  const factory _RecurringData(
      {required final int id, required final String name}) = _$_RecurringData;

  factory _RecurringData.fromJson(Map<String, dynamic> json) =
      _$_RecurringData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RecurringDataCopyWith<_$_RecurringData> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkingInitData _$WorkingInitDataFromJson(Map<String, dynamic> json) {
  return _WorkingInitData.fromJson(json);
}

/// @nodoc
mixin _$WorkingInitData {
  bool get disable_module => throw _privateConstructorUsedError;
  int get depreciation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingInitDataCopyWith<WorkingInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingInitDataCopyWith<$Res> {
  factory $WorkingInitDataCopyWith(
          WorkingInitData value, $Res Function(WorkingInitData) then) =
      _$WorkingInitDataCopyWithImpl<$Res>;
  $Res call({bool disable_module, int depreciation});
}

/// @nodoc
class _$WorkingInitDataCopyWithImpl<$Res>
    implements $WorkingInitDataCopyWith<$Res> {
  _$WorkingInitDataCopyWithImpl(this._value, this._then);

  final WorkingInitData _value;
  // ignore: unused_field
  final $Res Function(WorkingInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? depreciation = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      depreciation: depreciation == freezed
          ? _value.depreciation
          : depreciation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkingInitDataCopyWith<$Res>
    implements $WorkingInitDataCopyWith<$Res> {
  factory _$$_WorkingInitDataCopyWith(
          _$_WorkingInitData value, $Res Function(_$_WorkingInitData) then) =
      __$$_WorkingInitDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module, int depreciation});
}

/// @nodoc
class __$$_WorkingInitDataCopyWithImpl<$Res>
    extends _$WorkingInitDataCopyWithImpl<$Res>
    implements _$$_WorkingInitDataCopyWith<$Res> {
  __$$_WorkingInitDataCopyWithImpl(
      _$_WorkingInitData _value, $Res Function(_$_WorkingInitData) _then)
      : super(_value, (v) => _then(v as _$_WorkingInitData));

  @override
  _$_WorkingInitData get _value => super._value as _$_WorkingInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
    Object? depreciation = freezed,
  }) {
    return _then(_$_WorkingInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
      depreciation: depreciation == freezed
          ? _value.depreciation
          : depreciation // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkingInitData
    with DiagnosticableTreeMixin
    implements _WorkingInitData {
  const _$_WorkingInitData(
      {required this.disable_module, required this.depreciation});

  factory _$_WorkingInitData.fromJson(Map<String, dynamic> json) =>
      _$$_WorkingInitDataFromJson(json);

  @override
  final bool disable_module;
  @override
  final int depreciation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkingInitData(disable_module: $disable_module, depreciation: $depreciation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkingInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module))
      ..add(DiagnosticsProperty('depreciation', depreciation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module) &&
            const DeepCollectionEquality()
                .equals(other.depreciation, depreciation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disable_module),
      const DeepCollectionEquality().hash(depreciation));

  @JsonKey(ignore: true)
  @override
  _$$_WorkingInitDataCopyWith<_$_WorkingInitData> get copyWith =>
      __$$_WorkingInitDataCopyWithImpl<_$_WorkingInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkingInitDataToJson(
      this,
    );
  }
}

abstract class _WorkingInitData implements WorkingInitData {
  const factory _WorkingInitData(
      {required final bool disable_module,
      required final int depreciation}) = _$_WorkingInitData;

  factory _WorkingInitData.fromJson(Map<String, dynamic> json) =
      _$_WorkingInitData.fromJson;

  @override
  bool get disable_module;
  @override
  int get depreciation;
  @override
  @JsonKey(ignore: true)
  _$$_WorkingInitDataCopyWith<_$_WorkingInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceInitData _$AttendanceInitDataFromJson(Map<String, dynamic> json) {
  return _AttendanceInitData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceInitData {
  bool get disable_module => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceInitDataCopyWith<AttendanceInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceInitDataCopyWith<$Res> {
  factory $AttendanceInitDataCopyWith(
          AttendanceInitData value, $Res Function(AttendanceInitData) then) =
      _$AttendanceInitDataCopyWithImpl<$Res>;
  $Res call({bool disable_module});
}

/// @nodoc
class _$AttendanceInitDataCopyWithImpl<$Res>
    implements $AttendanceInitDataCopyWith<$Res> {
  _$AttendanceInitDataCopyWithImpl(this._value, this._then);

  final AttendanceInitData _value;
  // ignore: unused_field
  final $Res Function(AttendanceInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AttendanceInitDataCopyWith<$Res>
    implements $AttendanceInitDataCopyWith<$Res> {
  factory _$$_AttendanceInitDataCopyWith(_$_AttendanceInitData value,
          $Res Function(_$_AttendanceInitData) then) =
      __$$_AttendanceInitDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module});
}

/// @nodoc
class __$$_AttendanceInitDataCopyWithImpl<$Res>
    extends _$AttendanceInitDataCopyWithImpl<$Res>
    implements _$$_AttendanceInitDataCopyWith<$Res> {
  __$$_AttendanceInitDataCopyWithImpl(
      _$_AttendanceInitData _value, $Res Function(_$_AttendanceInitData) _then)
      : super(_value, (v) => _then(v as _$_AttendanceInitData));

  @override
  _$_AttendanceInitData get _value => super._value as _$_AttendanceInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_$_AttendanceInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceInitData
    with DiagnosticableTreeMixin
    implements _AttendanceInitData {
  const _$_AttendanceInitData({required this.disable_module});

  factory _$_AttendanceInitData.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceInitDataFromJson(json);

  @override
  final bool disable_module;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AttendanceInitData(disable_module: $disable_module)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AttendanceInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(disable_module));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceInitDataCopyWith<_$_AttendanceInitData> get copyWith =>
      __$$_AttendanceInitDataCopyWithImpl<_$_AttendanceInitData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceInitDataToJson(
      this,
    );
  }
}

abstract class _AttendanceInitData implements AttendanceInitData {
  const factory _AttendanceInitData({required final bool disable_module}) =
      _$_AttendanceInitData;

  factory _AttendanceInitData.fromJson(Map<String, dynamic> json) =
      _$_AttendanceInitData.fromJson;

  @override
  bool get disable_module;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceInitDataCopyWith<_$_AttendanceInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

SupportInitData _$SupportInitDataFromJson(Map<String, dynamic> json) {
  return _SupportInitData.fromJson(json);
}

/// @nodoc
mixin _$SupportInitData {
  bool get disable_module => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupportInitDataCopyWith<SupportInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportInitDataCopyWith<$Res> {
  factory $SupportInitDataCopyWith(
          SupportInitData value, $Res Function(SupportInitData) then) =
      _$SupportInitDataCopyWithImpl<$Res>;
  $Res call({bool disable_module});
}

/// @nodoc
class _$SupportInitDataCopyWithImpl<$Res>
    implements $SupportInitDataCopyWith<$Res> {
  _$SupportInitDataCopyWithImpl(this._value, this._then);

  final SupportInitData _value;
  // ignore: unused_field
  final $Res Function(SupportInitData) _then;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_value.copyWith(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SupportInitDataCopyWith<$Res>
    implements $SupportInitDataCopyWith<$Res> {
  factory _$$_SupportInitDataCopyWith(
          _$_SupportInitData value, $Res Function(_$_SupportInitData) then) =
      __$$_SupportInitDataCopyWithImpl<$Res>;
  @override
  $Res call({bool disable_module});
}

/// @nodoc
class __$$_SupportInitDataCopyWithImpl<$Res>
    extends _$SupportInitDataCopyWithImpl<$Res>
    implements _$$_SupportInitDataCopyWith<$Res> {
  __$$_SupportInitDataCopyWithImpl(
      _$_SupportInitData _value, $Res Function(_$_SupportInitData) _then)
      : super(_value, (v) => _then(v as _$_SupportInitData));

  @override
  _$_SupportInitData get _value => super._value as _$_SupportInitData;

  @override
  $Res call({
    Object? disable_module = freezed,
  }) {
    return _then(_$_SupportInitData(
      disable_module: disable_module == freezed
          ? _value.disable_module
          : disable_module // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SupportInitData
    with DiagnosticableTreeMixin
    implements _SupportInitData {
  const _$_SupportInitData({required this.disable_module});

  factory _$_SupportInitData.fromJson(Map<String, dynamic> json) =>
      _$$_SupportInitDataFromJson(json);

  @override
  final bool disable_module;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SupportInitData(disable_module: $disable_module)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SupportInitData'))
      ..add(DiagnosticsProperty('disable_module', disable_module));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportInitData &&
            const DeepCollectionEquality()
                .equals(other.disable_module, disable_module));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(disable_module));

  @JsonKey(ignore: true)
  @override
  _$$_SupportInitDataCopyWith<_$_SupportInitData> get copyWith =>
      __$$_SupportInitDataCopyWithImpl<_$_SupportInitData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupportInitDataToJson(
      this,
    );
  }
}

abstract class _SupportInitData implements SupportInitData {
  const factory _SupportInitData({required final bool disable_module}) =
      _$_SupportInitData;

  factory _SupportInitData.fromJson(Map<String, dynamic> json) =
      _$_SupportInitData.fromJson;

  @override
  bool get disable_module;
  @override
  @JsonKey(ignore: true)
  _$$_SupportInitDataCopyWith<_$_SupportInitData> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyData _$CompanyDataFromJson(Map<String, dynamic> json) {
  return _CompanyData.fromJson(json);
}

/// @nodoc
mixin _$CompanyData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get branch_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDataCopyWith<CompanyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDataCopyWith<$Res> {
  factory $CompanyDataCopyWith(
          CompanyData value, $Res Function(CompanyData) then) =
      _$CompanyDataCopyWithImpl<$Res>;
  $Res call({int id, String name, String branch_name});
}

/// @nodoc
class _$CompanyDataCopyWithImpl<$Res> implements $CompanyDataCopyWith<$Res> {
  _$CompanyDataCopyWithImpl(this._value, this._then);

  final CompanyData _value;
  // ignore: unused_field
  final $Res Function(CompanyData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? branch_name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      branch_name: branch_name == freezed
          ? _value.branch_name
          : branch_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyDataCopyWith<$Res>
    implements $CompanyDataCopyWith<$Res> {
  factory _$$_CompanyDataCopyWith(
          _$_CompanyData value, $Res Function(_$_CompanyData) then) =
      __$$_CompanyDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String branch_name});
}

/// @nodoc
class __$$_CompanyDataCopyWithImpl<$Res> extends _$CompanyDataCopyWithImpl<$Res>
    implements _$$_CompanyDataCopyWith<$Res> {
  __$$_CompanyDataCopyWithImpl(
      _$_CompanyData _value, $Res Function(_$_CompanyData) _then)
      : super(_value, (v) => _then(v as _$_CompanyData));

  @override
  _$_CompanyData get _value => super._value as _$_CompanyData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? branch_name = freezed,
  }) {
    return _then(_$_CompanyData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      branch_name: branch_name == freezed
          ? _value.branch_name
          : branch_name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyData with DiagnosticableTreeMixin implements _CompanyData {
  const _$_CompanyData(
      {required this.id, required this.name, required this.branch_name});

  factory _$_CompanyData.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String branch_name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyData(id: $id, name: $name, branch_name: $branch_name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('branch_name', branch_name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.branch_name, branch_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(branch_name));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyDataCopyWith<_$_CompanyData> get copyWith =>
      __$$_CompanyDataCopyWithImpl<_$_CompanyData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyDataToJson(
      this,
    );
  }
}

abstract class _CompanyData implements CompanyData {
  const factory _CompanyData(
      {required final int id,
      required final String name,
      required final String branch_name}) = _$_CompanyData;

  factory _CompanyData.fromJson(Map<String, dynamic> json) =
      _$_CompanyData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get branch_name;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyDataCopyWith<_$_CompanyData> get copyWith =>
      throw _privateConstructorUsedError;
}

DepartmentData _$DepartmentDataFromJson(Map<String, dynamic> json) {
  return _DepartmentData.fromJson(json);
}

/// @nodoc
mixin _$DepartmentData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentDataCopyWith<DepartmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentDataCopyWith<$Res> {
  factory $DepartmentDataCopyWith(
          DepartmentData value, $Res Function(DepartmentData) then) =
      _$DepartmentDataCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$DepartmentDataCopyWithImpl<$Res>
    implements $DepartmentDataCopyWith<$Res> {
  _$DepartmentDataCopyWithImpl(this._value, this._then);

  final DepartmentData _value;
  // ignore: unused_field
  final $Res Function(DepartmentData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DepartmentDataCopyWith<$Res>
    implements $DepartmentDataCopyWith<$Res> {
  factory _$$_DepartmentDataCopyWith(
          _$_DepartmentData value, $Res Function(_$_DepartmentData) then) =
      __$$_DepartmentDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_DepartmentDataCopyWithImpl<$Res>
    extends _$DepartmentDataCopyWithImpl<$Res>
    implements _$$_DepartmentDataCopyWith<$Res> {
  __$$_DepartmentDataCopyWithImpl(
      _$_DepartmentData _value, $Res Function(_$_DepartmentData) _then)
      : super(_value, (v) => _then(v as _$_DepartmentData));

  @override
  _$_DepartmentData get _value => super._value as _$_DepartmentData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DepartmentData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentData
    with DiagnosticableTreeMixin
    implements _DepartmentData {
  const _$_DepartmentData({required this.id, required this.name});

  factory _$_DepartmentData.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DepartmentData(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DepartmentData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DepartmentDataCopyWith<_$_DepartmentData> get copyWith =>
      __$$_DepartmentDataCopyWithImpl<_$_DepartmentData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentDataToJson(
      this,
    );
  }
}

abstract class _DepartmentData implements DepartmentData {
  const factory _DepartmentData(
      {required final int id, required final String name}) = _$_DepartmentData;

  factory _DepartmentData.fromJson(Map<String, dynamic> json) =
      _$_DepartmentData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentDataCopyWith<_$_DepartmentData> get copyWith =>
      throw _privateConstructorUsedError;
}

CompanyDetailData _$CompanyDetailDataFromJson(Map<String, dynamic> json) {
  return _CompanyDetailData.fromJson(json);
}

/// @nodoc
mixin _$CompanyDetailData {
  List<CompanyData> get company => throw _privateConstructorUsedError;
  List<DepartmentData> get department => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyDetailDataCopyWith<CompanyDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyDetailDataCopyWith<$Res> {
  factory $CompanyDetailDataCopyWith(
          CompanyDetailData value, $Res Function(CompanyDetailData) then) =
      _$CompanyDetailDataCopyWithImpl<$Res>;
  $Res call({List<CompanyData> company, List<DepartmentData> department});
}

/// @nodoc
class _$CompanyDetailDataCopyWithImpl<$Res>
    implements $CompanyDetailDataCopyWith<$Res> {
  _$CompanyDetailDataCopyWithImpl(this._value, this._then);

  final CompanyDetailData _value;
  // ignore: unused_field
  final $Res Function(CompanyDetailData) _then;

  @override
  $Res call({
    Object? company = freezed,
    Object? department = freezed,
  }) {
    return _then(_value.copyWith(
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as List<CompanyData>,
      department: department == freezed
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as List<DepartmentData>,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyDetailDataCopyWith<$Res>
    implements $CompanyDetailDataCopyWith<$Res> {
  factory _$$_CompanyDetailDataCopyWith(_$_CompanyDetailData value,
          $Res Function(_$_CompanyDetailData) then) =
      __$$_CompanyDetailDataCopyWithImpl<$Res>;
  @override
  $Res call({List<CompanyData> company, List<DepartmentData> department});
}

/// @nodoc
class __$$_CompanyDetailDataCopyWithImpl<$Res>
    extends _$CompanyDetailDataCopyWithImpl<$Res>
    implements _$$_CompanyDetailDataCopyWith<$Res> {
  __$$_CompanyDetailDataCopyWithImpl(
      _$_CompanyDetailData _value, $Res Function(_$_CompanyDetailData) _then)
      : super(_value, (v) => _then(v as _$_CompanyDetailData));

  @override
  _$_CompanyDetailData get _value => super._value as _$_CompanyDetailData;

  @override
  $Res call({
    Object? company = freezed,
    Object? department = freezed,
  }) {
    return _then(_$_CompanyDetailData(
      company: company == freezed
          ? _value._company
          : company // ignore: cast_nullable_to_non_nullable
              as List<CompanyData>,
      department: department == freezed
          ? _value._department
          : department // ignore: cast_nullable_to_non_nullable
              as List<DepartmentData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyDetailData
    with DiagnosticableTreeMixin
    implements _CompanyDetailData {
  const _$_CompanyDetailData(
      {required final List<CompanyData> company,
      required final List<DepartmentData> department})
      : _company = company,
        _department = department;

  factory _$_CompanyDetailData.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyDetailDataFromJson(json);

  final List<CompanyData> _company;
  @override
  List<CompanyData> get company {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_company);
  }

  final List<DepartmentData> _department;
  @override
  List<DepartmentData> get department {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_department);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CompanyDetailData(company: $company, department: $department)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CompanyDetailData'))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('department', department));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyDetailData &&
            const DeepCollectionEquality().equals(other._company, _company) &&
            const DeepCollectionEquality()
                .equals(other._department, _department));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_company),
      const DeepCollectionEquality().hash(_department));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyDetailDataCopyWith<_$_CompanyDetailData> get copyWith =>
      __$$_CompanyDetailDataCopyWithImpl<_$_CompanyDetailData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyDetailDataToJson(
      this,
    );
  }
}

abstract class _CompanyDetailData implements CompanyDetailData {
  const factory _CompanyDetailData(
      {required final List<CompanyData> company,
      required final List<DepartmentData> department}) = _$_CompanyDetailData;

  factory _CompanyDetailData.fromJson(Map<String, dynamic> json) =
      _$_CompanyDetailData.fromJson;

  @override
  List<CompanyData> get company;
  @override
  List<DepartmentData> get department;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyDetailDataCopyWith<_$_CompanyDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpData _$ExpDataFromJson(Map<String, dynamic> json) {
  return _ExpData.fromJson(json);
}

/// @nodoc
mixin _$ExpData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpDataCopyWith<ExpData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpDataCopyWith<$Res> {
  factory $ExpDataCopyWith(ExpData value, $Res Function(ExpData) then) =
      _$ExpDataCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ExpDataCopyWithImpl<$Res> implements $ExpDataCopyWith<$Res> {
  _$ExpDataCopyWithImpl(this._value, this._then);

  final ExpData _value;
  // ignore: unused_field
  final $Res Function(ExpData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ExpDataCopyWith<$Res> implements $ExpDataCopyWith<$Res> {
  factory _$$_ExpDataCopyWith(
          _$_ExpData value, $Res Function(_$_ExpData) then) =
      __$$_ExpDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_ExpDataCopyWithImpl<$Res> extends _$ExpDataCopyWithImpl<$Res>
    implements _$$_ExpDataCopyWith<$Res> {
  __$$_ExpDataCopyWithImpl(_$_ExpData _value, $Res Function(_$_ExpData) _then)
      : super(_value, (v) => _then(v as _$_ExpData));

  @override
  _$_ExpData get _value => super._value as _$_ExpData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ExpData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExpData with DiagnosticableTreeMixin implements _ExpData {
  const _$_ExpData({required this.id, required this.name});

  factory _$_ExpData.fromJson(Map<String, dynamic> json) =>
      _$$_ExpDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExpData(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExpData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExpData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ExpDataCopyWith<_$_ExpData> get copyWith =>
      __$$_ExpDataCopyWithImpl<_$_ExpData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExpDataToJson(
      this,
    );
  }
}

abstract class _ExpData implements ExpData {
  const factory _ExpData({required final int id, required final String name}) =
      _$_ExpData;

  factory _ExpData.fromJson(Map<String, dynamic> json) = _$_ExpData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ExpDataCopyWith<_$_ExpData> get copyWith =>
      throw _privateConstructorUsedError;
}

GenderData _$GenderDataFromJson(Map<String, dynamic> json) {
  return _GenderData.fromJson(json);
}

/// @nodoc
mixin _$GenderData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderDataCopyWith<GenderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderDataCopyWith<$Res> {
  factory $GenderDataCopyWith(
          GenderData value, $Res Function(GenderData) then) =
      _$GenderDataCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$GenderDataCopyWithImpl<$Res> implements $GenderDataCopyWith<$Res> {
  _$GenderDataCopyWithImpl(this._value, this._then);

  final GenderData _value;
  // ignore: unused_field
  final $Res Function(GenderData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_GenderDataCopyWith<$Res>
    implements $GenderDataCopyWith<$Res> {
  factory _$$_GenderDataCopyWith(
          _$_GenderData value, $Res Function(_$_GenderData) then) =
      __$$_GenderDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GenderDataCopyWithImpl<$Res> extends _$GenderDataCopyWithImpl<$Res>
    implements _$$_GenderDataCopyWith<$Res> {
  __$$_GenderDataCopyWithImpl(
      _$_GenderData _value, $Res Function(_$_GenderData) _then)
      : super(_value, (v) => _then(v as _$_GenderData));

  @override
  _$_GenderData get _value => super._value as _$_GenderData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_GenderData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenderData with DiagnosticableTreeMixin implements _GenderData {
  const _$_GenderData({required this.id, required this.name});

  factory _$_GenderData.fromJson(Map<String, dynamic> json) =>
      _$$_GenderDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GenderData(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GenderData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenderData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_GenderDataCopyWith<_$_GenderData> get copyWith =>
      __$$_GenderDataCopyWithImpl<_$_GenderData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenderDataToJson(
      this,
    );
  }
}

abstract class _GenderData implements GenderData {
  const factory _GenderData(
      {required final int id, required final String name}) = _$_GenderData;

  factory _GenderData.fromJson(Map<String, dynamic> json) =
      _$_GenderData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GenderDataCopyWith<_$_GenderData> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeInformationData _$EmployeeInformationDataFromJson(
    Map<String, dynamic> json) {
  return _EmployeeInformationData.fromJson(json);
}

/// @nodoc
mixin _$EmployeeInformationData {
  List<ExpData> get exp => throw _privateConstructorUsedError;
  List<GenderData> get gender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeInformationDataCopyWith<EmployeeInformationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeInformationDataCopyWith<$Res> {
  factory $EmployeeInformationDataCopyWith(EmployeeInformationData value,
          $Res Function(EmployeeInformationData) then) =
      _$EmployeeInformationDataCopyWithImpl<$Res>;
  $Res call({List<ExpData> exp, List<GenderData> gender});
}

/// @nodoc
class _$EmployeeInformationDataCopyWithImpl<$Res>
    implements $EmployeeInformationDataCopyWith<$Res> {
  _$EmployeeInformationDataCopyWithImpl(this._value, this._then);

  final EmployeeInformationData _value;
  // ignore: unused_field
  final $Res Function(EmployeeInformationData) _then;

  @override
  $Res call({
    Object? exp = freezed,
    Object? gender = freezed,
  }) {
    return _then(_value.copyWith(
      exp: exp == freezed
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as List<ExpData>,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<GenderData>,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeInformationDataCopyWith<$Res>
    implements $EmployeeInformationDataCopyWith<$Res> {
  factory _$$_EmployeeInformationDataCopyWith(_$_EmployeeInformationData value,
          $Res Function(_$_EmployeeInformationData) then) =
      __$$_EmployeeInformationDataCopyWithImpl<$Res>;
  @override
  $Res call({List<ExpData> exp, List<GenderData> gender});
}

/// @nodoc
class __$$_EmployeeInformationDataCopyWithImpl<$Res>
    extends _$EmployeeInformationDataCopyWithImpl<$Res>
    implements _$$_EmployeeInformationDataCopyWith<$Res> {
  __$$_EmployeeInformationDataCopyWithImpl(_$_EmployeeInformationData _value,
      $Res Function(_$_EmployeeInformationData) _then)
      : super(_value, (v) => _then(v as _$_EmployeeInformationData));

  @override
  _$_EmployeeInformationData get _value =>
      super._value as _$_EmployeeInformationData;

  @override
  $Res call({
    Object? exp = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$_EmployeeInformationData(
      exp: exp == freezed
          ? _value._exp
          : exp // ignore: cast_nullable_to_non_nullable
              as List<ExpData>,
      gender: gender == freezed
          ? _value._gender
          : gender // ignore: cast_nullable_to_non_nullable
              as List<GenderData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeInformationData
    with DiagnosticableTreeMixin
    implements _EmployeeInformationData {
  const _$_EmployeeInformationData(
      {required final List<ExpData> exp,
      required final List<GenderData> gender})
      : _exp = exp,
        _gender = gender;

  factory _$_EmployeeInformationData.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeInformationDataFromJson(json);

  final List<ExpData> _exp;
  @override
  List<ExpData> get exp {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exp);
  }

  final List<GenderData> _gender;
  @override
  List<GenderData> get gender {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gender);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeInformationData(exp: $exp, gender: $gender)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeInformationData'))
      ..add(DiagnosticsProperty('exp', exp))
      ..add(DiagnosticsProperty('gender', gender));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeInformationData &&
            const DeepCollectionEquality().equals(other._exp, _exp) &&
            const DeepCollectionEquality().equals(other._gender, _gender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_exp),
      const DeepCollectionEquality().hash(_gender));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeInformationDataCopyWith<_$_EmployeeInformationData>
      get copyWith =>
          __$$_EmployeeInformationDataCopyWithImpl<_$_EmployeeInformationData>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeInformationDataToJson(
      this,
    );
  }
}

abstract class _EmployeeInformationData implements EmployeeInformationData {
  const factory _EmployeeInformationData(
      {required final List<ExpData> exp,
      required final List<GenderData> gender}) = _$_EmployeeInformationData;

  factory _EmployeeInformationData.fromJson(Map<String, dynamic> json) =
      _$_EmployeeInformationData.fromJson;

  @override
  List<ExpData> get exp;
  @override
  List<GenderData> get gender;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeInformationDataCopyWith<_$_EmployeeInformationData>
      get copyWith => throw _privateConstructorUsedError;
}

ImageTypeData _$ImageTypeDataFromJson(Map<String, dynamic> json) {
  return _ImageTypeData.fromJson(json);
}

/// @nodoc
mixin _$ImageTypeData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageTypeDataCopyWith<ImageTypeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageTypeDataCopyWith<$Res> {
  factory $ImageTypeDataCopyWith(
          ImageTypeData value, $Res Function(ImageTypeData) then) =
      _$ImageTypeDataCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$ImageTypeDataCopyWithImpl<$Res>
    implements $ImageTypeDataCopyWith<$Res> {
  _$ImageTypeDataCopyWithImpl(this._value, this._then);

  final ImageTypeData _value;
  // ignore: unused_field
  final $Res Function(ImageTypeData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageTypeDataCopyWith<$Res>
    implements $ImageTypeDataCopyWith<$Res> {
  factory _$$_ImageTypeDataCopyWith(
          _$_ImageTypeData value, $Res Function(_$_ImageTypeData) then) =
      __$$_ImageTypeDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_ImageTypeDataCopyWithImpl<$Res>
    extends _$ImageTypeDataCopyWithImpl<$Res>
    implements _$$_ImageTypeDataCopyWith<$Res> {
  __$$_ImageTypeDataCopyWithImpl(
      _$_ImageTypeData _value, $Res Function(_$_ImageTypeData) _then)
      : super(_value, (v) => _then(v as _$_ImageTypeData));

  @override
  _$_ImageTypeData get _value => super._value as _$_ImageTypeData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ImageTypeData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageTypeData with DiagnosticableTreeMixin implements _ImageTypeData {
  const _$_ImageTypeData({required this.id, required this.name});

  factory _$_ImageTypeData.fromJson(Map<String, dynamic> json) =>
      _$$_ImageTypeDataFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageTypeData(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageTypeData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageTypeData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_ImageTypeDataCopyWith<_$_ImageTypeData> get copyWith =>
      __$$_ImageTypeDataCopyWithImpl<_$_ImageTypeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageTypeDataToJson(
      this,
    );
  }
}

abstract class _ImageTypeData implements ImageTypeData {
  const factory _ImageTypeData(
      {required final int id, required final String name}) = _$_ImageTypeData;

  factory _ImageTypeData.fromJson(Map<String, dynamic> json) =
      _$_ImageTypeData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ImageTypeDataCopyWith<_$_ImageTypeData> get copyWith =>
      throw _privateConstructorUsedError;
}

EmployeeData _$EmployeeDataFromJson(Map<String, dynamic> json) {
  return _EmployeeData.fromJson(json);
}

/// @nodoc
mixin _$EmployeeData {
  EmployeeInformationData get information => throw _privateConstructorUsedError;
  List<ImageTypeData> get images_type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDataCopyWith<EmployeeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDataCopyWith<$Res> {
  factory $EmployeeDataCopyWith(
          EmployeeData value, $Res Function(EmployeeData) then) =
      _$EmployeeDataCopyWithImpl<$Res>;
  $Res call(
      {EmployeeInformationData information, List<ImageTypeData> images_type});

  $EmployeeInformationDataCopyWith<$Res> get information;
}

/// @nodoc
class _$EmployeeDataCopyWithImpl<$Res> implements $EmployeeDataCopyWith<$Res> {
  _$EmployeeDataCopyWithImpl(this._value, this._then);

  final EmployeeData _value;
  // ignore: unused_field
  final $Res Function(EmployeeData) _then;

  @override
  $Res call({
    Object? information = freezed,
    Object? images_type = freezed,
  }) {
    return _then(_value.copyWith(
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as EmployeeInformationData,
      images_type: images_type == freezed
          ? _value.images_type
          : images_type // ignore: cast_nullable_to_non_nullable
              as List<ImageTypeData>,
    ));
  }

  @override
  $EmployeeInformationDataCopyWith<$Res> get information {
    return $EmployeeInformationDataCopyWith<$Res>(_value.information, (value) {
      return _then(_value.copyWith(information: value));
    });
  }
}

/// @nodoc
abstract class _$$_EmployeeDataCopyWith<$Res>
    implements $EmployeeDataCopyWith<$Res> {
  factory _$$_EmployeeDataCopyWith(
          _$_EmployeeData value, $Res Function(_$_EmployeeData) then) =
      __$$_EmployeeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmployeeInformationData information, List<ImageTypeData> images_type});

  @override
  $EmployeeInformationDataCopyWith<$Res> get information;
}

/// @nodoc
class __$$_EmployeeDataCopyWithImpl<$Res>
    extends _$EmployeeDataCopyWithImpl<$Res>
    implements _$$_EmployeeDataCopyWith<$Res> {
  __$$_EmployeeDataCopyWithImpl(
      _$_EmployeeData _value, $Res Function(_$_EmployeeData) _then)
      : super(_value, (v) => _then(v as _$_EmployeeData));

  @override
  _$_EmployeeData get _value => super._value as _$_EmployeeData;

  @override
  $Res call({
    Object? information = freezed,
    Object? images_type = freezed,
  }) {
    return _then(_$_EmployeeData(
      information: information == freezed
          ? _value.information
          : information // ignore: cast_nullable_to_non_nullable
              as EmployeeInformationData,
      images_type: images_type == freezed
          ? _value._images_type
          : images_type // ignore: cast_nullable_to_non_nullable
              as List<ImageTypeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeData with DiagnosticableTreeMixin implements _EmployeeData {
  const _$_EmployeeData(
      {required this.information,
      required final List<ImageTypeData> images_type})
      : _images_type = images_type;

  factory _$_EmployeeData.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeDataFromJson(json);

  @override
  final EmployeeInformationData information;
  final List<ImageTypeData> _images_type;
  @override
  List<ImageTypeData> get images_type {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images_type);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeData(information: $information, images_type: $images_type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeData'))
      ..add(DiagnosticsProperty('information', information))
      ..add(DiagnosticsProperty('images_type', images_type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeData &&
            const DeepCollectionEquality()
                .equals(other.information, information) &&
            const DeepCollectionEquality()
                .equals(other._images_type, _images_type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(information),
      const DeepCollectionEquality().hash(_images_type));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeDataCopyWith<_$_EmployeeData> get copyWith =>
      __$$_EmployeeDataCopyWithImpl<_$_EmployeeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeDataToJson(
      this,
    );
  }
}

abstract class _EmployeeData implements EmployeeData {
  const factory _EmployeeData(
      {required final EmployeeInformationData information,
      required final List<ImageTypeData> images_type}) = _$_EmployeeData;

  factory _EmployeeData.fromJson(Map<String, dynamic> json) =
      _$_EmployeeData.fromJson;

  @override
  EmployeeInformationData get information;
  @override
  List<ImageTypeData> get images_type;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeDataCopyWith<_$_EmployeeData> get copyWith =>
      throw _privateConstructorUsedError;
}

AttendanceData _$AttendanceDataFromJson(Map<String, dynamic> json) {
  return _AttendanceData.fromJson(json);
}

/// @nodoc
mixin _$AttendanceData {
  List<TypeData> get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceDataCopyWith<AttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceDataCopyWith<$Res> {
  factory $AttendanceDataCopyWith(
          AttendanceData value, $Res Function(AttendanceData) then) =
      _$AttendanceDataCopyWithImpl<$Res>;
  $Res call({List<TypeData> type});
}

/// @nodoc
class _$AttendanceDataCopyWithImpl<$Res>
    implements $AttendanceDataCopyWith<$Res> {
  _$AttendanceDataCopyWithImpl(this._value, this._then);

  final AttendanceData _value;
  // ignore: unused_field
  final $Res Function(AttendanceData) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
abstract class _$$_AttendanceDataCopyWith<$Res>
    implements $AttendanceDataCopyWith<$Res> {
  factory _$$_AttendanceDataCopyWith(
          _$_AttendanceData value, $Res Function(_$_AttendanceData) then) =
      __$$_AttendanceDataCopyWithImpl<$Res>;
  @override
  $Res call({List<TypeData> type});
}

/// @nodoc
class __$$_AttendanceDataCopyWithImpl<$Res>
    extends _$AttendanceDataCopyWithImpl<$Res>
    implements _$$_AttendanceDataCopyWith<$Res> {
  __$$_AttendanceDataCopyWithImpl(
      _$_AttendanceData _value, $Res Function(_$_AttendanceData) _then)
      : super(_value, (v) => _then(v as _$_AttendanceData));

  @override
  _$_AttendanceData get _value => super._value as _$_AttendanceData;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_AttendanceData(
      type: type == freezed
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceData
    with DiagnosticableTreeMixin
    implements _AttendanceData {
  const _$_AttendanceData({required final List<TypeData> type}) : _type = type;

  factory _$_AttendanceData.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceDataFromJson(json);

  final List<TypeData> _type;
  @override
  List<TypeData> get type {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AttendanceData(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AttendanceData'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceData &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceDataCopyWith<_$_AttendanceData> get copyWith =>
      __$$_AttendanceDataCopyWithImpl<_$_AttendanceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceDataToJson(
      this,
    );
  }
}

abstract class _AttendanceData implements AttendanceData {
  const factory _AttendanceData({required final List<TypeData> type}) =
      _$_AttendanceData;

  factory _AttendanceData.fromJson(Map<String, dynamic> json) =
      _$_AttendanceData.fromJson;

  @override
  List<TypeData> get type;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceDataCopyWith<_$_AttendanceData> get copyWith =>
      throw _privateConstructorUsedError;
}

CalendarData _$CalendarDataFromJson(Map<String, dynamic> json) {
  return _CalendarData.fromJson(json);
}

/// @nodoc
mixin _$CalendarData {
  List<TypeData> get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarDataCopyWith<CalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarDataCopyWith<$Res> {
  factory $CalendarDataCopyWith(
          CalendarData value, $Res Function(CalendarData) then) =
      _$CalendarDataCopyWithImpl<$Res>;
  $Res call({List<TypeData> type});
}

/// @nodoc
class _$CalendarDataCopyWithImpl<$Res> implements $CalendarDataCopyWith<$Res> {
  _$CalendarDataCopyWithImpl(this._value, this._then);

  final CalendarData _value;
  // ignore: unused_field
  final $Res Function(CalendarData) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarDataCopyWith<$Res>
    implements $CalendarDataCopyWith<$Res> {
  factory _$$_CalendarDataCopyWith(
          _$_CalendarData value, $Res Function(_$_CalendarData) then) =
      __$$_CalendarDataCopyWithImpl<$Res>;
  @override
  $Res call({List<TypeData> type});
}

/// @nodoc
class __$$_CalendarDataCopyWithImpl<$Res>
    extends _$CalendarDataCopyWithImpl<$Res>
    implements _$$_CalendarDataCopyWith<$Res> {
  __$$_CalendarDataCopyWithImpl(
      _$_CalendarData _value, $Res Function(_$_CalendarData) _then)
      : super(_value, (v) => _then(v as _$_CalendarData));

  @override
  _$_CalendarData get _value => super._value as _$_CalendarData;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_CalendarData(
      type: type == freezed
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarData with DiagnosticableTreeMixin implements _CalendarData {
  const _$_CalendarData({required final List<TypeData> type}) : _type = type;

  factory _$_CalendarData.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarDataFromJson(json);

  final List<TypeData> _type;
  @override
  List<TypeData> get type {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CalendarData(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CalendarData'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarData &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarDataCopyWith<_$_CalendarData> get copyWith =>
      __$$_CalendarDataCopyWithImpl<_$_CalendarData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarDataToJson(
      this,
    );
  }
}

abstract class _CalendarData implements CalendarData {
  const factory _CalendarData({required final List<TypeData> type}) =
      _$_CalendarData;

  factory _CalendarData.fromJson(Map<String, dynamic> json) =
      _$_CalendarData.fromJson;

  @override
  List<TypeData> get type;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarDataCopyWith<_$_CalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkingData _$WorkingDataFromJson(Map<String, dynamic> json) {
  return _WorkingData.fromJson(json);
}

/// @nodoc
mixin _$WorkingData {
  List<TypeData> get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingDataCopyWith<WorkingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingDataCopyWith<$Res> {
  factory $WorkingDataCopyWith(
          WorkingData value, $Res Function(WorkingData) then) =
      _$WorkingDataCopyWithImpl<$Res>;
  $Res call({List<TypeData> type});
}

/// @nodoc
class _$WorkingDataCopyWithImpl<$Res> implements $WorkingDataCopyWith<$Res> {
  _$WorkingDataCopyWithImpl(this._value, this._then);

  final WorkingData _value;
  // ignore: unused_field
  final $Res Function(WorkingData) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
abstract class _$$_WorkingDataCopyWith<$Res>
    implements $WorkingDataCopyWith<$Res> {
  factory _$$_WorkingDataCopyWith(
          _$_WorkingData value, $Res Function(_$_WorkingData) then) =
      __$$_WorkingDataCopyWithImpl<$Res>;
  @override
  $Res call({List<TypeData> type});
}

/// @nodoc
class __$$_WorkingDataCopyWithImpl<$Res> extends _$WorkingDataCopyWithImpl<$Res>
    implements _$$_WorkingDataCopyWith<$Res> {
  __$$_WorkingDataCopyWithImpl(
      _$_WorkingData _value, $Res Function(_$_WorkingData) _then)
      : super(_value, (v) => _then(v as _$_WorkingData));

  @override
  _$_WorkingData get _value => super._value as _$_WorkingData;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_WorkingData(
      type: type == freezed
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkingData with DiagnosticableTreeMixin implements _WorkingData {
  const _$_WorkingData({required final List<TypeData> type}) : _type = type;

  factory _$_WorkingData.fromJson(Map<String, dynamic> json) =>
      _$$_WorkingDataFromJson(json);

  final List<TypeData> _type;
  @override
  List<TypeData> get type {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkingData(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkingData'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkingData &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  _$$_WorkingDataCopyWith<_$_WorkingData> get copyWith =>
      __$$_WorkingDataCopyWithImpl<_$_WorkingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkingDataToJson(
      this,
    );
  }
}

abstract class _WorkingData implements WorkingData {
  const factory _WorkingData({required final List<TypeData> type}) =
      _$_WorkingData;

  factory _WorkingData.fromJson(Map<String, dynamic> json) =
      _$_WorkingData.fromJson;

  @override
  List<TypeData> get type;
  @override
  @JsonKey(ignore: true)
  _$$_WorkingDataCopyWith<_$_WorkingData> get copyWith =>
      throw _privateConstructorUsedError;
}

AssetsData _$AssetsDataFromJson(Map<String, dynamic> json) {
  return _AssetsData.fromJson(json);
}

/// @nodoc
mixin _$AssetsData {
  List<StatusData> get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetsDataCopyWith<AssetsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsDataCopyWith<$Res> {
  factory $AssetsDataCopyWith(
          AssetsData value, $Res Function(AssetsData) then) =
      _$AssetsDataCopyWithImpl<$Res>;
  $Res call({List<StatusData> status});
}

/// @nodoc
class _$AssetsDataCopyWithImpl<$Res> implements $AssetsDataCopyWith<$Res> {
  _$AssetsDataCopyWithImpl(this._value, this._then);

  final AssetsData _value;
  // ignore: unused_field
  final $Res Function(AssetsData) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<StatusData>,
    ));
  }
}

/// @nodoc
abstract class _$$_AssetsDataCopyWith<$Res>
    implements $AssetsDataCopyWith<$Res> {
  factory _$$_AssetsDataCopyWith(
          _$_AssetsData value, $Res Function(_$_AssetsData) then) =
      __$$_AssetsDataCopyWithImpl<$Res>;
  @override
  $Res call({List<StatusData> status});
}

/// @nodoc
class __$$_AssetsDataCopyWithImpl<$Res> extends _$AssetsDataCopyWithImpl<$Res>
    implements _$$_AssetsDataCopyWith<$Res> {
  __$$_AssetsDataCopyWithImpl(
      _$_AssetsData _value, $Res Function(_$_AssetsData) _then)
      : super(_value, (v) => _then(v as _$_AssetsData));

  @override
  _$_AssetsData get _value => super._value as _$_AssetsData;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$_AssetsData(
      status: status == freezed
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<StatusData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssetsData with DiagnosticableTreeMixin implements _AssetsData {
  const _$_AssetsData({required final List<StatusData> status})
      : _status = status;

  factory _$_AssetsData.fromJson(Map<String, dynamic> json) =>
      _$$_AssetsDataFromJson(json);

  final List<StatusData> _status;
  @override
  List<StatusData> get status {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_status);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AssetsData(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AssetsData'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AssetsData &&
            const DeepCollectionEquality().equals(other._status, _status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_status));

  @JsonKey(ignore: true)
  @override
  _$$_AssetsDataCopyWith<_$_AssetsData> get copyWith =>
      __$$_AssetsDataCopyWithImpl<_$_AssetsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssetsDataToJson(
      this,
    );
  }
}

abstract class _AssetsData implements AssetsData {
  const factory _AssetsData({required final List<StatusData> status}) =
      _$_AssetsData;

  factory _AssetsData.fromJson(Map<String, dynamic> json) =
      _$_AssetsData.fromJson;

  @override
  List<StatusData> get status;
  @override
  @JsonKey(ignore: true)
  _$$_AssetsDataCopyWith<_$_AssetsData> get copyWith =>
      throw _privateConstructorUsedError;
}

BorrowData _$BorrowDataFromJson(Map<String, dynamic> json) {
  return _BorrowData.fromJson(json);
}

/// @nodoc
mixin _$BorrowData {
  List<StatusData> get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BorrowDataCopyWith<BorrowData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BorrowDataCopyWith<$Res> {
  factory $BorrowDataCopyWith(
          BorrowData value, $Res Function(BorrowData) then) =
      _$BorrowDataCopyWithImpl<$Res>;
  $Res call({List<StatusData> status});
}

/// @nodoc
class _$BorrowDataCopyWithImpl<$Res> implements $BorrowDataCopyWith<$Res> {
  _$BorrowDataCopyWithImpl(this._value, this._then);

  final BorrowData _value;
  // ignore: unused_field
  final $Res Function(BorrowData) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as List<StatusData>,
    ));
  }
}

/// @nodoc
abstract class _$$_BorrowDataCopyWith<$Res>
    implements $BorrowDataCopyWith<$Res> {
  factory _$$_BorrowDataCopyWith(
          _$_BorrowData value, $Res Function(_$_BorrowData) then) =
      __$$_BorrowDataCopyWithImpl<$Res>;
  @override
  $Res call({List<StatusData> status});
}

/// @nodoc
class __$$_BorrowDataCopyWithImpl<$Res> extends _$BorrowDataCopyWithImpl<$Res>
    implements _$$_BorrowDataCopyWith<$Res> {
  __$$_BorrowDataCopyWithImpl(
      _$_BorrowData _value, $Res Function(_$_BorrowData) _then)
      : super(_value, (v) => _then(v as _$_BorrowData));

  @override
  _$_BorrowData get _value => super._value as _$_BorrowData;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$_BorrowData(
      status: status == freezed
          ? _value._status
          : status // ignore: cast_nullable_to_non_nullable
              as List<StatusData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BorrowData with DiagnosticableTreeMixin implements _BorrowData {
  const _$_BorrowData({required final List<StatusData> status})
      : _status = status;

  factory _$_BorrowData.fromJson(Map<String, dynamic> json) =>
      _$$_BorrowDataFromJson(json);

  final List<StatusData> _status;
  @override
  List<StatusData> get status {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_status);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BorrowData(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BorrowData'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BorrowData &&
            const DeepCollectionEquality().equals(other._status, _status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_status));

  @JsonKey(ignore: true)
  @override
  _$$_BorrowDataCopyWith<_$_BorrowData> get copyWith =>
      __$$_BorrowDataCopyWithImpl<_$_BorrowData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BorrowDataToJson(
      this,
    );
  }
}

abstract class _BorrowData implements BorrowData {
  const factory _BorrowData({required final List<StatusData> status}) =
      _$_BorrowData;

  factory _BorrowData.fromJson(Map<String, dynamic> json) =
      _$_BorrowData.fromJson;

  @override
  List<StatusData> get status;
  @override
  @JsonKey(ignore: true)
  _$$_BorrowDataCopyWith<_$_BorrowData> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomData _$RoomDataFromJson(Map<String, dynamic> json) {
  return _RoomData.fromJson(json);
}

/// @nodoc
mixin _$RoomData {
  List<RecurringData> get recurring => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomDataCopyWith<RoomData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDataCopyWith<$Res> {
  factory $RoomDataCopyWith(RoomData value, $Res Function(RoomData) then) =
      _$RoomDataCopyWithImpl<$Res>;
  $Res call({List<RecurringData> recurring});
}

/// @nodoc
class _$RoomDataCopyWithImpl<$Res> implements $RoomDataCopyWith<$Res> {
  _$RoomDataCopyWithImpl(this._value, this._then);

  final RoomData _value;
  // ignore: unused_field
  final $Res Function(RoomData) _then;

  @override
  $Res call({
    Object? recurring = freezed,
  }) {
    return _then(_value.copyWith(
      recurring: recurring == freezed
          ? _value.recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as List<RecurringData>,
    ));
  }
}

/// @nodoc
abstract class _$$_RoomDataCopyWith<$Res> implements $RoomDataCopyWith<$Res> {
  factory _$$_RoomDataCopyWith(
          _$_RoomData value, $Res Function(_$_RoomData) then) =
      __$$_RoomDataCopyWithImpl<$Res>;
  @override
  $Res call({List<RecurringData> recurring});
}

/// @nodoc
class __$$_RoomDataCopyWithImpl<$Res> extends _$RoomDataCopyWithImpl<$Res>
    implements _$$_RoomDataCopyWith<$Res> {
  __$$_RoomDataCopyWithImpl(
      _$_RoomData _value, $Res Function(_$_RoomData) _then)
      : super(_value, (v) => _then(v as _$_RoomData));

  @override
  _$_RoomData get _value => super._value as _$_RoomData;

  @override
  $Res call({
    Object? recurring = freezed,
  }) {
    return _then(_$_RoomData(
      recurring: recurring == freezed
          ? _value._recurring
          : recurring // ignore: cast_nullable_to_non_nullable
              as List<RecurringData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoomData with DiagnosticableTreeMixin implements _RoomData {
  const _$_RoomData({required final List<RecurringData> recurring})
      : _recurring = recurring;

  factory _$_RoomData.fromJson(Map<String, dynamic> json) =>
      _$$_RoomDataFromJson(json);

  final List<RecurringData> _recurring;
  @override
  List<RecurringData> get recurring {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recurring);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RoomData(recurring: $recurring)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RoomData'))
      ..add(DiagnosticsProperty('recurring', recurring));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoomData &&
            const DeepCollectionEquality()
                .equals(other._recurring, _recurring));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recurring));

  @JsonKey(ignore: true)
  @override
  _$$_RoomDataCopyWith<_$_RoomData> get copyWith =>
      __$$_RoomDataCopyWithImpl<_$_RoomData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoomDataToJson(
      this,
    );
  }
}

abstract class _RoomData implements RoomData {
  const factory _RoomData({required final List<RecurringData> recurring}) =
      _$_RoomData;

  factory _RoomData.fromJson(Map<String, dynamic> json) = _$_RoomData.fromJson;

  @override
  List<RecurringData> get recurring;
  @override
  @JsonKey(ignore: true)
  _$$_RoomDataCopyWith<_$_RoomData> get copyWith =>
      throw _privateConstructorUsedError;
}

WFHData _$WFHDataFromJson(Map<String, dynamic> json) {
  return _WFHData.fromJson(json);
}

/// @nodoc
mixin _$WFHData {
  List<TypeData> get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WFHDataCopyWith<WFHData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WFHDataCopyWith<$Res> {
  factory $WFHDataCopyWith(WFHData value, $Res Function(WFHData) then) =
      _$WFHDataCopyWithImpl<$Res>;
  $Res call({List<TypeData> type});
}

/// @nodoc
class _$WFHDataCopyWithImpl<$Res> implements $WFHDataCopyWith<$Res> {
  _$WFHDataCopyWithImpl(this._value, this._then);

  final WFHData _value;
  // ignore: unused_field
  final $Res Function(WFHData) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
abstract class _$$_WFHDataCopyWith<$Res> implements $WFHDataCopyWith<$Res> {
  factory _$$_WFHDataCopyWith(
          _$_WFHData value, $Res Function(_$_WFHData) then) =
      __$$_WFHDataCopyWithImpl<$Res>;
  @override
  $Res call({List<TypeData> type});
}

/// @nodoc
class __$$_WFHDataCopyWithImpl<$Res> extends _$WFHDataCopyWithImpl<$Res>
    implements _$$_WFHDataCopyWith<$Res> {
  __$$_WFHDataCopyWithImpl(_$_WFHData _value, $Res Function(_$_WFHData) _then)
      : super(_value, (v) => _then(v as _$_WFHData));

  @override
  _$_WFHData get _value => super._value as _$_WFHData;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_WFHData(
      type: type == freezed
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WFHData with DiagnosticableTreeMixin implements _WFHData {
  const _$_WFHData({required final List<TypeData> type}) : _type = type;

  factory _$_WFHData.fromJson(Map<String, dynamic> json) =>
      _$$_WFHDataFromJson(json);

  final List<TypeData> _type;
  @override
  List<TypeData> get type {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WFHData(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WFHData'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WFHData &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  _$$_WFHDataCopyWith<_$_WFHData> get copyWith =>
      __$$_WFHDataCopyWithImpl<_$_WFHData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WFHDataToJson(
      this,
    );
  }
}

abstract class _WFHData implements WFHData {
  const factory _WFHData({required final List<TypeData> type}) = _$_WFHData;

  factory _WFHData.fromJson(Map<String, dynamic> json) = _$_WFHData.fromJson;

  @override
  List<TypeData> get type;
  @override
  @JsonKey(ignore: true)
  _$$_WFHDataCopyWith<_$_WFHData> get copyWith =>
      throw _privateConstructorUsedError;
}

TicketData _$TicketDataFromJson(Map<String, dynamic> json) {
  return _TicketData.fromJson(json);
}

/// @nodoc
mixin _$TicketData {
  List<TypeData> get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketDataCopyWith<TicketData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDataCopyWith<$Res> {
  factory $TicketDataCopyWith(
          TicketData value, $Res Function(TicketData) then) =
      _$TicketDataCopyWithImpl<$Res>;
  $Res call({List<TypeData> type});
}

/// @nodoc
class _$TicketDataCopyWithImpl<$Res> implements $TicketDataCopyWith<$Res> {
  _$TicketDataCopyWithImpl(this._value, this._then);

  final TicketData _value;
  // ignore: unused_field
  final $Res Function(TicketData) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
abstract class _$$_TicketDataCopyWith<$Res>
    implements $TicketDataCopyWith<$Res> {
  factory _$$_TicketDataCopyWith(
          _$_TicketData value, $Res Function(_$_TicketData) then) =
      __$$_TicketDataCopyWithImpl<$Res>;
  @override
  $Res call({List<TypeData> type});
}

/// @nodoc
class __$$_TicketDataCopyWithImpl<$Res> extends _$TicketDataCopyWithImpl<$Res>
    implements _$$_TicketDataCopyWith<$Res> {
  __$$_TicketDataCopyWithImpl(
      _$_TicketData _value, $Res Function(_$_TicketData) _then)
      : super(_value, (v) => _then(v as _$_TicketData));

  @override
  _$_TicketData get _value => super._value as _$_TicketData;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_TicketData(
      type: type == freezed
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<TypeData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TicketData with DiagnosticableTreeMixin implements _TicketData {
  const _$_TicketData({required final List<TypeData> type}) : _type = type;

  factory _$_TicketData.fromJson(Map<String, dynamic> json) =>
      _$$_TicketDataFromJson(json);

  final List<TypeData> _type;
  @override
  List<TypeData> get type {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TicketData(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TicketData'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TicketData &&
            const DeepCollectionEquality().equals(other._type, _type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_type));

  @JsonKey(ignore: true)
  @override
  _$$_TicketDataCopyWith<_$_TicketData> get copyWith =>
      __$$_TicketDataCopyWithImpl<_$_TicketData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TicketDataToJson(
      this,
    );
  }
}

abstract class _TicketData implements TicketData {
  const factory _TicketData({required final List<TypeData> type}) =
      _$_TicketData;

  factory _TicketData.fromJson(Map<String, dynamic> json) =
      _$_TicketData.fromJson;

  @override
  List<TypeData> get type;
  @override
  @JsonKey(ignore: true)
  _$$_TicketDataCopyWith<_$_TicketData> get copyWith =>
      throw _privateConstructorUsedError;
}
