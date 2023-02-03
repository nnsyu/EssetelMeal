import 'package:flutter/material.dart';

class BodyBackground extends CustomPainter {
  var color;

  BodyBackground({required this.color});

  final leftTopRadiusStart = 15.0;
  final leftTopRadiusEnd = 15.0;

  @override
  void paint(Canvas canvas, Size size) {
    getBody(canvas, size, color);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void getBody(Canvas canvas, Size size, Color color) {
    var bodyPath = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - leftTopRadiusStart, 0)
      ..arcToPoint(Offset(size.width, leftTopRadiusEnd),
          radius: Radius.circular(leftTopRadiusEnd))
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height);

    var bodyPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    canvas.drawPath(bodyPath, bodyPaint);
  }
}
