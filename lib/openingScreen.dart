import 'dart:async';

import 'package:flutter/material.dart';

import 'menu.dart';

class openingScreen extends StatefulWidget {
  @override
  State<openingScreen> createState() => _openingScreenState();
}

class _openingScreenState extends State<openingScreen> with TickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState() {

    controller=AnimationController(vsync: this,
    duration: const Duration(seconds: 1),

    )..addListener(() {
      setState(() {

      });

    }

    );

    controller.repeat(reverse: true);
    // super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => menu(),
          ));
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/background.png'),
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
                        image: AssetImage(
                            'assets/images/midImg.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40), // Add some spacing between the image and the progress bar
                LinearProgressIndicator(
                  value: controller.value,
                  minHeight: 25,
                  color: Colors.yellow,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),

                ),
                // const LinearProgressIndicator(),




              ],
            ),
          )












      ),
    );
  }
}
