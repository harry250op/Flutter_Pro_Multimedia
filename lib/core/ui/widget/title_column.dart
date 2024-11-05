import 'package:flutter/material.dart';

class TitleColumn extends StatelessWidget {
  final String mainText;
  final String boldText;

  const TitleColumn({super.key, required this.mainText, required this.boldText});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: 50,
      child: Column(
        children: [
          Text(
            mainText,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
          Text(
            boldText,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
