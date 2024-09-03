import 'package:flutter/material.dart';

class SettingsMenu extends StatefulWidget {
  @override
  _SettingsMenuState createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  bool isMenuOpen = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: ListTile(
                onTap: () {
                  setState(() {
                    isMenuOpen = !isMenuOpen;
                  });
                },
                title: Text(
                  'Settings',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Customize the theme to your preference',
                  style: TextStyle(color: Colors.grey),
                ),
                trailing: IconButton(
                  icon: Icon(isMenuOpen ? Icons.close : Icons.menu),
                  onPressed: () {
                    setState(() {
                      isMenuOpen = !isMenuOpen;
                    });
                  },
                ),
              ),
            ),
            Divider(),
            ListTile(
              onTap: () {
                // Handle tap on the "Dark Mode" tile
              },
              title: Row(
                children: [
                  Icon(
                    Icons.brightness_2,
                    size: 24,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Dark Mode',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              trailing: Switch(
                value: false, // Provide the current dark mode status here
                onChanged: (value) {
                  // Handle dark mode toggle change
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}