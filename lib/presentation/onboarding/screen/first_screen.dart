import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/values/app_values.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/button_row.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/curve_line_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/gradient_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/line_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/star_widget.dart';
import 'package:flutter_pro_multimedia/presentation/onboarding/screen/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.sizeOf(context).height * AppValues.titleTopPercentage,
              child: Column(
                children: [
                  const Text(
                    'Spędzaj czas',
                    style: AppValues.basicTextStyle,
                  ),
                  Text(
                    'kreatywnie!',
                    style: AppValues.basicTextStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const CurveLineWidget(),
            Positioned(bottom: MediaQuery.of(context).size.height * 0.45, child: const LineWidget()),
            Positioned(top: MediaQuery.of(context).size.height * 0.4, right: 20, child: const StarWidget()),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height * 0.25,
              child: const GradientWidget(),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/2.png',
              ),
            ),
            ButtonRow(
                previouslyStepText: "Pomiń",
                nextStepText: "Dalej",
                function: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()))),
            Positioned(top: MediaQuery.of(context).size.height * 0.37, left: 60, child: const StarWidget()),
            Positioned(top: MediaQuery.of(context).size.height * 0.37, left: 55, child: const CloudWidget()),
            Positioned(top: MediaQuery.of(context).size.height * 0.3, right: 0, child: const CloudWidget()),
          ],
        ),
      );
}
