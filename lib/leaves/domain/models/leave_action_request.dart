class LeaveActionRequest {
  LeaveActionRequest({
    num? id,
    String? type,
    String? note,
  }) {
    _id = id;
    _type = type;
    _note = note;
  }

  LeaveActionRequest.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _note = json['note'];
  }

  num? _id;
  String? _type;
  String? _note;

  num? get id => _id;

  String? get type => _type;

  String? get note => _note;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['note'] = _note;
    return map;
  }
}

enum LeaveActionType { approve, reject }

extension LeaveActionTypeExt on LeaveActionType {
  String get action {
    return this == LeaveActionType.approve ? 'approve' : 'reject';
  }
}
