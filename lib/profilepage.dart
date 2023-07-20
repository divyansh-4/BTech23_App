import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'main.dart';
import 'package:btech_induction_2023/homepage.dart'; // Import main.dart to access MyHomePage widget

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? _username;
  String? _fullName;
  String? _pronouns;
  File? _profileImage;

  final ImagePicker _imagePicker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await _imagePicker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _profileImage = File(pickedImage.path);
      });
    }
  }

  void _saveProfile(BuildContext context) {
    if (_username != null &&
        _username!.isNotEmpty &&
        _profileImage != null &&
        _fullName != null &&
        _fullName!.isNotEmpty &&
        _pronouns != null &&
        _pronouns!.isNotEmpty) {
      print('Username: $_username');
      print('Full Name: $_fullName');
      print('Pronouns: $_pronouns');
      print('Profile Image Path: ${_profileImage!.path}');

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(
            username: _username,
            fullName: _fullName,
            profileImage: _profileImage,
            pronouns: _pronouns,
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please fill in all the fields and upload a picture.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      drawer: SideBarDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/base.jpg',
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height:
                        423, // Set the desired height for the background image
                    width:
                        340, // Set the desired width for the background image
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'images/profilepagebase.png'), // Provide the path to your "profilepagebase.png" image
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Add other widgets on top of the background image
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (_profileImage != null)
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: FileImage(_profileImage!),
                          ),
                        ElevatedButton(
                          onPressed: () {
                            _pickImage(ImageSource.gallery);
                          },
                          child: Text('Upload Picture'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(
                                0xFFFAC018), // Set the background color to #FAC018
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _fullName = value;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelText: 'My name is',
                            hintText: 'Full Name',
                            labelStyle: TextStyle(
                                fontWeight:
                                    FontWeight.bold), // Set labelText to bold
                            border:
                                UnderlineInputBorder(), // Set border to UnderlineInputBorder
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _pronouns = value;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelText: 'Refer to me as...',
                            hintText: 'Pronouns',
                            labelStyle: TextStyle(
                                fontWeight:
                                    FontWeight.bold), // Set labelText to bold
                            border:
                                UnderlineInputBorder(), // Set border to UnderlineInputBorder
                          ),
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _username = value;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            labelText: 'and I like to go by',
                            hintText: 'Username',
                            labelStyle: TextStyle(
                                fontWeight:
                                    FontWeight.bold), // Set labelText to bold
                            border:
                                UnderlineInputBorder(), // Set border to UnderlineInputBorder
                          ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            _saveProfile(context);
                          },
                          child: Text('Save and Move to Home Page'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(
                                0xFFFAC018), // Set the background color to #FAC018
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SideBarDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'IIITD',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
