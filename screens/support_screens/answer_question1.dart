
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/doctor_dashboard.dart';
import 'package:index/screens/mother_dashboard.dart';
import 'package:index/screens/support_screens/notificatiom.dart';
import 'package:index/users/authentication/login.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Answer a Question',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FetchEvent(),
    );
  }
}

class FetchEvent extends StatefulWidget {
  @override
  _FetchEventState createState() => _FetchEventState();
}

class _FetchEventState extends State<FetchEvent> {
  List<Map<String, dynamic>> _questions = [];
    final NotificationManager notificationManager = NotificationManager(); // Instantiate NotificationManager


  @override
  void initState() {
    super.initState();
    _fetchQuestions();
  }

  Future<void> _fetchQuestions() async {
    var url = "http://172.20.10.2/flutter-login-signup/fetch_question.php"; // Update URL accordingly

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        setState(() {
          _questions = List<Map<String, dynamic>>.from(data["questions"]);
        });
         await notificationManager.initializeNotifications();
        await notificationManager.checkAndNotifyUnansweredQuestions();
      }else {
        print("Failed to fetch questions. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching questions: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Answer  Question'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mothers can ask any question related to maternal health and infant nutrition.',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _questions.length,
                itemBuilder: (context, index) {
                  var question = _questions[index];
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.only(bottom: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.blue, width: 2.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Username: ${question['username']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                       Text(
  'Question: ${question['question']}',
  style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font
),

                        SizedBox(height: 8.0),
                        Text('Asked at: ${question['asked_at']}'),
                        SizedBox(height: 8.0),
                        SizedBox(height: 16.0),
                         SizedBox(height: 8.0),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Doctor Name',
                            border: OutlineInputBorder(),
                          ),
                          controller: TextEditingController(text: UserManager().loggedInUsername ?? ''),
                          // Disable editing of the doctor's name text field
                          enabled: false,
                        ),
                        TextField(
  decoration: InputDecoration(
    labelText: 'Answer',
    border: OutlineInputBorder(),
    labelStyle: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the label
  ),
  onChanged: (value) {
    question['answer'] = value;
  },
  style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the input text
),

                       
                        SizedBox(height: 8.0),
                        SizedBox(height: 16.0),
                        Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    // This SizedBox is added to push the button to the right side
    SizedBox(),
    ElevatedButton(
      onPressed: () {
        _submitAnswer(
          question['answer'],
          UserManager().loggedInUsername ?? '', // Use the saved username
          question['id'],
        );
      },
      child: Text('Submit Answer'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Color.fromARGB(255, 16, 16, 16),
        backgroundColor: Color.fromARGB(255, 255, 3, 87),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    ),
  ],
),
                      ],
                    ),
                  );
                },
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

  Future<void> _submitAnswer(String answer, String doctorName, String questionId) async {
    var url = "http://172.20.10.2/flutter-login-signup/submit_answer.php"; // Update URL accordingly

    try {
      var response = await http.post(Uri.parse(url), body: {
        "answer": answer,
        "doctor_username": doctorName,
        "question_id": questionId, // Change key to 'question_id'
      });


if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (data.containsKey("success")) {
          print("Answer submitted successfully");
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Success"),
                content: Text("Answer submitted successfully. Do you want to stay on this page?"),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Yes"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DoctorHomePage()),
                      );
                    },
                    child: Text("No"),
                  ),
                ],
              );
            },
          );
          // Update UI or show a confirmation message if needed
        } else if (data.containsKey("error")) {
          print("Error: ${data['error']}");
          Fluttertoast.showToast(
            msg: "Error: ${data['error']}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
          );
          // Handle error: Display error message to the user
        }
      } else {
        print("Failed to submit answer. Status code: ${response.statusCode}");
        Fluttertoast.showToast(
          msg: "Failed to submit answer. Status code: ${response.statusCode}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
        // Handle failure: Display error message to the user
      }
    } catch (e) {
      print("Error submitting answer: $e");
      Fluttertoast.showToast(
        msg: "Error submitting answer: $e",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
      );
      // Handle error: Display error message to the user
    }
  }
}