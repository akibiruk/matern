import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:index/screens/mother_dashboard.dart';
import 'package:index/users/authentication/login.dart'; // Import the UserManager class from the appropriate location

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Report Doctor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReportDoctorPage(),
    );
  }
}

class ReportDoctorPage extends StatefulWidget {
  @override
  _ReportDoctorPageState createState() => _ReportDoctorPageState();
}

class _ReportDoctorPageState extends State<ReportDoctorPage> {
  final _formKey = GlobalKey<FormState>();
  final _doctorUsernameController = TextEditingController();
  final _reasonController = TextEditingController();

  Future<void> _submitReport() async {
    if (_formKey.currentState!.validate()) {
      final reporterName = UserManager().loggedInUsername ?? ''; // Use saved username
      final doctorUsername = _doctorUsernameController.text;
      final reason = _reasonController.text;

      var url = "http://172.20.10.2/flutter-login-signup/report_doctor.php";

      try {
        var response = await http.post(
          Uri.parse(url),
          body: {
            "report_doctor": "true",
            "reporter_name": reporterName,
            "doctor_username": doctorUsername,
            "reason": reason,
          },
        );

        var data = json.decode(response.body);

        if (data["success"] != null) {
          // Show success toast
          Fluttertoast.showToast(
            msg: "Report submitted successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );

          // Navigate to SupportPage
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SupportPage()),
          );
        }
      } catch (e) {
        // Handle other errors here if needed
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
        title: Text('ዶክተሮችን ሪፖርት ያድርጉ', style: TextStyle(fontFamily: 'Abyssinica SIL'),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
  initialValue: UserManager().loggedInUsername ?? '', // Populate with saved username
  enabled: false,
  decoration: InputDecoration(
    labelText: 'ስም',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelStyle: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the label
  ),
),
SizedBox(height: 16.0),
TextFormField(
  controller: _doctorUsernameController,
  decoration: InputDecoration(
    labelText: 'የዶክተር ስም ያስገቡ',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelStyle: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the label
  ),
  validator: (value) {
    if (value!.isEmpty) {
      return 'Please enter doctor\'s username';
    }
    return null;
  },
),
SizedBox(height: 16.0),
TextFormField(
  controller: _reasonController,
  decoration: InputDecoration(
    labelText: 'ሪፖርት ያደረጉበት ምክንያት ያስገቡ',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    labelStyle: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the label
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
  
  children: [
    SizedBox(height: 16.0),
    Row(
      mainAxisAlignment: MainAxisAlignment.end, // Aligns children to the end (right side)
      children: [
        ElevatedButton(
          onPressed: _submitReport,
          child: Text(
            'ይላኩ',
            style: TextStyle(color: Colors.white,fontFamily: 'Abyssinica SIL'),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      ],
    ),
  ],

)
            ],
          ),
        ),
      ),
    );
  }
}
