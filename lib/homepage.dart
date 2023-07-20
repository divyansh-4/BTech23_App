import 'dart:io';

import 'package:flutter/material.dart';
import 'profilepage.dart';

class HomePage extends StatelessWidget {
  final String? username;
  final String? fullName;
  final File? profileImage;
  final String? pronouns;

  const HomePage({
    Key? key,
    required this.username,
    required this.fullName,
    required this.profileImage,
    required this.pronouns,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: SideBarDrawer(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (profileImage != null)
                CircleAvatar(
                  radius: 50,
                  backgroundImage: FileImage(profileImage!),
                ),
              SizedBox(height: 20),
              Text(
                'Welcome, $username!',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                'Full Name: $fullName',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Pronouns: $pronouns',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
