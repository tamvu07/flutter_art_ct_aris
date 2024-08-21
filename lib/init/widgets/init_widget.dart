import 'package:flutter/material.dart';

class InitInfoWidget extends StatelessWidget {
  final String initDataString;

  const InitInfoWidget({super.key, required this.initDataString});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(initDataString));
  }
}

class InitMessageWidget extends StatelessWidget {
  final String message;

  const InitMessageWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text(message)),
    );
  }
}
