import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';

class LeaveManagerResponse {
  LeaveManagerResponse({
    int? code,
    String? msg,
    ResponseData? data,
  }) {
    _code = code;
    _msg = msg;
    _data = data;
  }

  LeaveManagerResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
    _data = json['data'] != null ? ResponseData.fromJson(json['data']) : null;
  }

  int? _code;
  String? _msg;
  ResponseData? _data;

  int? get code => _code;

  String? get msg => _msg;

  ResponseData? get data => _data;

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

class ResponseData {
  ResponseData({
    int? currentPage,
    List<LeaveManagerData>? data,
    String? firstPageUrl,
    int? from,
    int? lastPage,
    String? lastPageUrl,
    List<Links>? links,
    String? nextPageUrl,
    String? path,
    int? perPage,
    dynamic prevPageUrl,
    int? to,
    int? total,
  }) {
    _currentPage = currentPage;
    _data = data;
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

  ResponseData.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(LeaveManagerData.fromJson(v));
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

  int? _currentPage;
  List<LeaveManagerData>? _data;
  String? _firstPageUrl;
  int? _from;
  int? _lastPage;
  String? _lastPageUrl;
  List<Links>? _links;
  String? _nextPageUrl;
  String? _path;
  int? _perPage;
  dynamic _prevPageUrl;
  int? _to;
  int? _total;

  int? get currentPage => _currentPage;

  List<LeaveManagerData>? get data => _data;

  String? get firstPageUrl => _firstPageUrl;

  int? get from => _from;

  int? get lastPage => _lastPage;

  String? get lastPageUrl => _lastPageUrl;

  List<Links>? get links => _links;

  String? get nextPageUrl => _nextPageUrl;

  String? get path => _path;

  int? get perPage => _perPage;

  dynamic get prevPageUrl => _prevPageUrl;

  int? get to => _to;

  int? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
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

class Links {
  Links({
    dynamic url,
    String? label,
    bool? active,
  }) {
    _url = url;
    _label = label;
    _active = active;
  }

  Links.fromJson(dynamic json) {
    _url = json['url'];
    _label = json['label'];
    _active = json['active'];
  }

  dynamic _url;
  String? _label;
  bool? _active;

  dynamic get url => _url;

  String? get label => _label;

  bool? get active => _active;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['label'] = _label;
    map['active'] = _active;
    return map;
  }
}

class LeaveManagerData extends LeaveDetails {
  LeaveManagerData({
    int? id,
    String? title,
    String? description,
    dynamic note,
    int? due,
    String? startDate,
    String? endDate,
    int? status,
    Employee? employee,
    Approver? approver,
    LeaveType? leaveType,
    List<LeaveAssignees>? leaveAssignees,
  }) {
    _id = id;
    _title = title;
    _description = description;
    _note = note;
    _due = due;
    _startDate = startDate;
    _endDate = endDate;
    _status = status;
    _employee = employee;
    _approver = approver;
    _leaveType = leaveType;
    _leaveAssignees = leaveAssignees;
  }

  LeaveManagerData.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _description = json['description'];
    _note = json['note'];
    _due = json['due'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _status = json['status'];
    _employee = json['employee'] != null ? Employee.fromJson(json['employee']) : null;
    _approver = json['approver'] != null ? Approver.fromJson(json['approver']) : null;
    _leaveType = json['leaveType'] != null ? LeaveType.fromJson(json['leaveType']) : null;
    if (json['leaveAssignees'] != null) {
      _leaveAssignees = [];
      json['leaveAssignees'].forEach((v) {
        _leaveAssignees?.add(LeaveAssignees.fromJson(v));
      });
    }
  }

  int? _id;
  String? _title;
  String? _description;
  dynamic _note;
  num? _due;
  String? _startDate;
  String? _endDate;
  int? _status;
  Employee? _employee;
  Approver? _approver;
  LeaveType? _leaveType;
  List<LeaveAssignees>? _leaveAssignees;

  int? get id => _id;

  String? get title => _title;

  String? get description => _description;

  dynamic get note => _note;

  num? get due => _due;

  String? get startDate => _startDate;

  String? get endDate => _endDate;

  int? get status => _status;

  Employee? get employee => _employee;

  Approver? get approver => _approver;

  LeaveType? get leaveType => _leaveType;

