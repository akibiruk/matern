import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/mother_dashboard.dart';
import 'package:index/users/authentication/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Answers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ViewAnswer(),
    );
  }
}

class ViewAnswer extends StatefulWidget {
  @override
  _FetchEventState createState() => _FetchEventState();
}

class _FetchEventState extends State<ViewAnswer> {
  List<Map<String, dynamic>> _questionsAndAnswers = [];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ለጠየቁት ጥያቄ መልስ ይመልከቱ',style: TextStyle(fontFamily: 'Abyssinica SIL',),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ስም: ${UserManager().loggedInUsername ?? 'Unknown'}',
              style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Abyssinica SIL',),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String username = UserManager().loggedInUsername ?? '';
                if (username.isNotEmpty) {
                  _fetchQuestionsAndAnswers(username);
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Please log in first.'),
                        actions: <Widget>[
                          TextButton(
                            
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('ለጥያቄዎ መልስ ያግኙ',style: TextStyle(fontFamily: 'Abyssinica SIL',),),
              
                style: ElevatedButton.styleFrom(
                  
          primary: Color.fromARGB(255, 249, 244, 244), // Set button color to pink
           backgroundColor: Colors.blue
        ),

            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _questionsAndAnswers.length,
                itemBuilder: (context, index) {
                  var qa = _questionsAndAnswers[index];
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
    'ጥያቄ: ${qa['question']}',
    style: TextStyle(
      fontFamily: 'Abyssinica SIL',
      fontWeight: FontWeight.bold,
    ),
  ),
  SizedBox(height: 8.0),
  Text(
    'መልስ: ${qa['answer']}',
    style: TextStyle(fontFamily: 'Abyssinica SIL'),
  ),
  SizedBox(height: 8.0),
  Text(
    'የተመለሰበት ሰአት: ${qa['answered_at']}',
    style: TextStyle(fontFamily: 'Abyssinica SIL'),
  ),
  SizedBox(height: 8.0),
  Text(
    'የዶክተር ስም: ${qa['doctor_username']}',
    style: TextStyle(fontFamily: 'Abyssinica SIL'),
  ),
  SizedBox(height: 8.0),
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

 Future<void> _fetchQuestionsAndAnswers(String username) async {
  // Check if the username is null
  if (UserManager().loggedInUsername == null) {
    print("Username is null. Please log in first.");
    return;
  }

  var url = "http://172.20.10.2/flutter-login-signup/view_answer.php?username=${UserManager().loggedInUsername}";

  try {
    var response = await http.get(Uri.parse(url));

    print("Response status code: ${response.statusCode}");
    print("Response body: ${response.body}");

    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      print("Data received: $data");
      setState(() {
        _questionsAndAnswers = List<Map<String, dynamic>>.from(data["questionsAndAnswers"]);
      });
    } else {
      print("Failed to fetch questions and answers. Status code: ${response.statusCode}");
    }
  } catch (e) {
    print("Error fetching questions and answers: $e");
  }
}

}