import 'dart:convert';

import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_link.dart';

/// current_page : 1
/// data : [{"id":1758,"checkin":"2022-02-10 01:48:04","checkout":"2022-02-10 10:45:22","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1759,"checkin":"2022-02-11 05:41:37","checkout":"2022-02-11 10:48:22","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1760,"checkin":"2022-02-14 01:33:04","checkout":"2022-02-14 10:40:19","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1761,"checkin":"2022-02-16 01:42:04","checkout":"2022-02-16 10:36:08","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1762,"checkin":"2022-02-17 01:21:13","checkout":"2022-02-17 10:50:55","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1763,"checkin":"2022-02-18 01:27:25","checkout":"2022-02-18 11:32:16","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1764,"checkin":"2022-02-21 01:20:08","checkout":"2022-02-21 10:48:20","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1765,"checkin":"2022-02-22 01:25:11","checkout":"2022-02-22 11:16:46","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1766,"checkin":"2022-02-23 01:30:11","checkout":"2022-02-23 11:16:18","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1767,"checkin":"2022-02-24 01:14:37","checkout":"2022-02-24 11:03:18","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1768,"checkin":"2022-02-25 01:19:19","checkout":"2022-02-25 10:57:26","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1769,"checkin":"2022-03-01 01:18:54","checkout":"2022-03-01 10:38:04","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1770,"checkin":"2022-03-02 01:26:53","checkout":"2022-03-02 11:05:10","type_comelate":0,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":1,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1771,"checkin":"2022-03-03 01:51:57","checkout":"2022-03-03 10:31:44","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}},{"id":1772,"checkin":"2022-03-04 01:38:10","checkout":"2022-03-04 10:51:30","type_comelate":1,"type_nocheckin":0,"type_leaveearly":0,"type_nocheckout":0,"type_pass":0,"checkinDevice":{"id":2,"name":"Finger 9th HCM"},"checkoutDevice":{"id":2,"name":"Finger 9th HCM"}}]
/// first_page_url : "http://192.168.1.19:8088/api/attendance?page=1"
/// from : 1
/// last_page : 20
/// last_page_url : "http://192.168.1.19:8088/api/attendance?page=20"
/// links : [{"url":null,"label":"&laquo; Previous","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=1","label":"1","active":true},{"url":"http://192.168.1.19:8088/api/attendance?page=2","label":"2","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=3","label":"3","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=4","label":"4","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=5","label":"5","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=6","label":"6","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=7","label":"7","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=8","label":"8","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=9","label":"9","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=10","label":"10","active":false},{"url":null,"label":"...","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=19","label":"19","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=20","label":"20","active":false},{"url":"http://192.168.1.19:8088/api/attendance?page=2","label":"Next &raquo;","active":false}]
/// next_page_url : "http://192.168.1.19:8088/api/attendance?page=2"
/// path : "http://192.168.1.19:8088/api/attendance"
/// per_page : 15
/// prev_page_url : null
/// to : 15
/// total : 299

AttendanceData dataFromJson(String str) => AttendanceData.fromJson(json.decode(str));

String dataToJson(AttendanceData data) => json.encode(data.toJson());

class AttendanceData {
  AttendanceData({
    num? currentPage,
    List<AttendanceDetail>? listAttendanceDetail,
    String? firstPageUrl,
    num? from,
    num? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    String? nextPageUrl,
    String? path,
    num? perPage,
    dynamic prevPageUrl,
    num? to,
    num? total,
  }) {
    _currentPage = currentPage;
    _listAttendanceDetail = listAttendanceDetail;
    _firstPageUrl = firstPageUrl;
    _from = from;
    _lastPage = lastPage;
    _lastPageUrl = lastPageUrl;
    _links = links;
    _nextPageUrl = nextPageUrl;
    _path = path;
    _perPage = perPage;
    _prevPageUrl = prevPageUrl;
    _to = to;
    _total = total;
  }

  AttendanceData.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _listAttendanceDetail = [];
      json['data'].forEach((v) {
        _listAttendanceDetail?.add(AttendanceDetail.fromJson(v));
      });
    }
    _firstPageUrl = json['first_page_url'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _lastPageUrl = json['last_page_url'];
    if (json['links'] != null) {
      _links = [];
      json['links'].forEach((v) {
        _links?.add(Links.fromJson(v));
      });
    }
    _nextPageUrl = json['next_page_url'];
    _path = json['path'];
    _perPage = json['per_page'];
    _prevPageUrl = json['prev_page_url'];
    _to = json['to'];
    _total = json['total'];
  }

  num? _currentPage;
  List<AttendanceDetail>? _listAttendanceDetail;
  String? _firstPageUrl;
  num? _from;
  num? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  String? _nextPageUrl;
  String? _path;
  num? _perPage;
  dynamic _prevPageUrl;
  num? _to;
  num? _total;

  AttendanceData copyWith({
    num? currentPage,
    List<AttendanceDetail>? listAttendanceDetail,
    String? firstPageUrl,
    num? from,
    num? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    String? nextPageUrl,
    String? path,
    num? perPage,
    dynamic prevPageUrl,
    num? to,
    num? total,
  }) =>
      AttendanceData(
        currentPage: currentPage ?? _currentPage,
        listAttendanceDetail: listAttendanceDetail ?? _listAttendanceDetail,
        firstPageUrl: firstPageUrl ?? _firstPageUrl,
        from: from ?? _from,
        lastPage: lastPage ?? _lastPage,
        lastPageUrl: lastPageUrl ?? _lastPageUrl,
        links: links ?? _links,
        nextPageUrl: nextPageUrl ?? _nextPageUrl,
        path: path ?? _path,
        perPage: perPage ?? _perPage,
        prevPageUrl: prevPageUrl ?? _prevPageUrl,
        to: to ?? _to,
        total: total ?? _total,
      );

  num? get currentPage => _currentPage;

  List<AttendanceDetail>? get listAttendanceDetail => _listAttendanceDetail;

  String? get firstPageUrl => _firstPageUrl;

  num? get from => _from;

  num? get lastPage => _lastPage;

  String? get lastPageUrl => _lastPageUrl;

  List<Links>? get links => _links;

  String? get nextPageUrl => _nextPageUrl;

  String? get path => _path;

  num? get perPage => _perPage;

  dynamic get prevPageUrl => _prevPageUrl;

  num? get to => _to;

  num? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_listAttendanceDetail != null) {
      map['data'] = _listAttendanceDetail?.map((v) => v.toJson()).toList();
    }
    map['first_page_url'] = _firstPageUrl;
    map['from'] = _from;
    map['last_page'] = _lastPage;
    map['last_page_url'] = _lastPageUrl;
    if (_links != null) {
      map['links'] = _links?.map((v) => v.toJson()).toList();
    }
    map['next_page_url'] = _nextPageUrl;
    map['path'] = _path;
    map['per_page'] = _perPage;
    map['prev_page_url'] = _prevPageUrl;
    map['to'] = _to;
    map['total'] = _total;
    return map;
  }
}