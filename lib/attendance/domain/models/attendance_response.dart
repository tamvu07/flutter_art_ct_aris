import 'dart:convert';

import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_data.dart';

/// code : 200
/// msg : "Successfully."
/// data : {"current_page":1,"data":[{"id":1758,"checkin":"2022-02-10 01:48:04","checkout":"2022-02-10 10:45:22","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1759,"checkin":"2022-02-11 05:41:37","checkout":"2022-02-11 10:48:22","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1760,"checkin":"2022-02-14 01:33:04","checkout":"2022-02-14 10:40:19","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1761,"checkin":"2022-02-16 01:42:04","checkout":"2022-02-16 10:36:08","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1762,"checkin":"2022-02-17 01:21:13","checkout":"2022-02-17 10:50:55","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1763,"checkin":"2022-02-18 01:27:25","checkout":"2022-02-18 11:32:16","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1764,"checkin":"2022-02-21 01:20:08","checkout":"2022-02-21 10:48:20","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1765,"checkin":"2022-02-22 01:25:11","checkout":"2022-02-22 11:16:46","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1766,"checkin":"2022-02-23 01:30:11","checkout":"2022-02-23 11:16:18","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1767,"checkin":"2022-02-24 01:14:37","checkout":"2022-02-24 11:03:18","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1768,"checkin":"2022-02-25 01:19:19","checkout":"2022-02-25 10:57:26","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1769,"checkin":"2022-03-01 01:18:54","checkout":"2022-03-01 10:38:04","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1770,"checkin":"2022-03-02 01:26:53","checkout":"2022-03-02 11:05:10","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1771,"checkin":"2022-03-03 01:51:57","checkout":"2022-03-03 10:31:44","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1772,"checkin":"2022-03-04 01:38:10","checkout":"2022-03-04 10:51:30","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}}],"first_page_url":"http://192.168.1.19:8088/api/attendance?page=1","from":1,"last_page":20,"last_page_url":"http://192.168.1.19:8088/api/attendance?page=20","links":[{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=1","label":"1","active":true},{"url":"http://192.168.1.19:8088/api/attendance?page=2","label":"2","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=3","label":"3","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=4","label":"4","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=5","label":"5","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=6","label":"6","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=7","label":"7","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=8","label":"8","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=9","label":"9","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=19","label":"19","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=20","label":"20","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=2","label":"Next &raquo;","active":false}],"next_page_url":"http://192.168.1.19:8088/api/attendance?page=2","path":"http://192.168.1.19:8088/api/attendance","per_page":15,"prev_page_url":null,"to":15,"total":299}

AttendanceResponse attendanceResponseFromJson(String str) => AttendanceResponse.fromJson(json.decode(str));

String attendanceResponseToJson(AttendanceResponse data) => json.encode(data.toJson());

class AttendanceResponse {
  AttendanceResponse({
    int? code,
    String? msg,
    AttendanceData? data,
  }) {
    _code = code;
    _msg = msg;
    _data = data;
  }

  AttendanceResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
    _data = json['data'] != null ? AttendanceData.fromJson(json['data']) : null;
  }

  int? _code;
  String? _msg;
  AttendanceData? _data;

  AttendanceResponse copyWith({
    int? code,
    String? msg,
    AttendanceData? data,
  }) =>
      AttendanceResponse(
        code: code ?? _code,
        msg: msg ?? _msg,
        data: data ?? _data,
      );

  int? get code => _code;

  String? get msg => _msg;

  AttendanceData? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['msg'] = _msg;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }
}
