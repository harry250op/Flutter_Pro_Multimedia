import 'package:flutter/material.dart';
import 'package:flutter_pro_multimedia/presentation/onboarding/screen/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter ProMultimedia',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(62, 111, 167, 1.0),
          useMaterial3: true,
        ),
        home: const FirstScreen(),
      );
}
