

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:index/users/authentication/login.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var formKey = GlobalKey<FormState>();
  var fnameController = TextEditingController();
  var lnameController = TextEditingController();
  var usernameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var sexController = TextEditingController();
  var passwordController = TextEditingController();
  var password1Controller = TextEditingController();
  var addressController = TextEditingController();
  var usertypeController = TextEditingController();
  String? selectedSex;
  String selectedUserType = 'mother'; 
  bool isDoctor = false; // Flag to track if user type is Doctor

  registerAndSaveUserRecord() async {
    try {
      var res = await http.post(
        Uri.parse('http://172.20.10.2/flutter-login-signup/signup.php'),
        body: {
          'fname': fnameController.text.trim(),
          'lname': lnameController.text.trim(),
          'username': usernameController.text.trim(),
          'phone': phoneController.text.trim(),
          'email': emailController.text.trim(),
          'sex': selectedSex!,
          'password': passwordController.text.trim(),
          'password1': password1Controller.text.trim(),
          'address': addressController.text.trim(),
          'usertype': selectedUserType,
        },
      );
      if (res.statusCode == 200) {
        var resBodyOfSignup = jsonDecode(res.body);
        if (resBodyOfSignup == "Success: User registered successfully") {
          Fluttertoast.showToast(msg: "Registration successful");
          // Navigate to login screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        } else if (resBodyOfSignup == "Error: Email already exists") {
          Fluttertoast.showToast(msg: "Email already exists");
        } else {
          Fluttertoast.showToast(msg: "Registration failed");
        }
      }
    } catch (e) {
      print(e.toString());
      Fluttertoast.showToast(msg: "Error: $e");
    }
  }


@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color.fromARGB(66, 247, 244, 244),
                          offset: Offset(0, -3),
                        )
                      ],
                      color: Colors.black26,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextFormField(
                              controller: fnameController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.person),
                                hintText: "First Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your first name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: lnameController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.person),
                                hintText: "Last Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your last name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.person),
                                hintText: "Username",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a username';
                                }
                                return null;
                              },
                            ),


SizedBox(height: 10),

TextFormField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.phone),
                                hintText: "Phone",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.email),
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                if (!value.contains('@')) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "Sex",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(width: 20),
                                Row(
                                  children: [
                                    Radio(
                                      value: "Male",
                                      groupValue: selectedSex,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedSex = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Radio(
                                      value: "Female",
                                      groupValue: selectedSex,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedSex = value.toString();
                                        });
                                      },
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],


),
                            SizedBox(height: 10),


TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.lock),
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a password';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: password1Controller,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.lock),
                                hintText: "Confirm Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please confirm your password';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              controller: addressController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(Icons.location_on),
                                hintText: "Address",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your address';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 10),
                            Row(
  children: [
    Text(
      "User Type",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    ),
    SizedBox(width: 20),
    DropdownButton<String>(
      value: selectedUserType, // Always set to 'mother'
      items: <String>['mother'] // Only 'mother' option
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
      onChanged: null, // Disable onChanged
      style: TextStyle(color: Colors.black), // Adjust text color
      underline: Container(), // Hide underline
      disabledHint: Text('mother'), // Display 'mother' as hint
    ),
  ],
),


SizedBox(height: 10),
                            Material(
                              borderRadius: BorderRadius.circular(30),
                              child: InkWell(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    registerAndSaveUserRecord();
                                  }
                                },
                                borderRadius: BorderRadius.circular(30),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 36, 1, 41),
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Already have an account? Login Here",
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}