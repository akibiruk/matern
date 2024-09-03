import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/trimester.dart';
import 'package:index/screens/trimester3.dart';
import 'package:index/screens/trimister2.dart';


void main() {
  runApp(DoctorDashboard());
}

class DoctorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'የትሪሜስተር ገጽ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TrimisterPage(),
    );
  }
}

class TrimisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('የትሪሜስተር ገጽ',
         style: TextStyle(fontFamily: 'Abyssinica SIL'),),
      ),
      body: SingleChildScrollView(
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
                    'ሰላም እንዴት ናችሁ ይህ የእናቶች ጤና መረጃ ሰጭ ገጽ ነው በዚህ ገጽ ስለ ትሪሜስተር እናወራለን። ትሪሜስተር ማለት በህክምና አንዲት ሴት ከጸነሰችህበት ጊዘ አንስቶ እስከ መውለጃዋ ያለው ጊዜ በሶስት ትሪሜስተር ይመደባል ይህም ማለት አንድ ትሪሜስተር 3ወራትን ያጠቃልላል ማለት ነው። በዚህ መሰረት በዚህ ገጽ አንዲት ነፍሰጡር ሴት እያንዳንዱ ትሪሜስተር ላይ ምን ድረጃ ላይ እንዳለች እና የጤናዋ ሁነታ እንዲሁም የጽንሱ ሁኔታ ምን ደረጃ ላይ እንዳለ የሚሰጥ ሙሉ መረጃ ከታች ተቀምጧል። ',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontFamily: 'Abyssinica SIL',
                      
                    ),
                  ),
                ],
              ),
            ),
            DashboardCard(
              icon: Icons.question_answer,
              title: 'የመጀመርያው ትሪሜስተር ',
              caption: 'ስለ መጀመሪያ ትሪሜስተር መረጃ እዚህ ይመልከቱ',
              color: Colors.green,
              
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trimester1Page()),
                );
              },
            ),
            DashboardCard(
              icon: Icons.question_answer,
              title: 'ሁለተኛው ትሪሜስተር ',
              caption: 'ስለ ሁለተኛው ትሪሜስተር መረጃ እዚህ ይመልከቱ',
              color: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trimester2Page()),
                );
              },
            ),
            DashboardCard(
              icon: Icons.question_answer,
              title: 'ሶስተኛው ትሪሜስተር ',
              caption: 'ስለ ሶስተኛው ትሪሜስተር መረጃ እዚህ ይመልከቱ',
              color: Colors.purple,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Trimester3Page()),
                );
              },
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
                     fontFamily: 'Abyssinica SIL',
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  caption,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: color,
                     fontFamily: 'Abyssinica SIL',
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
