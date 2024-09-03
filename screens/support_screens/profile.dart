import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'dart:convert';
import 'package:index/users/authentication/login.dart'; // Import the UserManager class from the appropriate location

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String username;
  late Map<String, dynamic> userData = {};

  @override
  void initState() {
    super.initState();
    username = UserManager().loggedInUsername ?? ''; // Use saved username from UserManager or set it to an empty string if not available
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    final url = "http://172.20.10.2/flutter-login-signup/profile.php?username=$username";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        setState(() {
          userData = json.decode(response.body);
        });
      } else {
        throw Exception('Failed to load user data');
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Failed to load user data'),
        duration: Duration(seconds: 3),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    CircleAvatar(
      radius: 50,
      backgroundColor: Colors.blue,
      child: Icon(
        Icons.person,
        size: 50,
        color: Colors.white,
      ),
    ),
    SizedBox(width: 20),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'የ$username ፕሮፋይል/የግል መረጃ',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,fontFamily: 'Abyssinica SIL'),
      ),
    ),
  ],
),
 Card(
              margin: EdgeInsets.all(10),
              child: ListView(
                shrinkWrap: true,
                children: [
                  _buildTextField('ስም', userData['fname']),
                  _buildTextField('የአባት ስም', userData['lname']),
                  _buildTextField('የተጠቃሚ ስም', userData['username']),
                  _buildTextField('የይለፍ ቃል', userData['password']),
                  _buildTextField('ስልክ', userData['phone']),
                  _buildTextField('ኢሜል', userData['email']),
                  _buildTextField('ጾታ', userData['sex']),
                  _buildTextField('አድራሻ', userData['address']),
                  _buildTextField('ሚና', userData['usertype']),
                ],
              ),
            ),
          ],
        ),
      ),
          bottomNavigationBar: BottomAppBar(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      
      SizedBox(
        width: 60, // Adjust width as needed
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.child_care),
              onPressed: () {
                // Navigate to the infant screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => InfantScreen()),
                );
              },
              tooltip: 'Infant',
            ),
            
          ],
        ),
      ),
      SizedBox(
        width: 60, // Adjust width as needed
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.pregnant_woman),
              onPressed: () {
                // Navigate to the maternal screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                );
              },
              tooltip: 'Maternal',
            ),
            
          ],
        ),
      ),
    ],
  ),
),
    );
  }

  Widget _buildTextField(String label, dynamic value) {
  return ListTile(
    title: Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Abyssinica SIL'),
    ),
    subtitle: Text(
      value?.toString() ?? 'N/A',
      style: TextStyle(color: Colors.blue, fontFamily: 'Abyssinica SIL'),
    ),
  );
}

}
