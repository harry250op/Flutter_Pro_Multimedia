import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/values/app_values.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/button_row.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/gradient_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/line_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/star_widget.dart';
import 'package:flutter_pro_multimedia/presentation/onboarding/screen/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
                  Text('Bierz udział', style: AppValues.basicTextStyle.copyWith(fontWeight: FontWeight.bold)),
                  const Text(
                    'w wydarzeniach!',
                    style: AppValues.basicTextStyle,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: MediaQuery.of(context).size.height * 0.35,
              child: const GradientWidget(),
            ),
            Positioned(top: MediaQuery.of(context).size.height * 0.25, left: 50, child: const StarWidget()),
            Positioned(
                bottom: MediaQuery.of(context).size.height * 0.25,
                left: 50,
                child: const StarWidget(
                  isSmalll: true,
                )),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/3.png',
              ),
            ),
            Positioned(bottom: MediaQuery.of(context).size.height * 0.2, child: const LineWidget()),
            ButtonRow(
                previouslyStepText: "Pomiń",
                nextStepText: "Dalej",
                function: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThirdScreen()))),
          ],
        ),
      );
}
