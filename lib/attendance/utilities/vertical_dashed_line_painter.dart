import 'package:flutter/material.dart';

class VerticalDashedLinePainter extends CustomPainter {
  const VerticalDashedLinePainter({required this.dashWidth, required this.dashHeight, required this.dashSpace, required this.dashedColors});
  final double dashHeight;
  final double dashWidth;
  final double dashSpace;
  final Color dashedColors;
  @override
  void paint(Canvas canvas, Size size) {
    double startY = 0;
    final paint = Paint()
      ..color = dashedColors
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
