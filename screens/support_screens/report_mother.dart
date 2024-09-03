import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/doctor_dashboard.dart';
import 'package:index/users/authentication/login.dart'; // Import the UserManager class from the appropriate location

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report Mother',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReportMotherPage(),
    );
  }
}

class ReportMotherPage extends StatefulWidget {
  @override
  _ReportMotherPageState createState() => _ReportMotherPageState();
}

class _ReportMotherPageState extends State<ReportMotherPage> {
  final _formKey = GlobalKey<FormState>();
  final _doctorUsernameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _reasonController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Set the doctor's username field with the saved username
    _doctorUsernameController.text = UserManager().loggedInUsername ?? '';
  }

  Future<void> _submitReport() async {
    if (_formKey.currentState!.validate()) {
      final doctorUsername = _doctorUsernameController.text;
      final username = _usernameController.text;
      final reason = _reasonController.text;

      var url = "http://172.20.10.2/flutter-login-signup/report_mother.php";

      try {
        var response = await http.post(
          Uri.parse(url),
          body: {
            "report_mother": "true",
            "doctor_username": doctorUsername,
            "username": username,
            "reason": reason,
          },
        );

        var data = json.decode(response.body);

        if (data["error"] != null) {
          Fluttertoast.showToast(
            msg: data["error"],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        } else if (data["success"] != null) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Report submitted successfully"),
                content: Text("Do you want to continue reporting or go back to the support page?"),
                actions: <Widget>[
                  TextButton(
                    child: Text("Continue"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Do nothing, stay on the same page
                    },
                  ),
                  TextButton(
                    child: Text("Back"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      // Navigate to DoctorHomePage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoctorHomePage()),
                      );
                    },
                  ),
                ],
              );
            },
          );
        }
      } catch (e) {
        Fluttertoast.showToast(
          msg: 'Error: $e',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Mother'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
  controller: _doctorUsernameController,
  decoration: InputDecoration(
    labelText: 'Your Username (Doctor)',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
  enabled: false, // Set enabled to false to make it read-only
  validator: (value) {
    if (value!.isEmpty) {
      return 'Please enter your username (doctor)';
    }
    return null;
  },
),

              SizedBox(height: 16.0),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Mother\'s Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter mother\'s username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _reasonController,
                decoration: InputDecoration(
                  labelText: 'Reason for Report',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter reason for report';
                  }
                  return null;
                },
                maxLines: 5,
              ),
         Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 16.0),
    Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: _submitReport,
        child: Text(
          'Submit Report',
          style: TextStyle(color: Color.fromARGB(255, 23, 23, 23)),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 225, 10, 139),
        ),
      ),
    ),
  ],
)
            ],
          ),
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
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to the home screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorHomePage()),
                );
              },
              tooltip: 'Home',
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
}
