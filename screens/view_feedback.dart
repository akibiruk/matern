import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:index/users/authentication/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Fedback',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ViewFedback(),
    );
  }
}

class ViewFedback extends StatefulWidget {
  @override
  _ViewFedbackState createState() => _ViewFedbackState();
}

class _ViewFedbackState extends State<ViewFedback> {
  List<Map<String, dynamic>> _fedbackData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Fedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _fetchFedback,
              child: Text('Fetch Fedback'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: _fedbackData.length,
                itemBuilder: (context, index) {
                  var fedback = _fedbackData[index];
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
                          'Dear: ${fedback['reported_user']}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'You have get reported due to:',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${fedback['reason']}',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text(
                          'On: ${fedback['reported_date']}.',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        
                        SizedBox(height: 8.0),
                        Text('So: ${fedback['fedback']}',style: TextStyle(color: Colors.red),),
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
    );
  }

  Future<void> _fetchFedback() async {
    String reportedName = UserManager().loggedInUsername ?? '';
    if (reportedName.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Warning'),
            content: Text('You are not logged in. Please log in to view feedback.'),
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
      return;
    }

    var url = "http://172.20.10.2/flutter-login-signup/fetch_fedback.php?reported_name=$reportedName";

    try {
      var response = await http.get(Uri.parse(url));

      print("Response status code: ${response.statusCode}");
      print("Response body: ${response.body}");

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        print("Data received: $data");
        setState(() {
          _fedbackData = List<Map<String, dynamic>>.from(data["fetch_fedback"]);
        });
      } else {
        print("Failed to fetch feedback. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching feedback: $e");
    }
  }
}
