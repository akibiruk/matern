
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      ),
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ስለ እኛ',
          style: TextStyle(fontFamily: 'Abyssinica SIL', fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Stack(
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.8),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ስለ እኛ',
                          style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          'ስለ ተልእኮአችን እና ራዕያችን የበለጠ ይወቁ',
                          style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'የእኛ ተልዕኮ',
                    style: TextStyle(
                        fontFamily: 'Abyssinica SIL',
                        color: Colors.pink,
                        fontSize: 16),
                  ),
                  Text(
                    'እርጉዝ እናቶችን ለማብቃት እና የልጆቻቸውን ደህንነት ለማረጋገጥ በእናቶች ጤና እና በጨቅላ ህፃናት አመጋገብ ላይ የተሟላ እና አስተማማኝ መረጃ ለመስጠት ።',
                    style: TextStyle(fontFamily: 'Abyssinica SIL'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'የኛ ራእይ',
                    style: TextStyle(
                        fontFamily: 'Abyssinica SIL',
                        color: Colors.pink,
                        fontSize: 16),
                  ),
                  Text(
                    'እናቶች ጤንነታቸው እና የልጆቻቸውን ጤና በተመለከተ በመረጃ ላይ የተመሰረተ ውሳኔ እንዲያደርጉ የሚረዳ የታመነ ፕላትፎርም ለመሆን እንጥራለን። ዓላማችን እናቶች መመሪያ የሚያገኙበት፣ ለጤና እንክብካቤ ባለሙያዎች ጥያቄዎችን የሚጠይቁበት እና ግላዊ ምክር የሚያገኙበት ፕላትፎርም መፍጠር ነው።',
                    style: TextStyle(fontFamily: 'Abyssinica SIL'),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'የእኛ አገልግሎቶች',
                    style: TextStyle(
                        fontFamily: 'Abyssinica SIL',
                        color: Colors.pink,
                        fontSize: 16),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '• ስለ ትሪሚስተር፣ የሕፃን ጤና፣ የሚደረጉ እና የማይደረጉ መረጃዎችን ማግኘት',
                          style: TextStyle(fontFamily: 'Abyssinica SIL'),
                        ),
                        Text(
                          '• ለሐኪሞች ጥያቄዎችን የመጠየቅ እና የባለሙያ ምክር የመቀበል እድል',


style: TextStyle(fontFamily: 'Abyssinica SIL'),
                        ),
                        Text(
                          '• በእርግዝና ወቅት የተመጣጠነ ምግብን ለመጠበቅ መመሪያ',
                          style: TextStyle(fontFamily: 'Abyssinica SIL'),
                        ),
                        Text(
                          '• የአደጋ ጊዜ መረጃ እና ድጋፍ',
                          style: TextStyle(fontFamily: 'Abyssinica SIL'),
                        ),
                        Text(
                          '• የተለመዱ ስጋቶችን ለመፍታት የሚጠየቁ ጥያቄዎች ክፍል',
                          style: TextStyle(fontFamily: 'Abyssinica SIL'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'ያነጋግሩን',
                    style: TextStyle(
                      fontFamily: 'Abyssinica SIL',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ማንኛቸውም ጥያቄዎች፣ አስተያየቶች ወይም ጥቆማዎች ካሉዎት እባክዎ እኛን ለማግኘት ነፃነት ይሰማዎ፡-',
                          style: TextStyle(fontFamily: 'Abyssinica SIL'),
                        ),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text('Email'),
                          subtitle: Text('Click to reveal'),
                          onTap: () {
                            // Implement logic to reveal email
                            launch('mailto:abdellahabdulhakim@gmail.com');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                          subtitle: Text('Tap to call'),
                          onTap: () {
                            // Implement logic to reveal phone number
                            launch('tel:+251984736486');
                          },
                        ),
                        ListTile(
  leading: Icon(Icons.location_on),
  title: Text(
    'Address',
    style: TextStyle(
      fontFamily: 'Abyssinica SIL',
      color: Colors.pink,
      fontSize: 16,
    ),
  ),
  subtitle: Text(
    'Jimma, Ethiopia',
    style: TextStyle(fontFamily: 'Abyssinica SIL'),
  ),
  onTap: () {
    // Implement logic to reveal address
    print('አድራሻ፡ጅማ፣ኢትዮጵያ');
  },
),

                      ],
                    ),
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