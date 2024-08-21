class LeaveDeleteRequest {
  LeaveDeleteRequest({
      num? id,}){
    _id = id;
}

  LeaveDeleteRequest.fromJson(dynamic json) {
    _id = json['id'];
  }
  num? _id;

  num? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }

}