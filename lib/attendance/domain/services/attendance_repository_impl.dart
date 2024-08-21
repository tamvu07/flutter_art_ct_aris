import 'dart:io';

import 'package:intl/intl.dart';
import 'package:mobile_aris_management_tool/attendance/attendance_const.dart';
import 'package:mobile_aris_management_tool/attendance/domain/models/attendance_detail.dart';
import 'package:mobile_aris_management_tool/attendance/domain/repository/attendance_local_data_source.dart';
import 'package:mobile_aris_management_tool/attendance/domain/repository/attendance_remote_data_source.dart';
import 'package:mobile_aris_management_tool/attendance/domain/repository/attendance_repository.dart';
import 'package:mobile_aris_management_tool/common/error/app_error.dart';
import 'package:mobile_aris_management_tool/common/model/result.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  const AttendanceRepositoryImpl({required this.remoteDataSource, required this.localDataSource});
  final AttendanceRemoteDataSource remoteDataSource;
  final AttendanceLocalDataSource localDataSource;

  @override
  Future<Result<List<AttendanceDetail>>> getListAttendance() async {
    /*try {
      var currentData = await remoteDataSource.fetchData();
      //await localDataSource.insertAttendanceDetail(listData: currentData?.listAttendanceDetail ?? List.empty());
      return Result.guard(() => _formatDetailData(data: currentData, inputFormat: AttendanceFormat.serverCheckInOutFormat, outputFormat: AttendanceFormat.checkInOutTime, dayFormat: AttendanceFormat.attendanceDayFormat));
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }*/
    throw Exception();
  }

  void _formatDetailData({required List<AttendanceDetail> listDetailData, required String inputDateTimeFormat, required String outputTimeFormat, required String outputDayFormat, required int inputMonth, required int inputYear, required List<AttendanceDetail> outputList}) {
    for (var detail in listDetailData) {
      var myCopy = detail.copyWith();
      if (detail.checkIn != null) {
        var checkInDateTime = DateFormat(inputDateTimeFormat, Platform.localeName).parse(detail.checkIn!);
        myCopy.isCheckInPass = checkInDateTime.hour <= checkInHour || (checkInDateTime.hour == checkInHour && checkInDateTime.minute <= checkInMinute);
        myCopy.setAttendanceDay = DateFormat(outputDayFormat, Platform.localeName).format(DateFormat(inputDateTimeFormat, Platform.localeName).parse(detail.checkIn!));
        myCopy.setCheckIn = DateFormat(outputTimeFormat, Platform.localeName).format(DateFormat(inputDateTimeFormat, Platform.localeName).parse(detail.checkIn!));
      }
      if (detail.checkOut != null) {
        var checkOutDateTime = DateFormat(inputDateTimeFormat, Platform.localeName).parse(detail.checkOut!);
        myCopy.isCheckOutPass = checkOutDateTime.hour >= checkOutHour || (checkOutDateTime.hour == checkOutHour && checkOutDateTime.minute >= checkOutMinute);
        myCopy.setCheckOut = DateFormat(outputTimeFormat, Intl.systemLocale).format(DateFormat(inputDateTimeFormat, Intl.systemLocale).parse(detail.checkOut!));
      }
      if (detail.checkIn?.isNotEmpty == true && _isInSelectedMonth(inputDateTimeFormat, detail.checkIn!, inputMonth, inputYear)) {
        outputList.add(myCopy);
      }
    }
  }

  @override
  Future<Result<List<AttendanceDetail>>> filterByPos(int pos) async {
    try {
      var listData = await remoteDataSource.getCurrentList();
      if (listData.isEmpty) {
        return Result.guard(() => List.empty());
      } else {
        var currentMonth = DateTime.now().month;
        var selectedYear = DateTime.now().year;
        var selectedMonth = currentMonth;
        if (currentMonth + pos > 12) {
          selectedYear += 1;
          selectedMonth = (currentMonth + pos) - 12;
        } else {
          selectedMonth += pos;
        }
        List<AttendanceDetail> filteredList = [];
        _formatDetailData(listDetailData: listData, inputDateTimeFormat: AttendanceFormat.serverCheckInOutFormat, outputTimeFormat: AttendanceFormat.checkInOutTime, outputDayFormat: AttendanceFormat.attendanceDayFormat, inputMonth: selectedMonth, inputYear: selectedYear, outputList: filteredList);
        return Result.guard(() => filteredList);
      }
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }

  bool _isInSelectedMonth(String inputFormat, String inputDate, int inputMonth, int inputYear) {
    var myDate = DateFormat(inputFormat, Platform.localeName).parse(inputDate);
    return myDate.month == inputMonth && myDate.year == inputYear;
  }
}
