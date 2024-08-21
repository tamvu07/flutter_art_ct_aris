import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: const Text(
        "Dashboard",
        style: TextStyle(
          color: Colors.red
        ),
      ),
    );
  }
}
