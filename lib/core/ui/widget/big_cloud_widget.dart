import 'package:flutter/material.dart';

class BigCloudWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const BigCloudWidget({
    super.key,
    this.width = 70,
    this.height = 60,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: CloudPainter(color),
    );
  }
}

class CloudPainter extends CustomPainter {
  final Color color;

  CloudPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final rect = Rect.fromLTWH(size.width * 0.2, size.height * 0.32, size.width * 0.9, size.height * 0.38);
    canvas.drawRect(rect, paint);

    final puff1 = Offset(size.width * 0.25, size.height * 0.5);
    final puff2 = Offset(size.width * 1.1, size.height * 0.5);
    final puff3 = Offset(size.width * 0.5, size.height * 0.3);
    final puff4 = Offset(size.width * 0.9, size.height * 0.3);

    canvas.drawCircle(puff1, size.height * 0.2, paint);
    canvas.drawCircle(puff2, size.height * 0.2, paint);
    canvas.drawCircle(puff3, size.height * 0.3, paint);
    canvas.drawCircle(puff4, size.height * 0.2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
