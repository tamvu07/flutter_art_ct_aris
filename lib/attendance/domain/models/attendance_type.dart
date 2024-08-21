class AttendanceType {
  AttendanceType({
    required int comeLate,
    required int noCheckIn,
    required int noCheckOut,
    required int leaveEarly,
    required int pass,
  }) {
    _comeLate = comeLate;
    _noCheckIn = noCheckIn;
    _noCheckOut = noCheckOut;
    _leaveEarly = leaveEarly;
    _pass = pass;
  }
  int _comeLate = 0;
  int get comeLate => _comeLate;
  set setComeLate(int comeLate) => _comeLate = comeLate;

  int _noCheckIn = 0;
  int get noCheckIn => _noCheckIn;
  set setNoCheckIn(int noCheckIn) => _noCheckIn = noCheckIn;

  int _noCheckOut = 0;
  int get noCheckOut => _noCheckOut;
  set setNoCheckOut(int noCheckOut) => _noCheckOut = noCheckOut;

  int _leaveEarly = 0;
  int get leaveEarly => _leaveEarly;
  set setLeaveEarly(int leaveEarly) => _leaveEarly = leaveEarly;

  int _pass = 0;
  int get pass => _pass;
  set setPass(int pass) => _pass = pass;

  AttendanceType copyWith({
    required int comeLate,
    required int noCheckIn,
    required int noCheckOut,
    required int leaveEarly,
    required int pass,
  }) =>
      AttendanceType(comeLate: comeLate, noCheckIn: noCheckIn, noCheckOut: noCheckOut, leaveEarly: leaveEarly, pass: pass);
}
