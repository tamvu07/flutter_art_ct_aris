class ForgotPasswordResponse {
  int? _code;
  String? _msg;

  int? get code => _code;
  String? get msg => _msg;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['msg'] = _msg;
    return map;
  }

  ForgotPasswordResponse({
    int? code,
    String? msg,
  }) {
    _code = code;
    _msg = msg;
  }

  ForgotPasswordResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
  }

  ForgotPasswordResponse copyWith({
    int? code,
    String? msg,
  }) =>
      ForgotPasswordResponse(
        code: code ?? _code,
        msg: msg ?? _msg,
      );
}
