import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final bool isSmalll;
  static const listNumbers = [2, 6, 8, 8, 10, 10, 8, 8, 6, 2];
  const StarWidget({super.key, this.isSmalll = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isSmalll ? 60 : 100,
      height: isSmalll ? 70 : 120,
      child: ListView.builder(
        itemCount: listNumbers.length,
        itemBuilder: (context, index) => SizedBox(
          width: 100,
          height: isSmalll ? 5 : 8,
          child: Center(
            child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                scrollDirection: Axis.horizontal,
                itemCount: listNumbers[index],
                itemBuilder: (context, index) => CustomPaint(
                      size: isSmalll ? const Size(5, 2) : const Size(8, 3),
                      painter: StarPainter(isSmall: isSmalll),
                    )),
          ),
        ),
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  final bool isSmall;

  const StarPainter({this.isSmall = false});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = isSmall ? Colors.grey.shade400.withOpacity(0.8) : Colors.grey.shade400;

    canvas.drawCircle(Offset.zero, 1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
