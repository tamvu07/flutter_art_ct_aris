import 'package:flutter/material.dart';
import 'package:mobile_aris_management_tool/common/utils/extensions.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_manager_response.dart';
import 'package:mobile_aris_management_tool/leaves/domain/models/leave_response.dart';

import 'leave_statistic_response.dart';


enum LeaveTypeColors {
  annualLeave, insuranceLeave, marriageLeave, noPayLeave, maternityLeave, birthdayLeave
}

class LeaveTypeStatusColor {
  late Color textColor = Colors.white;
  late Color bgColor;
  late int id;

  LeaveTypeStatusColor({this.textColor = Colors.white, required this.bgColor, required this.id});
}

extension LeaveTypeColorExt on LeaveTypeColors {
  LeaveTypeStatusColor get info {
    switch (this) {
      case LeaveTypeColors.annualLeave:
        return LeaveTypeStatusColor(bgColor: HexColor('01ba39'), id: 1);
      case LeaveTypeColors.insuranceLeave:
        return LeaveTypeStatusColor(bgColor: HexColor('9001fa'), id: 2);
      case LeaveTypeColors.marriageLeave:
        return LeaveTypeStatusColor(bgColor: HexColor('ff016c'), id: 3);
      case LeaveTypeColors.noPayLeave:
        return LeaveTypeStatusColor(bgColor: HexColor('b95d01'), id: 4);
      case LeaveTypeColors.maternityLeave:
        return LeaveTypeStatusColor(bgColor: HexColor('0176ff'), id: 5);
      case LeaveTypeColors.birthdayLeave:
        return LeaveTypeStatusColor(bgColor: HexColor('ff6201'), id: 6);
    }
  }
}

enum LeaveStatusColors {
  newStatus, approved, rejected
}

extension LeaveStatusColorsExt on LeaveStatusColors {
  LeaveTypeStatusColor get info {
    switch (this) {
      case LeaveStatusColors.newStatus:
        return LeaveTypeStatusColor(bgColor: HexColor('ffecb7'), id: 0, textColor: HexColor('d37200'));
      case LeaveStatusColors.approved:
        return LeaveTypeStatusColor(bgColor: HexColor('ceffdd'), id: 1, textColor: HexColor('d37200'));
      case LeaveStatusColors.rejected:
        return LeaveTypeStatusColor(bgColor: HexColor('ffb2b2'), id: 2, textColor: HexColor('d37200'));
    }
  }
}

extension LeaveDataExt on LeaveData {
  LeaveTypeStatusColor get typeColor {
    return LeaveTypeColors.values.firstWhere((element) => element.info.id == leaveType?.id).info;
  }
  LeaveTypeStatusColor get statusColor {
    return LeaveStatusColors.values.firstWhere((element) => element.info.id == status).info;
  }
}

extension LeaveManagerExt on LeaveManagerData {
  LeaveTypeStatusColor get typeColor {
    return LeaveTypeColors.values.firstWhere((element) => element.info.id == leaveType?.id).info;
  }
  LeaveTypeStatusColor get statusColor {
    return LeaveStatusColors.values.firstWhere((element) => element.info.id == status).info;
  }
}

extension LeaveStatisticDataExt on LeaveStatisticData {
  List<dynamic> get totalRemaining {
    var day = ((total?.remaining?.parseDouble ?? 0) ~/ 8).toInt();
    var hour = (total?.remaining?.parseDouble ?? 0) % 8;
    return [day, hour];
  }
  List<dynamic> get lastYearRemaining {
    var day = ((lastYear?.remaining?.parseDouble ?? 0) ~/ 8).toInt();
    var hour = (lastYear?.remaining?.parseDouble ?? 0) % 8;
    return [day, hour];
  }
  List<dynamic> get currentAnnual {
    var day = ((currentYear?.annual?.parseDouble ?? 0) ~/ 8).toInt();
    var hour = (currentYear?.annual?.parseDouble ?? 0) % 8;
    return [day, hour];
  }
  List<dynamic> get currentSeniority {
    var day = ((currentYear?.seniority?.parseDouble ?? 0) ~/ 8).toInt();
    var hour = (currentYear?.seniority?.parseDouble ?? 0) % 8;
    return [day, hour];
  }
  List<dynamic> get currentBonus {
    var day = ((currentYear?.bonus?.parseDouble ?? 0) ~/ 8).toInt();
    var hour = (currentYear?.bonus?.parseDouble ?? 0) % 8;
    return [day, hour];
  }
  List<dynamic> get currentLeave {
    var day = ((currentYear?.leave?.parseDouble ?? 0) ~/ 8).toInt();
    var hour = (currentYear?.leave?.parseDouble ?? 0) % 8;
    return [day, hour];
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
