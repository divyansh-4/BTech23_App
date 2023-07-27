import 'package:btech_induction_2023/data/user.dart';
import 'package:btech_induction_2023/view/screens/login/login_screen.dart';
import 'package:btech_induction_2023/view/screens/profile/profile_screen.dart';
import 'package:btech_induction_2023/view/screens/schedule/schedule_screen.dart';
import 'package:btech_induction_2023/view/theme/theme.dart';
import 'package:flutter/material.dart';

class InductionApp extends StatelessWidget {
  const InductionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with the actual UserProfile object
    final UserProfile currentUserProfile = UserProfile(
      fullName: 'John Doe',
      pronouns: 'he/him',
      username: 'johndoe',
      profileImage: 'path', //path
      points: 100,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'B.Tech Induction App',
      theme: InductionAppTheme.dark,
      home: ProfilePage(userProfile: currentUserProfile),
    );
  }
}
