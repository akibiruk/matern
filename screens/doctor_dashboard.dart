import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/support_screens/answer_question1.dart';
import 'package:index/screens/support_screens/profile.dart';
import 'package:index/screens/support_screens/report_mother.dart';
import 'package:index/screens/support_screens/update_answer.dart';
import 'package:index/screens/view_feedback.dart';

void main() {
  runApp(DoctorDashboard());
}

class DoctorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DoctorHomePage(),
    );
  }
}

class DoctorHomePage extends StatefulWidget {
  @override
  _DoctorHomePageState createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    DoctorDashboardContent(),
    InfantScreen(),
    DashboardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Dashboard'),
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
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('View Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
           
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text('Logout'),
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
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
         
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care),
            label: 'Infant',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pregnant_woman),
            label: 'Maternal',
          ),
        ],
      ),
    );
  }
}

class DoctorDashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to the Doctor Dashboard',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Welcome to the Doctor Dashboard of the Maternal and Infant Nutrition Advisor System. This system is dedicated to providing essential nutrition advice and guidance to mothers and infants, ensuring their well-being and health. Through this dashboard, administrators have access to valuable insights and reports that aid in making informed decisions to support maternal and infant nutrition.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          DashboardCard(
            icon: Icons.question_answer,
            title: 'Answer mothers Questions',
            caption: 'Provide answers to mothers\' inquiries',
            color: Colors.green,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FetchEvent()), // Navigate to UpdateAnswersPage
              );
            },
          ),
          DashboardCard(
            icon: Icons.update,
            title: 'Update Answers',
            caption: 'Update answers to mother queries',
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>UpdateAnswers
()), // Navigate to UpdateAnswersPage
              );
            },
          ),
          
          DashboardCard(
            icon: Icons.report,
            title: 'Report mother',
            caption: 'Report mother\' concerns or issues',
            color: Colors.red,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReportMotherPage()), // Navigate to ReportMotherPage
              );
            },
          ),
           DashboardCard(
            icon: Icons.message,
            title: 'fetch feedback',
            caption: 'view users feedback ',
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>ViewFedback
()), // Navigate to UpdateAnswersPage
              );
            },
          ),
        ],
      ),
    );
  }
}

class DashboardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String caption;
  final Color color;
  final Function onTap;

  const DashboardCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.caption,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Icon(icon, color: color),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  caption,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: color,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
