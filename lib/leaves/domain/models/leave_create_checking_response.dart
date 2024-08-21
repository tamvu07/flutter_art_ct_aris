
import 'leave_constants.dart';

abstract class DisplayOption {
  int getOptionId();
  String getOptionName();
}
class LeaveCreateCheckingResponse {
  LeaveCreateCheckingResponse({
    num? code,
    String? msg,
    LeaveCheckingResponseData? data,
  }) {
    _code = code;
    _msg = msg;
    _data = data;
  }

  LeaveCreateCheckingResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
    _data = json['data'] != null ? LeaveCheckingResponseData.fromJson(json['data']) : null;
  }

  num? _code;
  String? _msg;
  LeaveCheckingResponseData? _data;

  num? get code => _code;

  String? get msg => _msg;

  LeaveCheckingResponseData? get data => _data;

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

class LeaveCheckingResponseData {
  LeaveCheckingResponseData({
    bool? startLeave,
    List<Assignee>? assignee,
    List<Type>? type,
    num? dob,
    num? period,
    String? annual,
  }) {
    _startLeave = startLeave;
    _assignee = assignee;
    _type = type;
    _dob = dob;
    _period = period;
    _annual = annual;
  }

  LeaveCheckingResponseData.fromJson(dynamic json) {
    _startLeave = json['start_leave'];
    if (json['assignee'] != null) {
      _assignee = [];
      json['assignee'].forEach((v) {
        _assignee?.add(Assignee.fromJson(v));
      });
    }
    if (json['type'] != null) {
      _type = [];
      json['type'].forEach((v) {
        _type?.add(Type.fromJson(v));
      });
    }
    _dob = json['dob'];
    _period = json['period'];
    _annual = json['annual'];
  }

  bool? _startLeave;
  List<Assignee>? _assignee;
  List<Type>? _type;
  num? _dob;
  num? _period;
  String? _annual;

  bool? get startLeave => _startLeave;

  List<Assignee>? get assignee => _assignee;

  List<Type>? get type => _type;

  num? get dob => _dob;

  num? get period => _period;

  String? get annual => _annual;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['start_leave'] = _startLeave;
    if (_assignee != null) {
      map['assignee'] = _assignee?.map((v) => v.toJson()).toList();
    }
    if (_type != null) {
      map['type'] = _type?.map((v) => v.toJson()).toList();
    }
    map['dob'] = _dob;
    map['period'] = _period;
    map['annual'] = _annual;
    return map;
  }
}

class Type implements DisplayOption {
  Type({
    num? id,
    String? name,
  }) {
    _id = id;
    _name = name;
  }

  Type.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }

  num? _id;
  String? _name;

  num? get id => _id;

  String? get name => _name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    return map;
  }

  @override
  String getOptionName() {
    return _name ?? '';
  }

  @override
  int getOptionId() {
    return _id!.toInt();
  }
}

class Assignee implements DisplayOption {
  Assignee({
    Employee? employee,
  }) {
    _employee = employee;
  }

  Assignee.fromJson(dynamic json) {
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

  @override
  String getOptionName() {
    return _employee?.employeeProfiles?.fullname ?? "";
  }

  @override
  int getOptionId() {
    return _employee?._employeeProfiles?._id?.toInt() ?? 0;
  }
}

class Employee {
  Employee({
    num? id,
    num? show,
    num? status,
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

  num? _id;
  num? _show;
  num? _status;
  EmployeeProfiles? _employeeProfiles;

  num? get id => _id;

  num? get show => _show;

  num? get status => _status;

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
    num? id,
    num? employeeId,
    String? code,
    num? gender,
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

  num? _id;
  num? _employeeId;
  String? _code;
  num? _gender;
  String? _fullname;
  String? _firstname;
  String? _lastname;
  String? _phone;
  String? _email;
  String? _exp;

  num? get id => _id;

  num? get employeeId => _employeeId;

  String? get code => _code;

  num? get gender => _gender;

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
