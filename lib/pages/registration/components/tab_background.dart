import 'package:flutter/material.dart';

class TabBackground extends CustomPainter {
  var tapId;

  TabBackground({required this.tapId});

  final leftTopRadiusStart = 15.0;
  final leftTopRadiusEnd = 15.0;

  @override
  void paint(Canvas canvas, Size size) {
    if(tapId == 0) {
      getHomeTap(canvas, size);
    } else {
      getRegiTap(canvas, size);
    }

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

  void getHomeTap(Canvas canvas, Size size) {
    var regiTapPath = Path()
      ..moveTo(0, 40)
      ..lineTo(0, leftTopRadiusStart)
      ..arcToPoint(Offset(leftTopRadiusEnd, 0),
          radius: Radius.circular(leftTopRadiusStart))
      ..lineTo((leftTopRadiusStart * 2) + 200.0, 0)
      ..lineTo((leftTopRadiusStart * 2) + 230.0, 40.0)
      ..lineTo(0, 40.0);

    final regiTapPaint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;

    canvas.drawPath(regiTapPath, regiTapPaint);

    var homeTapPath = Path()
      ..moveTo(0, 40)
      ..lineTo(0, leftTopRadiusStart)
      ..arcToPoint(Offset(leftTopRadiusEnd, 0),
          radius: Radius.circular(leftTopRadiusStart))
      ..lineTo(leftTopRadiusStart + 100.0, 0)
      ..lineTo(leftTopRadiusStart + 130.0, 40.0)
      ..lineTo(0, 40.0);

    final homeTapPaint = Paint()
      ..color = Colors.blue.shade50
      ..style = PaintingStyle.fill;

    canvas.drawPath(homeTapPath, homeTapPaint);

    // var bodyPath = Path()
    //   ..moveTo(0, size.height)
    //   ..lineTo(0, 40)
    //   ..lineTo(size.width - leftTopRadiusStart, 40.0)
    //   ..arcToPoint(Offset(size.width, 40.0 + leftTopRadiusEnd),
    //       radius: Radius.circular(leftTopRadiusEnd))
    //   ..lineTo(size.width, size.height)
    //   ..lineTo(0, size.height);
    //
    // var bodyPaint = Paint()
    //   //..color = Colors.grey.shade50
    //   ..color = Colors.blue.shade50
    //   ..style = PaintingStyle.fill;
    //
    // canvas.drawPath(bodyPath, bodyPaint);
  }

  void getRegiTap(Canvas canvas, Size size) {
    var regiTapPath = Path()
      ..moveTo(0, 40)
      ..lineTo(0, leftTopRadiusStart)
      ..arcToPoint(Offset(leftTopRadiusEnd, 0),
          radius: Radius.circular(leftTopRadiusStart))
      ..lineTo((leftTopRadiusStart * 2) + 200.0, 0)
      ..lineTo((leftTopRadiusStart * 2) + 230.0, 40.0)
      ..lineTo(0, 40.0);

    final regiTapPaint = Paint()
      ..color = Colors.blueAccent
      ..style = PaintingStyle.fill;

    canvas.drawPath(regiTapPath, regiTapPaint);

    var homeTapPath = Path()
      ..moveTo(0, 40)
      ..lineTo(0, leftTopRadiusStart)
      ..arcToPoint(Offset(leftTopRadiusEnd, 0),
          radius: Radius.circular(leftTopRadiusStart))
      ..lineTo(leftTopRadiusStart + 100.0, 0)
      ..lineTo(leftTopRadiusStart + 130.0, 40.0)
      ..lineTo(0, 40.0);

    final homeTapPaint = Paint()
      ..color = Colors.blue.shade50
      ..style = PaintingStyle.fill;

    canvas.drawPath(homeTapPath, homeTapPaint);

    // var bodyPath = Path()
    //   ..moveTo(0, size.height)
    //   ..lineTo(0, 40)
    //   ..lineTo(size.width - leftTopRadiusStart, 40.0)
    //   ..arcToPoint(Offset(size.width, 40.0 + leftTopRadiusEnd),
    //       radius: Radius.circular(leftTopRadiusEnd))
    //   ..lineTo(size.width, size.height)
    //   ..lineTo(0, size.height);
    //
    // var bodyPaint = Paint()
    //   //..color = Colors.grey.shade50
    //   ..color = Colors.blueAccent
    //   ..style = PaintingStyle.fill;
    //
    // canvas.drawPath(bodyPath, bodyPaint);
  }
}
