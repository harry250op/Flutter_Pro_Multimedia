import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/core/ui/values/app_values.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/big_cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/cloud_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/curve_line_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/gradient_widget.dart';
import 'package:flutter_pro_multimedia/core/ui/widget/star_widget.dart';
import 'package:flutter_pro_multimedia/presentation/onboarding/screen/first_screen.dart';

class SixthScreen extends StatelessWidget {
  const SixthScreen({super.key});

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
                    'Złap ',
                    style: AppValues.basicTextStyle,
                  ),
                  Text(
                    'swój rytm!',
                    style: AppValues.basicTextStyle.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(bottom: MediaQuery.of(context).size.height * 0.35, left: 30, child: const StarWidget()),
            const CurveLineWidget(),
            Positioned(
              right: 0,
              top: MediaQuery.of(context).size.height * 0.3,
              child: const GradientWidget(),
            ),
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/1.png',
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: 100,
                child: const StarWidget(
                  isSmalll: true,
                )),
            Positioned(top: MediaQuery.of(context).size.height * 0.2, left: 40, child: const BigCloudWidget()),
            Positioned(top: MediaQuery.of(context).size.height * 0.28, left: 100, child: const CloudWidget()),
            Positioned(left: 0, bottom: 50, right: 0, child: _StartButton()),
          ],
        ),
      );
}

class _StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(5, 104, 176, 1),
                  side: const BorderSide(color: Colors.white),
                  padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8)),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FirstScreen())),
              child: const Text(
                'Zaczynamy',
                style: AppValues.basicTextStyle,
              )),
        ],
      );
}
