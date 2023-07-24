import 'dart:async';
import 'package:btech_induction_2023/extensions/navigation.dart';
import 'package:btech_induction_2023/view/widgets/InductionAppMenu.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {});

    controller.repeat(reverse: true);
    Timer(const Duration(seconds: 1), () {
      context.pushReplacement(const InductionAppMenu());
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/midImg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    height:
                        40), // Add some spacing between the image and the progress bar
                LinearProgressIndicator(
                  value: controller.value,
                  minHeight: 25,
                  color: Colors.yellow,
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Colors.yellow),
                ),
                // const LinearProgressIndicator(),
              ],
            ),
          )),
    );
  }
}
