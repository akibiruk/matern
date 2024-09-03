import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/doctor_dashboard.dart';
import 'package:index/users/authentication/login.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Update Answers',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UpdateAnswers(),
    );
  }
}

class UpdateAnswers extends StatefulWidget {
  @override
  _UpdateAnswersState createState() => _UpdateAnswersState();
}

class _UpdateAnswersState extends State<UpdateAnswers> {
  List<Map<String, dynamic>> _answers = [];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Answers'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: TextEditingController(text: UserManager().loggedInUsername ?? ''),
              decoration: InputDecoration(
                labelText: 'Enter Doctor Username',
                prefixIcon: Icon(Icons.person),
              ),
              // Disable editing of the doctor's username text field
              enabled: false,
            ),
           Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    SizedBox(height: 16.0),
    Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton.icon(
        onPressed: () {
          _fetchAnswers(UserManager().loggedInUsername ?? ''); // Use the saved username
        },
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 249, 244, 244), // Set button color to pink
           backgroundColor: Color.fromARGB(255, 225, 10, 139),
        ),
        icon: Icon(Icons.search),
        label: Text('See Answers',
        
        
        ),
      ),
    ),
  ],
),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _answers.length,
                itemBuilder: (context, index) {
                  var answer = _answers[index];
                  TextEditingController _updatedAnswerController =
                      TextEditingController(text: answer['answer']);
                  return Card(
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Question: ${answer['question']}'),
    SizedBox(height: 8.0),
    Text('Original Answer: ${answer['answer']}'),
    SizedBox(height: 8.0),
    TextField(
      controller: _updatedAnswerController,
      enabled: answer['answer'] != null,
      decoration: InputDecoration(
        labelText: 'Updated Answer',
        border: OutlineInputBorder(),
      ),
    ),
    SizedBox(height: 8.0),
    Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {
          _submitUpdatedAnswer(answer['question'], _updatedAnswerController.text);
        },
        style: ElevatedButton.styleFrom(
         primary: Color.fromARGB(255, 247, 245, 245), // Set button color to pink
           backgroundColor: Color.fromARGB(255, 225, 10, 139),),
        child: Text('Submit Answer',
        ),
      ),
    ),
  ],
),

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

  Future<void> _fetchAnswers(String doctorUsername) async {
    var url =
        "http://172.20.10.2/flutter-login-signup/update_answer.php?doctor_username=$doctorUsername";

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        setState(() {
          _answers = List<Map<String, dynamic>>.from(data["qa_pairs"]);
        });
      } else {
        print("Failed to fetch answers. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching answers: $e");
    }
  }

  Future<void> _submitUpdatedAnswer(String question, String updatedAnswer) async {
    var url = "http://172.20.10.2/flutter-login-signup/update_answer1.php";

    try {
      var response = await http.post(
        Uri.parse(url),
        body: {
          "question": question,
          "updated_answer": updatedAnswer,
        },
      );

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (data.containsKey("success")) {
          // Show success message
          print("Answer updated successfully");
          _showConfirmationDialog();
        } else if (data.containsKey("error")) {
          // Handle error
          print("Error: ${data['error']}");
        }
      } else {
        print("Failed to submit updated answer. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error submitting updated answer: $e");
    }
  }

  Future<void> _showConfirmationDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Answer updated successfully!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Do you want to update another answer?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.of(context).pop();
                _fetchAnswers(UserManager().loggedInUsername ?? ''); // Use the saved username
              },
            ),
            TextButton(
              child: Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DoctorHomePage()),
                );
              },
            ),
          ],
        );
      },
    ).then((_) {
      Fluttertoast.showToast(
        msg: 'Answer updated successfully!',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    });
  }
}
