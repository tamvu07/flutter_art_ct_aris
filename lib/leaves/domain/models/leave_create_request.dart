class LeaveCreateRequest {
  LeaveCreateRequest({
      String? title, 
      String? date, 
      num? type, 
      num? due, 
      List<num>? assignee, 
      String? description,}){
    _title = title;
    _date = date;
    _type = type;
    _due = due;
    _assignee = assignee;
    _description = description;
}

  LeaveCreateRequest.fromJson(dynamic json) {
    _title = json['title'];
    _date = json['date'];
    _type = json['type'];
    _due = json['due'];
    _assignee = json['assignee'] != null ? json['assignee'].cast<num>() : [];
    _description = json['description'];
  }
  String? _title;
  String? _date;
  num? _type;
  num? _due;
  List<num>? _assignee;
  String? _description;

  String? get title => _title;
  String? get date => _date;
  num? get type => _type;
  num? get due => _due;
  List<num>? get assignee => _assignee;
  String? get description => _description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['date'] = _date;
    map['type'] = _type;
    map['due'] = _due;
    map['assignee'] = _assignee;
    map['description'] = _description;
    return map;
  }

}