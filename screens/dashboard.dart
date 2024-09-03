import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/3trimester.dart';
import 'package:index/screens/doesanddonts.dart';
import 'package:index/screens/emergency.dart';
import 'package:index/screens/faqs.dart';
import 'package:index/screens/food_pack.dart';
import 'package:index/screens/setting.dart';
import 'package:index/screens/support_screens/about_us.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('የእናቶች ጤና አማካሪ ገፅ',
         style: TextStyle(fontFamily: 'Abyssinica SIL'),),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
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
              leading: Icon(Icons.settings),
              title: Text(' ማስተካከያ',
               style: TextStyle(fontFamily: 'Abyssinica SIL'),
              ),
              onTap: () { 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsMenu()),
                );
              },
            ),
ListTile(
  leading: Icon(Icons.power_settings_new),
  title: Text(
    'ስለ እኛ',
    style: TextStyle(fontFamily: 'Abyssinica SIL'),
  ),
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AboutPage()),
    );
  },
),

          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 14.0,
          crossAxisSpacing: 10.0,
          children: [
            DashboardCard(
              title: 'ትሪሜስተርስ',
              subtitle: 'ስለ ትሪሜስተር መረጃ እዚህ ይመልከቱ',
              icon: Icons.file_copy,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrimisterPage()),
                );
              },
            ),
            DashboardCard(
              title: 'ሚደረጉ እና ማይደረጉ',
              subtitle: 'ሚደረጉና ማይደረጉ ነገራቶችህን እዚህ ይመልከቱ',
              icon: Icons.check_circle,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DosanddontsPage()),
                );
              },
            ),
            DashboardCard(
              title: 'የምግብ ጥቅል',
              subtitle: 'የተመጣጠነ አመጋገብን በተመለከተ መረጃ እዚህ ይመልከቱ',
              icon: Icons.restaurant,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodPack()),
                );
              },
            ),
            DashboardCard(
              title: 'ድንገተኛ ጊዘ',
              subtitle: 'ለድንገተኛ/አስቸኳይ ጊዘ መረጃ እዚህ ይመልከቱ',
              icon: Icons.local_hospital,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmergencyPage()),
                );
              },
            ),
            DashboardCard(
              title: 'ድግግሞስ ጥያቄዎች',
              subtitle: 'በተደጋጋሚ የሚነሱ ጥያቄዎችን ይመልከቱ',
              icon: Icons.help,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FaqsPage()),
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
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const DashboardCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40.0, // Adjusted icon size
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 4.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.0, // Adjusted title font size
                fontWeight: FontWeight.bold,
                color: Colors.purple[600],
                fontFamily: 'Abyssinica SIL'
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0, // Adjusted subtitle font size
                color: Colors.pink[600],
                fontFamily: 'Abyssinica SIL'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
