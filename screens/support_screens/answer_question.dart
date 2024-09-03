import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Question & Answer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<dynamic> questions = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchQuestions();
  }

  // Fetch questions from the PHP API
  fetchQuestions() async {
    try {
      final response = await http.get(
        Uri.parse("http://172.20.10.2/flutter-login-signup/fetch_question11.php")
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        if (data['questions'] != null) {
          setState(() {
            questions = data['questions'];
            isLoading = false;
          });
        } else {
          setState(() {
            isLoading = false;
          });
          print("No questions found in response.");
        }
      } else {
        throw Exception('Failed to load questions with status code: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Failed to load questions: $e'); // Error handling
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Questions"),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(questions[index]['question']),
            subtitle: Text('Asked by: ${questions[index]['username']}'),
          );
        },
      ),
    );
  }
}
