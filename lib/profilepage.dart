import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        const SnackBar(
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
      drawer: const SideBarDrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/base.jpg',
              fit: BoxFit.cover,
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
                    decoration: const BoxDecoration(
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
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(
                                0xFFFAC018), // Set the background color to #FAC018
                          ),
                          child: const Text('Upload Picture'),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _fullName = value;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            labelText: 'My name is',
                            hintText: 'Full Name',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ), // Set labelText font size and bold
                            hintStyle: TextStyle(
                              fontSize: 16,
                            ), // Set hintText font size
                            border:
                                UnderlineInputBorder(), // Set border to UnderlineInputBorder
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16), // Adjust content padding
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter
                                .singleLineFormatter, // To prevent multiline input
                          ],
                          textAlignVertical: TextAlignVertical
                              .center, // Center vertically inside TextFormField
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _pronouns = value;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            labelText: 'Refer to me as...',
                            hintText: 'Pronouns',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ), // Set labelText font size and bold
                            hintStyle: TextStyle(
                              fontSize: 16,
                            ), // Set hintText font size
                            border:
                                UnderlineInputBorder(), // Set border to UnderlineInputBorder
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16), // Adjust content padding
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter
                                .singleLineFormatter, // To prevent multiline input
                          ],
                          textAlignVertical: TextAlignVertical
                              .center, // Center vertically inside TextFormField
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              _username = value;
                            });
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            labelText: 'and I like to go by',
                            hintText: 'Username',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ), // Set labelText font size and bold
                            hintStyle: TextStyle(
                              fontSize: 16,
                            ), // Set hintText font size
                            border:
                                UnderlineInputBorder(), // Set border to UnderlineInputBorder
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 16), // Adjust content padding
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter
                                .singleLineFormatter, // To prevent multiline input
                          ],
                          textAlignVertical: TextAlignVertical
                              .center, // Center vertically inside TextFormField
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            _saveProfile(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(
                                0xFFFAC018), // Set the background color to #FAC018
                          ),
                          child: const Text('Save and Move to Home Page'),
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
  const SideBarDrawer({super.key});

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
                MaterialPageRoute(builder: (context) => const MyHomePage()),
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
