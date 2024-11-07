import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/values/app_values.dart';

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
            style: AppValues.basicTextStyle,
          ),
          Text(
            boldText,
            style: AppValues.basicTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
