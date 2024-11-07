import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/values/app_values.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/big_cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/button_row.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/curve_line_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/gradient_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/star_widget.dart';
import 'package:flutter_pro_multimedia/presentation/onboarding/screen/fourth_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

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
                  const Text('Poznawaj', style: AppValues.basicTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('nieodkryte ', style: AppValues.basicTextStyle),
                      Text(
                        'szlaki!',
                        style: AppValues.basicTextStyle.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CurveLineWidget(),
            Positioned(
              right: 0,
              left: 0,
              top: MediaQuery.of(context).size.height * 0.25,
              child: const GradientWidget(),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/4.png',
              ),
            ),
            Positioned(top: MediaQuery.of(context).size.height * 0.28, right: 0, child: const CloudWidget()),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.15,
                right: 25,
                child: const StarWidget(
                  isSmalll: true,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: 25,
                child: const StarWidget(
                  isSmalll: true,
                )),
            Positioned(top: MediaQuery.of(context).size.height * 0.12, right: 25, child: const BigCloudWidget()),
            ButtonRow(
                previouslyStepText: "Pomiń",
                nextStepText: "Dalej",
                function: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FourthScreen()))),
          ],
        ),
      );
}
