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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //drawer: buildSidebar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
