import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/mother_dashboard.dart';
import 'package:index/users/authentication/login.dart'; // Import the UserManager class from the appropriate location

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ask a Question',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AskQuestionPage(),
    );
  }
}

class AskQuestionPage extends StatefulWidget {
  @override
  _AskQuestionPageState createState() => _AskQuestionPageState();
}

class _AskQuestionPageState extends State<AskQuestionPage> {
  final _formKey = GlobalKey<FormState>();
  final _questionController = TextEditingController();

  Future<void> _submitQuestion() async {
    if (_formKey.currentState!.validate()) {
      final username = UserManager().loggedInUsername ?? ''; // Use the saved username
      final question = _questionController.text;

      var url = "http://172.20.10.2/flutter-login-signup/ask.php";

      try {
        var response = await http.post(
          Uri.parse(url),
          body: {
            "username": username,
            "question": question,
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
          Fluttertoast.showToast(
            msg: data["success"],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          // Navigate to the SupportPage after successfully submitting the answer
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportPage()),
          );
        } else {
          Fluttertoast.showToast(
            msg: 'Unexpected response: $data',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.orange,
            textColor: Colors.white,
            fontSize: 16.0,
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
        title: Text('የጤና ባለሙያ ያማክሩ',style: TextStyle(
        fontSize: 20, // Adjust the font size as needed
        fontWeight: FontWeight.bold, // Adjust the font weight as needed
        fontFamily: 'Abyssinica SIL', // Use the Abyssinica SIL font
      ),
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ከእናቶች ጤንነትና ከሕፃናት አመጋገብ ጋር የተያያዘ ማንኛውንም ጥያቄ መጠየቅ ይችላሉ.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Abyssinica SIL',
              ),
            ),
            SizedBox(height: 16.0),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ስም: ${UserManager().loggedInUsername ?? 'Unknown'}', // Display the saved username
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Abyssinica SIL',
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.blue, // Adjust border color as needed
    ),
  ),
  child: TextFormField(
    controller: _questionController,
    decoration: InputDecoration(
      labelText: 'ጥያቄዎትን ያስገቡ',
      labelStyle: TextStyle(fontFamily: 'Abyssinica SIL'), // Apply font to label text
      border: InputBorder.none,
      contentPadding: EdgeInsets.all(12.0),
    ),
    style: TextStyle(fontFamily: 'Abyssinica SIL'), // Apply font to input text
    validator: (value) {
      if (value!.isEmpty) {
        return 'እባክዎ ጥያቄዎትን ያስገቡ';
      }
      return null;
    },
    maxLines: 5,
  ),
),

                Row(
  mainAxisAlignment: MainAxisAlignment.end, // Aligns children to the end (right side)
  children: [
    Spacer(), // Takes up remaining space to push the button to the right
    ElevatedButton(
      onPressed: _submitQuestion,
      child: Text(
        'ይላኩ',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Abyssinica SIL', // Apply font to button text
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink, // Set button color to pink
      ),
    ),
  ],
),

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
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to the home screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SupportPage()),
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
