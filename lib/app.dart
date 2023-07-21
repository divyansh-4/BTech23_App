import 'package:btech_induction_2023/view/screens/home/home_screen.dart';
import 'package:btech_induction_2023/view/theme/theme.dart';
import 'package:flutter/material.dart';

class InductionApp extends StatelessWidget {
  const InductionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'B.Tech Induction App',
      theme: InductionAppColor.dark,
      home: const InductionAppHomePage(title: 'IIIT-D Induction App'),
    );
  }
}
