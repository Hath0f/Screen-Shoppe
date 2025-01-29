import 'package:flutter/material.dart';

class RightBubblePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width * 0.25, 0)
      ..quadraticBezierTo(size.width, size.height * 0.25, size.width, size.height * 0.9)
      ..lineTo(size.width * 0.7, size.height)
      ..quadraticBezierTo(0, size.height * 0.75, 0, size.height * 0.25)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class LeftBubblePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue.shade100
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height * 0.20)
      ..quadraticBezierTo(size.width * 0.1, size.height * 1.1, size.width * 0.75, size.height)
      ..lineTo(size.width, size.height * 0.3)
      ..quadraticBezierTo(size.width * 0.4, 0, 0, size.height * 0.1)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
