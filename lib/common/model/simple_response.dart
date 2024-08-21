class SimpleResponse {
  SimpleResponse({
    num? code,
    String? msg,
  }) {
    _code = code;
    _msg = msg;
  }

  SimpleResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
  }

  num? _code;
  String? _msg;

  num? get code => _code;

  String? get msg => _msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['msg'] = _msg;
    return map;
  }
}
