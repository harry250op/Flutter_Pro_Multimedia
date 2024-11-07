import 'dart:math';

import 'package:flutter/material.dart';

class CurveLineWidget extends StatelessWidget {
  const CurveLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 100,
      child: CustomPaint(
        size: const Size(500, 200),
        painter: CurvePainter(),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade300
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
    Path path = Path();
    path.lineTo(size.width * 0.8, 0);

    path.addArc(Rect.fromCircle(center: Offset(size.width * 0.8, 40), radius: 40), 3 * pi / 2, pi);

    path.lineTo(size.width * 0.3, 80);
    path.addArc(Rect.fromCircle(center: Offset(size.width * 0.3, 120), radius: 40), pi / 2, pi);
    path.moveTo(size.width * 0.3, 160);
    path.lineTo(size.width, 160);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
