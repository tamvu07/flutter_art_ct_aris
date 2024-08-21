import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: const Text(
        "Booking",
        style: TextStyle(
            color: Colors.red
        ),
      ),
    );
  }
}
