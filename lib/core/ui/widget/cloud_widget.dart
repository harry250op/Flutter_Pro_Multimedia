import 'package:flutter/material.dart';

class CloudWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const CloudWidget({
    super.key,
    this.width = 100,
    this.height = 50,
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

    // Draw main cloud body
    final rect = Rect.fromLTWH(size.width * 0.25, size.height * 0.32, size.width * 0.35, size.height * 0.37);
    canvas.drawRect(rect, paint);

    // Additional cloud puffs
    final puff1 = Offset(size.width * 0.19, size.height * 0.5);
    final puff2 = Offset(size.width * 0.55, size.height * 0.45);
    final puff3 = Offset(size.width * 0.35, size.height * 0.3);

    canvas.drawCircle(puff1, size.height * 0.2, paint);
    canvas.drawCircle(puff2, size.height * 0.25, paint);
    canvas.drawCircle(puff3, size.height * 0.3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
