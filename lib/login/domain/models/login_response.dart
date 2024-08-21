import 'package:hive/hive.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
part 'login_response.g.dart';

class LoginResponse {
  int? _code;
  String? _msg;
  LoginData? _data;

  int? get code => _code;
  String? get msg => _msg;
  LoginData? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['msg'] = _msg;
    map['data'] = _data;
    return map;
  }

  LoginResponse({
    int? code,
    String? msg,
    LoginData? data,
  }) {
    _code = code;
    _msg = msg;
    _data = data;
  }

  LoginResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
    _data = json['data'] != null ? LoginData.fromJson(json['data']) : null;
  }

  LoginResponse copyWith({
    int? code,
    String? msg,
    LoginData? data,
  }) =>
      LoginResponse(
        code: code ?? _code,
        msg: msg ?? _msg,
        data: data ?? _data,
      );
}

@HiveType(typeId: 100, adapterName: "LoginDataAdapter")
class LoginData {
  String? _token;
  User? _user;

  String? get token => _token;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['user'] = _user;
    return map;
  }

  LoginData({
    @HiveField(0) String? token,
    @HiveField(1) User? user,
  }) {
    _token = token;
    _user = user;
  }

  LoginData copywith({
    String? token,
    User? user,
  }) =>
      LoginData(
        token: token ?? _token,
        user: user ?? _user,
      );

  LoginData.fromJson(dynamic json) {
    _token = json['token'];
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
}

@HiveType(typeId: 101, adapterName: "UserAdapter")
class User {
  List<String>? _permission;
  Employee? _employee;

  List<String>? permission;
  Employee? employee;

  User(
      {@HiveField(0) List<String>? permission,
      @HiveField(1) Employee? employee}) {
    _permission = permission;
    _employee = employee;
  }

  User copywith({
    List<String>? permission,
    Employee? employee,
  }) =>
      User(
          permission: permission ?? _permission,
          employee: employee ?? _employee);

  User.fromJson(dynamic json) {
    _employee =
        json['employee'] != null ? Employee.fromJson(json['employee']) : null;

    if (json['permission'] != null) {
      _permission = [];
      json['permission'].forEach((v) {
        _permission?.add(v);
      });
    }
  }
}
