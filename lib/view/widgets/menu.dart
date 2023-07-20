import 'package:btech_induction_2023/extensions/navigation.dart';
import 'package:btech_induction_2023/view/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class InductionAppMenu extends StatelessWidget {
  const InductionAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 90.00, // Set the height of the drawer header
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Center(
              child: Text(
                'IIITD',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile Page'),
            onTap: () {
              // Close the drawer and navigate to the Profile Page
              context.pop();
              context.push(ProfileScreen());
            },
          ),
        ],
      ),
    );
  }
}
