import 'dart:io';

import 'package:intl/intl.dart';

class AttendanceUtil {
  static List<String> getMonthsInYear(DateTime createdDate, int length) {
    DateFormat dateFormat = DateFormat("MMM yyyy", Platform.localeName);

    List<String> years = [];

    int currentYear = createdDate.year;
    int currentMonth = createdDate.month;
    for (int i = 0; i < length; i++) {
      createdDate = DateTime(currentYear, currentMonth + i);
      years.add(dateFormat.format(createdDate));

      if (currentMonth + i == 1) {
        currentYear += 1;
      }
    }
    return years;
  }
}
