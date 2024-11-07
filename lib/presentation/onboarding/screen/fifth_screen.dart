import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/values/app_values.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/big_cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/button_row.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/gradient_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/star_widget.dart';
import 'package:flutter_pro_multimedia/presentation/onboarding/screen/sixth_screen.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.sizeOf(context).height * AppValues.titleTopPercentage,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Bądź ',
                    style: AppValues.basicTextStyle,
                  ),
                  Text(
                    'na bieżąco!',
                    style: AppValues.basicTextStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: MediaQuery.of(context).size.height * 0.3,
              child: const GradientWidget(),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/6.png',
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.22, right: MediaQuery.of(context).size.width * 0.2, child: const StarWidget()),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.4,
                right: MediaQuery.of(context).size.width * 0.1,
                child: const StarWidget(
                  isSmalll: true,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.23,
                right: MediaQuery.of(context).size.width * 0.35,
                child: const CloudWidget(
                  width: 50,
                  height: 30,
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.25,
                right: MediaQuery.of(context).size.width * 0.2,
                child: const BigCloudWidget()),
            ButtonRow(
                previouslyStepText: "Pomiń",
                nextStepText: "Dalej",
                function: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SixthScreen()))),
            const Center(child: CloudWidget()),
          ],
        ),
      );
}
