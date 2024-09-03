import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/mother_dashboard.dart';
import 'package:index/screens/doctor_dashboard.dart';
import 'package:index/screens/support_screens/forgot_password.dart';
// ignore: unused_import
import 'package:index/screens/support_screens/try.dart'; 
import 'package:index/users/authentication/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}

class UserManager {
  static final UserManager _instance = UserManager._internal();
  factory UserManager() => _instance;

  String? _loggedInUsername;

  String? get loggedInUsername => _loggedInUsername;

  UserManager._internal();

  void setLoggedInUsername(String username) {
    _loggedInUsername = username;
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var isObsecure = true.obs;

  Future<void> login(BuildContext context) async {
  var url = "http://172.20.10.2/flutter-login-signup/login.php";
  var response = await http.post(Uri.parse(url), body: {
    "username": usernameController.text,
    "password": passwordController.text,
  });
  var data = json.decode(response.body);
  if (data['status'] == "Success") {
    UserManager().setLoggedInUsername(usernameController.text); // Set the logged-in username
    if (data['usertype'] == "doctor") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DoctorHomePage()),
      );
    } else if (data['usertype'] == "mother") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SupportPage()),
      );
    }

    Fluttertoast.showToast(
      msg: 'Login Successful',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 25,
    );
  } else if (data['status'] == "Inactive") {
    Fluttertoast.showToast(
      msg: 'Your account is currently inactive. Please contact support.',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 25,
    );
  } else {
    Fluttertoast.showToast(
      msg: data['message'] ?? 'Username and password invalid',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 25,
    );
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 285,
                  child: Image.asset(
                    "assets/images/pot.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 8,
                          color: Color.fromARGB(255, 235, 221, 221),
                          offset: Offset(0, -3),
                        )
                      ],
                      color: const Color.fromARGB(255, 66, 66, 66),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           TextFormField(
  controller: usernameController,
  validator: (val) =>
      val!.isEmpty ? "Please enter a username" : null,
  decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    prefixIcon: Icon(
      Icons.person,
      color: Colors.black,
    ),
    hintText: "Username...",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.white),
    ),
    contentPadding: EdgeInsets.symmetric(
      horizontal: 14,
      vertical: 6,
    ),
    // Set Abyssinica SIL font for the input text and label
    labelStyle: TextStyle(fontFamily: 'Abyssinica SIL'),
    hintStyle: TextStyle(fontFamily: 'Abyssinica SIL'),
  ),
  style: TextStyle(fontFamily: 'Abyssinica SIL'), // Set Abyssinica SIL font for the input text
),

                            SizedBox(
                              height: 18,
                            ),
                            Obx(
                              () => TextFormField(
                                controller: passwordController,
                                obscureText: isObsecure.value,
                                validator: (val) =>
                                    val!.isEmpty ? "Please enter a password" : null,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  prefixIcon: Icon(
                                    Icons.vpn_key_sharp,
                                    color: Colors.black,
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      isObsecure.toggle();
                                    },
                                    child: Icon(
                                      isObsecure.value
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.black,
                                    ),
                                  ),
                                  hintText: "Password...",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 14,
                                    vertical: 6,
                                  ),
                                ),
                              ),
                              
                            ),
                           

                            SizedBox(
                              height: 18,
                            ),
                          
SizedBox(
                              height: 18,
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(30),
                              child: InkWell(
                                onTap: () {
                                  if (formKey.currentState!.validate()) {
                                    login(context);
                                  }
                                },
                                borderRadius: BorderRadius.circular(30),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 20,
                                  ),
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "Don't have an account? Register here",
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
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
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
      
    ],
  ),
),
    );
  }
}
