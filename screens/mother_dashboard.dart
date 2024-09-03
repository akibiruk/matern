import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/support_screens/ask_question.dart';
import 'package:index/screens/support_screens/profile.dart';
import 'package:index/screens/support_screens/report_doctor.dart';
import 'package:index/screens/support_screens/update_question.dart';
import 'package:index/screens/support_screens/view_answer.dart';
import 'package:index/screens/view_feedback.dart';
import 'package:url_launcher/url_launcher.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Support',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SupportPage(),
    );
  }
}

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text(
      'ወደ እናቶች ዳሽቦርድ እንኳን ደህና መጡ',
      style: TextStyle(
        fontSize: 20, // Adjust the font size as needed
        fontWeight: FontWeight.bold, // Adjust the font weight as needed
        fontFamily: 'Abyssinica SIL', // Use the Abyssinica SIL font
      ),
    ),
  ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'ዝርዝር',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24, fontFamily: 'Abyssinica SIL',
                ),
              ),
            ),
           ListTile(
  leading: Icon(
    Icons.account_circle,
    color: Colors.blue, // Set the color of the icon
  ),
  title: Text(
    'ፕሮፋይልዎን ይመልከቱ',
    style: TextStyle(
      fontSize: 16, // Adjust the font size as needed
      color: Colors.black, // Set the color of the text
      fontWeight: FontWeight.bold, // Adjust the font weight as needed
      fontFamily: 'Abyssinica SIL', // Use the Abyssinica SIL font
    ),
  ),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  },
),
ListTile(
  leading: Icon(
    Icons.power_settings_new,
    color: Colors.blue, // Set the color of the icon
  ),
  title: Text(
    'ይውጡ',
    style: TextStyle(
      fontSize: 16, // Adjust the font size as needed
      color: Colors.black, // Set the color of the text
      fontWeight: FontWeight.bold, // Adjust the font weight as needed
      fontFamily: 'Abyssinica SIL', // Use the Abyssinica SIL font
    ),
  ),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen()),
    );
  },
),

          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              ' እንኳን ወደ እናቶች ዳሽቦርድ በደህና መጡ. ይህ ስርዓት ለእናቶችና ህፃናት አስፈላጊ የሆነ የአመጋገብ ምክርና መመሪያ ለመስጠት፣ ደኅንነታቸውንና ጤንነታቸውን ለማረጋገጥ ተዛማጅ ጥያቄዎች ለመጠየቅ እንዲሁም የጤና ባለሙያን ለማማከር የተዘጋጀ ሲስተም ወይም ስርዐት ነው።',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                fontSize: 16.0,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16.0), // Adjust spacing as needed
            buildRow(
              context,
              [
                AskQuestionCard(),
              ],
            ),
            SizedBox(height: 16.0), // Adjust spacing as needed
            buildRow(
              context,
              [
                ViewAnswersCard(username: 'username'), // Pass the username here
                ReportDoctorCard(),
              ],
            ),
            SizedBox(height: 16.0), // Adjust spacing as needed
            buildRow(
              context,
              [
                UpdateQuestionsCard(),
                FetchFeedbackCard(), // Add the fetch_fedback widget here
              ],
            ),
            SizedBox(height: 16.0), // Adjust spacing as needed
            buildRow(
              context,
              [
                ChatWithAICoDoctorsCard(),
              ],
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
                    icon: Icon(Icons.child_care),
                    onPressed: () {
                      // Navigate to the infant screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => InfantScreen()),
                      );
                    },
                    tooltip: 'የሕፃናት ግጽ',
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
                    tooltip: 'የእናቶች ግጽ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(BuildContext context, List<Widget> children) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children
          .map((widget) => Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                  child: widget,
                ),
              ))
          .toList(),
    );
  }
}

class AskQuestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AskQuestionPage(),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_answer,
              size: 80,
              color: Colors.purple,
            ),
            Text(
              'የጤና ባለሙያ ያማክሩ',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold, 
                fontFamily: 'Abyssinica SIL',
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Ask any information about you and your baby',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UpdateQuestionsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UpdateQuestions(),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.question_answer,
              size: 80,
              color: Colors.purple,
            ),
            Text(
              'የጠየቁትን ጥያቄ ያርሙ',
              style: TextStyle(
                 fontFamily: 'Abyssinica SIL',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'tap to update your questions',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

class ChatWithAICoDoctorsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        const url = 'https://www.cody.md/';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.chat,
                size: 48,
                color: Colors.green[700],
              ),
              Text(
                'ከ AI Co Doctors chatbot ጋር ይወያዩ',
                style: TextStyle(
                   fontFamily: 'Abyssinica SIL',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Chat with an Expert chatbot',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[400],
                ),
              ),
              Text(
                'Tap to chat',
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class ViewAnswersCard extends StatelessWidget {
  final String username; // Assuming you have the username

  ViewAnswersCard({required this.username});

  @override
 
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewAnswer(),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.visibility,
              size: 80,
              color: Colors.orange,
            ),
            Text(
              'የጥያቄዎትን መልስ ይመልከቱ',
              style: TextStyle(
                 fontFamily: 'Abyssinica SIL',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'View answers for your questions',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}

class ReportDoctorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReportDoctorPage(),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.report_problem,
              size: 80,
              color: Colors.red,
            ),
            Text(
              'ዶክተሮችን ሪፖርት ያድርጉ',
              style: TextStyle(
                 fontFamily: 'Abyssinica SIL',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'View answers for your questions',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class FetchFeedbackCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ViewFedback(),
          ),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.message,
              size: 80,
              color: Colors.red,
            ),
            Text(
              'አስተያየቶችን ይመልከቱ',
              style: TextStyle(
                 fontFamily: 'Abyssinica SIL',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'View feedback from user and admin',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
