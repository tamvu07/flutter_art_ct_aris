import 'dart:ui';

const iconPath = "assets/icons";
const imagePath = "assets/images";
const pngExtension = ".png";
const attendanceTotalMonth = 6;
const checkInHour = 8;
const checkInMinute = 30;
const checkOutHour = 17;
const checkOutMinute = 30;

class AttendanceDimens {
  static const icStatusSize = 52.5;
  static const status1FontSize = 15.0;
  static const status2FontSize = 13.0;
  static const statusComment = 13.0;
  static const itemAttendanceDateTxtSize = 13.0;
  static const itemAttendanceStatusTxtSize = 12.0;
  static const itemAttendanceIconCheckInSize = 18.0;
  static const itemAttendanceTxtTimeSize = 22.0;
  static const appbarTxtTileSize = 22.0;
  static const appbarMarginVertical = 24.0;
  static const appbarMarginHorizontal = 20.0;
  static const appbarAvatarSize = 30.0;
  static const attendanceMonthMarginLeft = 20.0;
  static const attendanceMonthHeight = 40.0;
  static const statusMarginVertical = 10.0;
  static const statusMarginHorizontal = 20.0;
  static const statusDetailMarginHorizontal = 5.0;
  static const itemAttendancePaddingVertical = 20.0;
  static const itemAttendancePaddingLeft = 20.0;
  static const itemAttendancePaddingRight = 10.0;
  static const itemAttendanceMarginHorizontal = 20.0;
  static const itemAttendanceStatusTypeMarginVertical = 5.0;
  static const itemAttendanceStatusTypeMarginHorizontal = 10.0;
  static const itemAttendanceLineDashHeight = 5.0;
  static const itemAttendanceLineDashWidth = 1.0;
  static const itemAttendanceLineDashSpace = 1.5;
}

class AttendanceHardString {
  static const appbarTitle = "ĐIỂM DANH";
  static const status = "Bạn làm việc rất chăm chỉ, tiếp tục phát huy bạn nhé!aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
  static const attendancePoint = "Điểm chuyên cần:";
  static const attendancePointValue = "100%";
  static const itemAttendanceDate = "Thứ 6 - 07/08/2022";
  static const itemAttendanceStatus = "Đi trễ";
  static const itemAttendanceCheckIn = "08:36:06";
  static const itemAttendanceCheckOut = "19:00:59";
}

class AttendanceColors {
  static const itemAttendanceTxtFailedStatus = Color(0xffC42C48);
  static const itemAttendanceTxtPassedStatus = Color(0xff001cb5);
  static const itemAttendanceStatus = Color(0xffC42C48);
  static const itemAttendanceBgFailedStatus = Color(0xffffe5ec);
  static const itemAttendanceBgPassedStatus = Color(0xffe5efff);
  static const itemAttendanceDashColor = Color(0xff707070);
  static const itemAttendanceTxtPassedColor = Color(0xff00902c);
  static const itemAttendanceTxtFailedColor = Color(0xffff0000);
}

class AttendanceImage {
  static const iconCheckIn = "$iconPath/ic_check_in$pngExtension";
  static const iconCheckOut = "$iconPath/ic_check_out$pngExtension";
}

class AttendanceFormat {
  static const checkInOutDay = "yyyy-MM-dd";
  static const checkInOutTime = "HH:mm:ss";
  static const attendanceDayFormat = "EEEE - dd/MM/yyyy";
  static const serverCheckInOutFormat = "$checkInOutDay $checkInOutTime";
}