  List<LeaveAssignees>? get leaveAssignees => _leaveAssignees;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['description'] = _description;
    map['note'] = _note;
    map['due'] = _due;
    map['start_date'] = _startDate;
    map['end_date'] = _endDate;
    map['status'] = _status;
    if (_employee != null) {
      map['employee'] = _employee?.toJson();
    }
    if (_approver != null) {
      map['approver'] = _approver?.toJson();
    }
    if (_leaveType != null) {
      map['leaveType'] = _leaveType?.toJson();
    }
    if (_leaveAssignees != null) {
      map['leaveAssignees'] = _leaveAssignees?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  List<String> getAssignees() {
    return _leaveAssignees?.map((e) => e.employee?.employeeProfiles?.fullname ?? '').toList() ?? List.empty();
  }

  @override
  String getCreateName() {
    return _employee?.employeeProfiles?.fullname ?? '';
  }

  @override
  String getDescription() {
    return _description ?? '';
  }

  @override
  num getDue() {
    return _due ?? 0;
  }

  @override
  DateTime? getEndDate() {
    return DateTime.tryParse(_endDate!);
  }

  @override
  int getLeaveStatusId() {
    return status!;
  }

  @override
  String getLeaveStatusName() {
    return 'XXXXXXXXXXXXXX';
  }

  @override
  int getLeaveTypeId() {
    return _leaveType?.id ?? 0;
  }

  @override
  String getLeaveTypeName() {
    return _leaveType?.name ?? '';
  }

  @override
  DateTime? getStartDate() {
    return DateTime.tryParse(_startDate!);
  }

  @override
  String getTitle() {
    return _title ?? '';
  }

  @override
  int getLeaveId() {
    return _id ?? 0;
  }
}

class LeaveAssignees {
  LeaveAssignees({
    Employee? employee,
  }) {
    _employee = employee;
  }

  LeaveAssignees.fromJson(dynamic json) {
    _employee = json['employee'] != null ? Employee.fromJson(json['employee']) : null;
  }

  Employee? _employee;

  Employee? get employee => _employee;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_employee != null) {
      map['employee'] = _employee?.toJson();
    }
    return map;
  }
}

class Employee {
  Employee({
    int? id,
    int? show,
    int? status,
    EmployeeProfiles? employeeProfiles,
  }) {
    _id = id;
    _show = show;
    _status = status;
    _employeeProfiles = employeeProfiles;
  }

  Employee.fromJson(dynamic json) {
    _id = json['id'];
    _show = json['show'];
    _status = json['status'];
    _employeeProfiles = json['employeeProfiles'] != null ? EmployeeProfiles.fromJson(json['employeeProfiles']) : null;
  }

  int? _id;
  int? _show;
  int? _status;
  EmployeeProfiles? _employeeProfiles;

  int? get id => _id;

  int? get show => _show;

  int? get status => _status;

  EmployeeProfiles? get employeeProfiles => _employeeProfiles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['show'] = _show;
    map['status'] = _status;
    if (_employeeProfiles != null) {
      map['employeeProfiles'] = _employeeProfiles?.toJson();
    }
    return map;
  }
}

class EmployeeProfiles {
  EmployeeProfiles({
    int? id,
    int? employeeId,
    String? code,
    int? gender,
    String? fullname,
    String? firstname,
    String? lastname,
    String? phone,
    String? email,
    String? exp,
  }) {
    _id = id;
    _employeeId = employeeId;
    _code = code;
    _gender = gender;
    _fullname = fullname;
    _firstname = firstname;
    _lastname = lastname;
    _phone = phone;
    _email = email;
    _exp = exp;
  }

  EmployeeProfiles.fromJson(dynamic json) {
    _id = json['id'];
    _employeeId = json['employee_id'];
    _code = json['code'];
    _gender = json['gender'];
    _fullname = json['fullname'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _phone = json['phone'];
    _email = json['email'];
    _exp = json['exp'];
  }

  int? _id;
  int? _employeeId;
  String? _code;
  int? _gender;
  String? _fullname;
  String? _firstname;
  String? _lastname;
  String? _phone;
  String? _email;
  String? _exp;

  int? get id => _id;

  int? get employeeId => _employeeId;

  String? get code => _code;

  int? get gender => _gender;

  String? get fullname => _fullname;

  String? get firstname => _firstname;

  String? get lastname => _lastname;

  String? get phone => _phone;

  String? get email => _email;

  String? get exp => _exp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['employee_id'] = _employeeId;
    map['code'] = _code;
    map['gender'] = _gender;
    map['fullname'] = _fullname;
    map['firstname'] = _firstname;
    map['lastname'] = _lastname;
    map['phone'] = _phone;
    map['email'] = _email;
    map['exp'] = _exp;
    return map;
  }
}

class LeaveType {
  LeaveType({
    int? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  LeaveType.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }

  int? _id;
  String? _name;

  int? get id => _id;

  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }
}

class Approver {
  Approver({
    int? id,
    int? show,
    int? status,
    EmployeeProfiles? employeeProfiles,
  }) {
    _id = id;
    _show = show;
    _status = status;
    _employeeProfiles = employeeProfiles;
  }

  Approver.fromJson(dynamic json) {
    _id = json['id'];
    _show = json['show'];
    _status = json['status'];
    _employeeProfiles = json['employeeProfiles'] != null ? EmployeeProfiles.fromJson(json['employeeProfiles']) : null;
  }

  int? _id;
  int? _show;
  int? _status;
  EmployeeProfiles? _employeeProfiles;

  int? get id => _id;

  int? get show => _show;

  int? get status => _status;

  EmployeeProfiles? get employeeProfiles => _employeeProfiles;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['show'] = _show;
    map['status'] = _status;
    if (_employeeProfiles != null) {
      map['employeeProfiles'] = _employeeProfiles?.toJson();
    }
    return map;
  }
}
