import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/values/app_values.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/big_cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/button_row.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/gradient_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/star_widget.dart';
import 'package:flutter_pro_multimedia/presentation/onboarding/screen/fifth_screen.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.sizeOf(context).height * AppValues.titleTopPercentage,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Ustawiaj',
                    style: AppValues.basicTextStyle,
                  ),
                  Text(
                    'przypomnienia!',
                    style: AppValues.basicTextStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: MediaQuery.of(context).size.height * 0.25,
              child: const GradientWidget(),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.30,
                left: 10,
                child: const StarWidget(
                  isSmalll: true,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.53,
                right: 10,
                child: const StarWidget(
                  isSmalll: true,
                )),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/5.png',
              ),
            ),
            Positioned(top: MediaQuery.of(context).size.height * 0.2, left: 15, child: const CloudWidget()),
            Positioned(top: MediaQuery.of(context).size.height * 0.1, right: 30, child: const BigCloudWidget()),
            ButtonRow(
                previouslyStepText: "Pomiń",
                nextStepText: "Dalej",
                function: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FifthScreen()))),
            const Center(child: CloudWidget()),
          ],
        ),
      );
}
