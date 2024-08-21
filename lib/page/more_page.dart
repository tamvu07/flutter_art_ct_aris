import 'package:flutter/material.dart';
import 'package:mobile_aris_management_tool/page/attendance_page.dart';
import 'package:mobile_aris_management_tool/page/staff_list_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// This is the type used by the popup menu below.
enum Menu { itemOne, itemTwo }

class MorePage extends StatefulWidget {
  const MorePage({Key? key}) : super(key: key);

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  int _selectedMenu = 0;
  //list of widgets to call ontap
  final widgetOptions = [
    StaffListPage(),
    const AttendancePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          // This button presents popup menu items.
          PopupMenuButton<Menu>(
              // Callback that sets the selected popup menu item.
              onSelected: (Menu item) {
                setState(() {
                  _selectedMenu = item.index;
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                    PopupMenuItem<Menu>(
                      value: Menu.itemOne,
                      child: Text(AppLocalizations.of(context)!.menu_stafflist_title),
                    ),
                    PopupMenuItem<Menu>(
                      value: Menu.itemTwo,
                      child: Text(AppLocalizations.of(context)!.menu_attendance_title),
                    ),
                  ])
        ],
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedMenu),
      ),
    );
  }
}
