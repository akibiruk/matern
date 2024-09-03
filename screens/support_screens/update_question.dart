import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
      title: 'Update Questions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UpdateQuestions(),
    );
  }
}

class UpdateQuestions extends StatefulWidget {
  @override
  _UpdateQuestionsState createState() => _UpdateQuestionsState();
}

class _UpdateQuestionsState extends State<UpdateQuestions> {
  List<Map<String, dynamic>> _questions = [];

  @override
  Widget build(BuildContext context) {
    // Get the logged-in username from UserManager
    String loggedInUsername = UserManager().loggedInUsername ?? 'Unknown';

    return Scaffold(
      appBar: AppBar(
        title: Text('ትያቄዎትን ያሻሻሽሉ',style: TextStyle(fontFamily: 'Abyssinica SIL'),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ስም: $loggedInUsername', // Display the logged-in username
              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Abyssinica SIL'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _fetchQuestions(loggedInUsername); // Use the saved username
              },
              child: Text('የጠየቁትን ጥያቄ ይመልከቱ',style: TextStyle(fontFamily: 'Abyssinica SIL'),),
            ),
            SizedBox(height: 16.0),
            Expanded(
  child: ListView.builder(
    itemCount: _questions.length,
    itemBuilder: (context, index) {
      var question = _questions[index];
      TextEditingController _updatedQuestionController =
          TextEditingController(text: question['question']);
      return Container(
        margin: EdgeInsets.symmetric(vertical: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blue[100], // Light blue background color
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'መጀመርያ የጠየቁት:',
              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Abyssinica SIL'),
            ),
            SizedBox(height: 8.0),
           Text(
  '${question['question']}',
  style: TextStyle(
    fontFamily: 'Abyssinica SIL', // Set Abyssinica SIL font for the text
  ),
),


            SizedBox(height: 16.0),
            TextFormField(
  controller: _updatedQuestionController,
  decoration: InputDecoration(
    labelText: 'የተሻሻለው ጥያቄ', // Set label text
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelStyle: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the label
    hintStyle: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the hint
  ),
  style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the text input
),


            SizedBox(height: 16.0),
            ElevatedButton(
  onPressed: () {
    _submitUpdatedQuestion(question['id'], _updatedQuestionController.text);
  },
  child: Text(
    'ይላኩ',
    style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the button text
  ),
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

  Future<void> _fetchQuestions(String username) async {
    var url = "http://172.20.10.2/flutter-login-signup/update_question.php?username=$username";

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        setState(() {
          _questions = List<Map<String, dynamic>>.from(data["questions"]);
        });
      } else {
        print("Failed to fetch questions. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching questions: $e");
    }
  }

  Future<void> _submitUpdatedQuestion(String questionId, String updatedQuestion) async {
    var url = "http://172.20.10.2/flutter-login-signup/update_question1.php";

    try {
      var response = await http.post(Uri.parse(url), body: {
        "question_id": questionId,
        "updated_question": updatedQuestion,
      });

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (data.containsKey("success")) {
          _showConfirmationDialog(questionId, updatedQuestion);
        } else if (data.containsKey("error")) {
          print("Error: ${data['error']}");
          // Handle error: Display error message to the user
        }
      } else {
        print("Failed to submit updated question. Status code: ${response.statusCode}");
        // Handle failure: Display error message to the user
      }
    } catch (e) {
      print("Error submitting updated question: $e");
      // Handle error: Display error message to the user
    }
  }
Future<void> _showConfirmationDialog(String questionId, String updatedQuestion) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'ጥያቄዎ በተሳካ ሁኔታ ተሻሽሏልሌላ ጥያቄ ማዘመን ይፈልጋሉ?',
          style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the title
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                'ሌላ ጥያቄ ማሻሻል ይፈልጋሉ?',
                style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the content text
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(
              'አዎ',
              style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the button text
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UpdateQuestions()),
              );
              _fetchQuestions(UserManager().loggedInUsername ?? ''); // Use the saved username
            },
          ),
          TextButton(
            child: Text(
              'አልፈልግም',
              style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the button text
            ),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SupportPage()),
              );
            },
          ),
        ],
      );
    },
  );
}


}

