import 'package:flutter/material.dart';

class InductionAppMenu extends StatelessWidget {
  const InductionAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/yellowRectangle.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MENU',
                    style: TextStyle(
                        fontSize: 81,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: const EdgeInsets.only(left: 15, top: 3),
                      child: Image.asset('images/schedule.png'))),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: Image.asset('images/club.png'))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: Image.asset('images/vtour.png'))),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      margin: const EdgeInsets.only(right: 15),
                      child: Image.asset('images/contact.png'))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: const EdgeInsets.only(left: 15),
                      child: const DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                          child: Column(children: [
                            Text('Home'),
                            Text('About Us'),
                            Text('Location'),
                            Text('FAQs'),
                            // all the text here, note: you do not need the style.
                          ])))),
            ],
          ),
        ),
      ),
    );
  }
}
