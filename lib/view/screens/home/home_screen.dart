import 'package:btech_induction_2023/extensions/system.dart';import 'package:btech_induction_2023/view/widgets/header.dart';
import 'package:btech_induction_2023/view/widgets/texture_background.dart';
import 'package:flutter/material.dart';

class InductionAppHomePage extends StatefulWidget {
  const InductionAppHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InductionAppHomePage> createState() => _InductionAppHomePageState();
}

class _InductionAppHomePageState extends State<InductionAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          TextureBackground(),
          BackgroundHeader(),
        ],
      ),
    ));
  }
}
