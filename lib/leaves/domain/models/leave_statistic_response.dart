class LeaveStatisticResponse {
  LeaveStatisticResponse({
    int? code,
    String? msg,
    LeaveStatisticData? data,
  }) {
    _code = code;
    _msg = msg;
    _data = data;
  }

  LeaveStatisticResponse.fromJson(dynamic json) {
    _code = json['code'];
    _msg = json['msg'];
    _data = json['data'] != null ? LeaveStatisticData.fromJson(json['data']) : null;
  }

  int? _code;
  String? _msg;
  LeaveStatisticData? _data;

  LeaveStatisticResponse copyWith({
    int? code,
    String? msg,
    LeaveStatisticData? data,
  }) =>
      LeaveStatisticResponse(
        code: code ?? _code,
        msg: msg ?? _msg,
        data: data ?? _data,
      );

  int? get code => _code;

  String? get msg => _msg;

  LeaveStatisticData? get data => _data;

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

class LeaveStatisticData {
  LeaveStatisticData({
    String? name,
    String? startLeave,
    int? dob,
    int? period,
    LastYear? lastYear,
    CurrentYear? currentYear,
    Total? total,
  }) {
    _name = name;
    _startLeave = startLeave;
    _dob = dob;
    _period = period;
    _lastYear = lastYear;
    _currentYear = currentYear;
    _total = total;
  }

  LeaveStatisticData.fromJson(dynamic json) {
    _name = json['name'];
    _startLeave = json['start_leave'];
    _dob = json['dob'];
    _period = json['period'];
    _lastYear = json['last_year'] != null ? LastYear.fromJson(json['last_year']) : null;
    _currentYear = json['current_year'] != null ? CurrentYear.fromJson(json['current_year']) : null;
    _total = json['total'] != null ? Total.fromJson(json['total']) : null;
  }

  String? _name;
  String? _startLeave;
  int? _dob;
  int? _period;
  LastYear? _lastYear;
  CurrentYear? _currentYear;
  Total? _total;

  LeaveStatisticData copyWith({
    String? name,
    String? startLeave,
    int? dob,
    int? period,
    LastYear? lastYear,
    CurrentYear? currentYear,
    Total? total,
  }) =>
      LeaveStatisticData(
        name: name ?? _name,
        startLeave: startLeave ?? _startLeave,
        dob: dob ?? _dob,
        period: period ?? _period,
        lastYear: lastYear ?? _lastYear,
        currentYear: currentYear ?? _currentYear,
        total: total ?? _total,
      );

  String? get name => _name;

  String? get startLeave => _startLeave;

  int? get dob => _dob;

  int? get period => _period;

  LastYear? get lastYear => _lastYear;

  CurrentYear? get currentYear => _currentYear;

  Total? get total => _total;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['start_leave'] = _startLeave;
    map['dob'] = _dob;
    map['period'] = _period;
    if (_lastYear != null) {
      map['last_year'] = _lastYear?.toJson();
    }
    if (_currentYear != null) {
      map['current_year'] = _currentYear?.toJson();
    }
    if (_total != null) {
      map['total'] = _total?.toJson();
    }
    return map;
  }
}

class Total {
  Total({
    String? remaining,
    String? remainingWithout,
  }) {
    _remaining = remaining;
    _remainingWithout = remainingWithout;
  }

  Total.fromJson(dynamic json) {
    _remaining = json['remaining'];
    _remainingWithout = json['remaining_without'];
  }

  String? _remaining;
  String? _remainingWithout;

  Total copyWith({
    String? remaining,
    String? remainingWithout,
  }) =>
      Total(
        remaining: remaining ?? _remaining,
        remainingWithout: remainingWithout ?? _remainingWithout,
      );

  String? get remaining => _remaining;

  String? get remainingWithout => _remainingWithout;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['remaining'] = _remaining;
    map['remaining_without'] = _remainingWithout;
    return map;
  }
}

class CurrentYear {
  CurrentYear({
    String? annual,
    String? seniority,
    String? bonus,
    String? leave,
    String? reset,
    String? remaining,
  }) {
    _annual = annual;
    _seniority = seniority;
    _bonus = bonus;
    _leave = leave;
    _reset = reset;
    _remaining = remaining;
  }

  CurrentYear.fromJson(dynamic json) {
    _annual = json['annual'];
    _seniority = json['seniority'];
    _bonus = json['bonus'];
    _leave = json['leave'];
    _reset = json['reset'];
    _remaining = json['remaining'];
  }

  String? _annual;
  String? _seniority;
  String? _bonus;
  String? _leave;
  String? _reset;
  String? _remaining;

  CurrentYear copyWith({
    String? annual,
    String? seniority,
    String? bonus,
    String? leave,
    String? reset,
    String? remaining,
  }) =>
      CurrentYear(
        annual: annual ?? _annual,
        seniority: seniority ?? _seniority,
        bonus: bonus ?? _bonus,
        leave: leave ?? _leave,
        reset: reset ?? _reset,
        remaining: remaining ?? _remaining,
      );

  String? get annual => _annual;

  String? get seniority => _seniority;

  String? get bonus => _bonus;

  String? get leave => _leave;

  String? get reset => _reset;

  String? get remaining => _remaining;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['annual'] = _annual;
    map['seniority'] = _seniority;
    map['bonus'] = _bonus;
    map['leave'] = _leave;
    map['reset'] = _reset;
    map['remaining'] = _remaining;
    return map;
  }
}

class LastYear {
  LastYear({
    String? annual,
    String? seniority,
    String? bonus,
    String? leave,
    String? reset,
    String? remaining,
  }) {
    _annual = annual;
    _seniority = seniority;
    _bonus = bonus;
    _leave = leave;
    _reset = reset;
    _remaining = remaining;
  }

  LastYear.fromJson(dynamic json) {
    _annual = json['annual'];
    _seniority = json['seniority'];
    _bonus = json['bonus'];
    _leave = json['leave'];
    _reset = json['reset'];
    _remaining = json['remaining'];
  }

  String? _annual;
  String? _seniority;
  String? _bonus;
  String? _leave;
  String? _reset;
  String? _remaining;

  LastYear copyWith({
    String? annual,
    String? seniority,
    String? bonus,
    String? leave,
    String? reset,
    String? remaining,
  }) =>
      LastYear(
        annual: annual ?? _annual,
        seniority: seniority ?? _seniority,
        bonus: bonus ?? _bonus,
        leave: leave ?? _leave,
        reset: reset ?? _reset,
        remaining: remaining ?? _remaining,
      );

  String? get annual => _annual;

  String? get seniority => _seniority;

  String? get bonus => _bonus;

  String? get leave => _leave;

  String? get reset => _reset;

  String? get remaining => _remaining;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['annual'] = _annual;
    map['seniority'] = _seniority;
    map['bonus'] = _bonus;
    map['leave'] = _leave;
    map['reset'] = _reset;
    map['remaining'] = _remaining;
    return map;
  }
}
