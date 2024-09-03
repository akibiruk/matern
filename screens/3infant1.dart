import 'package:flutter/material.dart';
import 'package:index/screens/0_6month.dart';
import 'package:index/screens/12_24month.dart';
import 'package:index/screens/6_12month.dart';
import 'package:index/screens/dashboard.dart';

void main() {
  runApp(DoctorDashboard());
}

class DoctorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'የሕፃናት አመጋገብ ገጽ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Abyssinica SIL',
      ),
      home: InfantScreen(),
    );
  }
}

class InfantScreen extends StatefulWidget {
  @override
  _InfantScreenState createState() => _InfantScreenState();
}

class _InfantScreenState extends State<InfantScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    InfantScreen1(),
    DashboardScreen(), // Add your MaternalScreen here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'የሕፃናት አመጋገብ መረጃ ሰጪ ገጽ',
          style: TextStyle(fontFamily: 'Abyssinica SIL'),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.child_care),
            label: 'Maternal',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class InfantScreen1 extends StatelessWidget {
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
                  'እንኳን በደህና መጡ የሕፃናት አመጋገብ መረጃ ሰጪ ገጽ',
                  style: TextStyle(
                    fontFamily: 'Abyssinica SIL',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'እንኳን ወደ ህፃናት አመጋገብ መረጃ ሰጪ ዳሽቦርድ እንኳን በደህና መጡ። ይህ ዳሽቦርድ ለጨቅላ ህጻናት አስፈላጊ የሆኑ የአመጋገብ ምክሮችን እና መመሪያዎችን ለመስጠት ፣ደህንነታቸውን እና ጤናቸውን ለማረጋገጥ\n'
                  'የተነደፈ ነው። በዚህ ዳሽቦርድ በኩል ለእናቶች  የጨቅላ ህፃናት አመጋገብን ለመደገፍ በመረጃ ላይ የተመሰረተ ውሳኔ ለማድረግ የሚረዱ ጠቃሚ ግንዛቤዎችን እና ሪፖርቶችን ማግኘት ይችላሉ።',
                  style: TextStyle(
                    fontFamily: 'Abyssinica SIL',
                    fontSize: 16.0,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          DashboardCard(
icon: Icons.question_answer,
            title: 'ከ 0 እስከ 6 ወር',
            caption: 'ስለ መጀመሪያው 6 ወራት የአመጋገብ መረጃን ይመልከቱ',
            color: Colors.green,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => month06()),
              );
            },
          ),
          DashboardCard(
            icon: Icons.update,
            title: 'ከ 6 እስከ 12 ወር',
            caption: 'ስለ ሁለተኛው 6 ወር የአመጋገብ መረጃን ይመልከቱ',
            color: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => month612()),
              );
            },
          ),
          DashboardCard(
            icon: Icons.report,
            title: 'ከ 12 እስከ 24 ወር',
            caption: 'ስለ ሁለተኛው 12 ወር የአመጋገብ መረጃን ይመልከቱ',
            color: Colors.red,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => month1224()),
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
                    fontFamily: 'Abyssinica SIL',
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  caption,
                  style: TextStyle(
                    fontFamily: 'Abyssinica SIL',
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
