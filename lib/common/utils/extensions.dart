import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_aris_management_tool/common/widgets/loading_dialog.dart';

extension StringToAnother on String {
  double get parseDouble {
    return double.tryParse(this) ?? 0;
  }

  int get parseInt {
    return int.tryParse(this) ?? 0;
  }
}

extension ContextExt on BuildContext {
  void showErrorDialog(String message) {
    if (message.trim().isEmpty) return;
    showDialog(
      barrierDismissible: false,
      context: this,
      builder: (context) => AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'))
        ],
      ),
    );
  }

  void showLoadingDialog() {
    showDialog(
      barrierDismissible: false,
      context: this,
      builder: (context) => const LoadingDialog(),
    );
  }

  void dismissDialog() {
    Navigator.of(this).pop();
  }
}

extension DateTimeExt on DateTime {
  String format(String pattern) {
    return DateFormat(pattern).format(this);
  }
}