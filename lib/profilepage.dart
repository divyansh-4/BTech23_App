import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text(
          'This is the Profile Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
