import 'package:flutter/material.dart';

class EmptyBackground extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    getBody(canvas, size);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void getBody(Canvas canvas, Size size) {
    // var bodyPath = Path()
    //   ..moveTo(0, 0)
    //   ..lineTo(size.width, size.height)
    //   ..lineTo(size.width, 0)
    //   ..lineTo(0, size.height);

    var background = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black.withOpacity(0.1)
      ..isAntiAlias = true;

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rect, background);
    
    var paint = Paint()
      ..color = Colors.black.withOpacity(0.5);
    
    canvas.drawLine(Offset(0,0), Offset(size.width, size.height), paint);
    canvas.drawLine(Offset(size.width,0), Offset(0, size.height), paint);




      //..style = PaintingStyle.stroke;

    // canvas.drawPath(bodyPath, bodyPaint);
  }
}
