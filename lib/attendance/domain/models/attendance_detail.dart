import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_check_in_out.dart';

part 'attendance_detail.g.dart';

/// id : 1758
/// checkin : "2022-02-10 01:48:04"
/// checkout : "2022-02-10 10:45:22"
/// type_comelate : 1
/// type_nocheckin : 0
/// type_leaveearly : 0
/// type_nocheckout : 0
/// type_pass : 0
/// checkinDevice : {"id":2,"name":"Finger 9th HCM"}
/// checkoutDevice : {"id":2,"name":"Finger 9th HCM"}

AttendanceDetail attendanceDetailFromJson(String str) => AttendanceDetail.fromJson(json.decode(str));

String attendanceDetailToJson(AttendanceDetail data) => json.encode(data.toJson());

@HiveType(typeId: 0)
class AttendanceDetail {
  AttendanceDetail({
    @HiveField(0) int? id,
    @HiveField(1) String? checkin,
    @HiveField(2) String? checkout,
    @HiveField(3) int? typeComelate,
    @HiveField(4) int? typeNocheckin,
    @HiveField(5) int? typeLeaveearly,
    @HiveField(6) int? typeNocheckout,
    @HiveField(7) int? typePass,
    @HiveField(8) CheckInOutDevice? checkinDevice,
    @HiveField(9) CheckInOutDevice? checkoutDevice,
  }) {
    _id = id;
    _checkin = checkin;
    _checkout = checkout;
    _typeComelate = typeComelate;
    _typeNocheckin = typeNocheckin;
    _typeLeaveearly = typeLeaveearly;
    _typeNocheckout = typeNocheckout;
    _typePass = typePass;
    _checkinDevice = checkinDevice;
    _checkoutDevice = checkoutDevice;
  }

  AttendanceDetail.fromJson(dynamic json) {
    _id = json['id'];
    _checkin = json['checkin'];
    _checkout = json['checkout'];
    _typeComelate = json['type_comelate'];
    _typeNocheckin = json['type_nocheckin'];
    _typeLeaveearly = json['type_leaveearly'];
    _typeNocheckout = json['type_nocheckout'];
    _typePass = json['type_pass'];
    _checkinDevice = json['checkinDevice'] != null ? CheckInOutDevice.fromJson(json['checkinDevice']) : null;
    _checkoutDevice = json['checkoutDevice'] != null ? CheckInOutDevice.fromJson(json['checkoutDevice']) : null;
  }

  int? _id;

  String? _checkin;

  String? _checkout;

  int? _typeComelate;

  int? _typeNocheckin;

  int? _typeLeaveearly;

  int? _typeNocheckout;

  int? _typePass;

  CheckInOutDevice? _checkinDevice;

  CheckInOutDevice? _checkoutDevice;

  String? _attendanceDay;
  AttendanceDetail copyWith({
    int? id,
    String? checkin,
    String? checkout,
    int? typeComelate,
    int? typeNocheckin,
    int? typeLeaveearly,
    int? typeNocheckout,
    int? typePass,
    CheckInOutDevice? checkinDevice,
    CheckInOutDevice? checkoutDevice,
  }) =>
      AttendanceDetail(
        id: id ?? _id,
        checkin: checkin ?? _checkin,
        checkout: checkout ?? _checkout,
        typeComelate: typeComelate ?? _typeComelate,
        typeNocheckin: typeNocheckin ?? _typeNocheckin,
        typeLeaveearly: typeLeaveearly ?? _typeLeaveearly,
        typeNocheckout: typeNocheckout ?? _typeNocheckout,
        typePass: typePass ?? _typePass,
        checkinDevice: checkinDevice ?? _checkinDevice,
        checkoutDevice: checkoutDevice ?? _checkoutDevice,
      );

  int? get id => _id;

  String? get checkIn => _checkin;
  set setCheckIn(String checkIn) => _checkin = checkIn;

  String? get checkOut => _checkout;
  set setCheckOut(String checkOut) => _checkout = checkOut;

  String? get attendanceDay => _attendanceDay;
  set setAttendanceDay(String attendanceDay) => _attendanceDay = attendanceDay;

  int? get typeComeLate => _typeComelate;

  int? get typeNoCheckIn => _typeNocheckin;

  int? get typeLeaveEarly => _typeLeaveearly;

  int? get typeNoCheckOut => _typeNocheckout;

  int? get typePass => _typePass;

  CheckInOutDevice? get checkInDevice => _checkinDevice;

  CheckInOutDevice? get checkOutDevice => _checkoutDevice;

  bool isCheckInPass = false;

  bool isCheckOutPass = false;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['checkin'] = _checkin;
    map['checkout'] = _checkout;
    map['type_comelate'] = _typeComelate;
    map['type_nocheckin'] = _typeNocheckin;
    map['type_leaveearly'] = _typeLeaveearly;
    map['type_nocheckout'] = _typeNocheckout;
    map['type_pass'] = _typePass;
    if (_checkinDevice != null) {
      map['checkinDevice'] = _checkinDevice?.toJson();
    }
    if (_checkoutDevice != null) {
      map['checkoutDevice'] = _checkoutDevice?.toJson();
    }
    return map;
  }

  String getClassName() => "AttendanceDetail";
}
