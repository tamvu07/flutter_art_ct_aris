import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mobile_aris_management_tool/page/booking_page.dart';
import 'package:mobile_aris_management_tool/page/dashboard_page.dart';
import 'package:mobile_aris_management_tool/page/device_page.dart';
import 'package:mobile_aris_management_tool/page/leaves_page.dart';
import 'package:mobile_aris_management_tool/page/more_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  //list of widgets to call ontap
  final widgetOptions = [
    const DashboardPage(),
    const DevicePage(),
    const BookingPage(),
    LeavesPage(),
    const MorePage()
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/nav_home_active.png',
                width: 29,
                height: 28,
              ),
              icon: Image.asset(
                'assets/icons/nav_home.png',
                width: 29,
                height: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/nav_device_active.png',
                width: 29,
                height: 28,
              ),
              icon: Image.asset(
                'assets/icons/nav_device.png',
                width: 29,
                height: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/nav_meeting_active.png',
                width: 29,
                height: 28,
              ),
              icon: Image.asset(
                'assets/icons/nav_meeting.png',
                width: 29,
                height: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/nav_leaves_active.png',
                width: 29,
                height: 28,
              ),
              icon: Image.asset(
                'assets/icons/nav_leaves.png',
                width: 29,
                height: 28,
              ),
              label: ''),
          BottomNavigationBarItem(
              activeIcon: Image.asset(
                'assets/icons/nav_more_active.png',
                width: 29,
                height: 28,
              ),
              icon: Image.asset(
                'assets/icons/nav_more.png',
                width: 29,
                height: 28,
              ),
              label: ''),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.red,
        onTap: onItemTapped,
        selectedLabelStyle: const TextStyle(color: Colors.red, fontSize: 20),
        unselectedFontSize: 16,
        selectedIconTheme:
        const IconThemeData(color: Colors.blue, opacity: 1.0, size: 30.0),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(fontSize: 18, color: Colors.pink),
      ),
    );
  }
}
