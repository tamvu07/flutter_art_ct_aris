import 'package:flutter/material.dart';

enum DeviceListType { all, borrowing }

extension DeviceListTypeExtension on DeviceListType {
  String get title {
    switch (this) {
      case DeviceListType.all:
        return 'Tất cả';
      case DeviceListType.borrowing:
        return 'Đang mượn';
    }
  }
}

Widget buildDeviceListTabs(BuildContext context, TabController controller) {
  return SizedBox(
    height: 50.0,
    child: TabBar(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      controller: controller,
      splashBorderRadius: BorderRadius.circular(25),
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 1, color: Colors.white)),
      tabs: DeviceListType.values.map((e) {
        return Tab(
            child: Text(
          e.title,
          style: const TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ));
      }).toList(),
    ),
  );
}
