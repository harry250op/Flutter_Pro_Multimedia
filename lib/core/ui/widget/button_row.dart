import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final String previouslyStepText;
  final String nextStepText;
  final Function function;

  const ButtonRow({super.key, required this.previouslyStepText, required this.nextStepText, required this.function});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: null,
              child: Text(
                previouslyStepText,
                style: const TextStyle(fontSize: 24),
              )),
          ElevatedButton(
            onPressed: () => function,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(5, 104, 176, 1),
                side: const BorderSide(color: Colors.white),
                padding: const EdgeInsets.symmetric(horizontal: 30.0)),
            child: Text(
              nextStepText,
              style: const TextStyle(fontSize: 24, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
