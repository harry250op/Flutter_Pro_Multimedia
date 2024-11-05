import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/big_cloud.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/button_row.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/title_column.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TitleColumn(mainText: 'Spędzaj czas', boldText: 'kreatywnie'),
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/2.png',
            ),
          ),
          ButtonRow(previouslyStepText: "Pomiń", nextStepText: "Dalej", function: () => null),
          Center(child: const CloudWidget()),
        ],
      ),
    );
  }
}
