import 'package:flutter/material.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(200),
          gradient: RadialGradient(
              colors: [Colors.white.withOpacity(0.6), Colors.white.withOpacity(0.3), Colors.white.withOpacity(0.01)], radius: 0.5)),
      alignment: Alignment.center,
    );
  }
}
