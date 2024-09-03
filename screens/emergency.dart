import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';
import 'package:index/screens/nearest_hospital.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ድንገተኛ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Abyssinica SIL',
      ),
      home: EmergencyPage(),
    );
  }
}

class EmergencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: TextStyle(
            fontSize: 22,
            color: Colors.black26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/pictures/8w.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'እኛ ሁሌም ለእርስዎ አለን!',
                          style: TextStyle(
                            fontFamily: 'Abyssinica SIL',
                            color: Colors.purple,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'በአስቸጋሪ ሁኔታዎች ውስጥ ፈጣን ድጋፍ ',
                          style: TextStyle(
                            fontFamily: 'Abyssinica SIL',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'የአምቡላንስ አገልግሎቶችን  ',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Abyssinica SIL',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'እንዲሁም ዶክተሮችን በአካልም ሆነ በስልክ ማግኘት ይችላሉ',
                          style: TextStyle(
                            fontFamily: 'Abyssinica SIL',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'እና በአቅራቢያዎ የሚገኘውን ሆስፒታል  በካርታ ላይ ያግኙ።',
                          style: TextStyle(
                            fontFamily: 'Abyssinica SIL',
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ExpansionTile(
              title: Text(
                'ሆስፒታሎች ያግኙ ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                ),
              ),
              children: [
               ListTile(
      title: Text(
        'ጥቁር አንበሳ  ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ፖስታ በት አካባቢ አ/አ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0115511211 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251115511211' as Uri);
  },
),

        ],
      ),
    ),
    ListTile(
      title: Text(
        'ዘውዲቱ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ስሀራተን ሆቴል አካባቢ እ/አ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0115518085 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251115518085' as Uri);
  },
),

        ],
      ),
    ), 

    ListTile(
      title: Text(
        'አለርት ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ዘነበ ወርቅ አካባቢ እ/አ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0947818181 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251947818181' as Uri);
  },
),

        ],
      ),
    ), 

    ListTile(
      title: Text(
        'ጅማ ዩኒቨርሲቲ እስፔሻላይዝድ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ:ቆጬ አካባቢ ጅማ አባጅፋር ',
            style: TextStyle( 
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0471111458 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251471111458' as Uri);
  },
),

        ],
      ),
    ), 
    ListTile(
      title: Text(
        'ጋንዲ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አ/አ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0115518185 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251115518185' as Uri);
  },
),

        ],
      ),
    ), 

    ListTile(
      title: Text(
        'አይደር ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: መቀሌ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0344416690 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251344416690' as Uri);
  },
),

        ],
      ),
    ), 

    ListTile(
      title: Text(
        'ሃዋሳ ዩኒቨርሲቲ ሪፈራል ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ሃዋሳ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0916784402 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251916784402' as Uri);
  },
),

        ],
      ),
    ), 

    ListTile(
      title: Text(
        'የካቲት 12 ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: 6 ኪሎ  እ/አ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0111553065 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251111153065' as Uri);
  },
),

        ],
      ),
    ), 
    ListTile(
      title: Text(
        'ሂወትፋና ሆስፒታል',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ሚካኤል ቤተ ክርስትያን ስካባቢ ሃረር',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: +2512555300319 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+2512555300319' as Uri);
  },
),

        ],
      ),
    ), 
        ListTile(
      title: Text(
        'ድልጮራ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ድሬዳዋ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0915735399 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251915735399' as Uri);
  },
),

        ],
      ),
    ), 
    ListTile(
      title: Text(
        'ካራማራ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ:ጅግጅጋ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ:0929117243 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+25192917243' as Uri);
  },
),

        ],
      ),
    ), 
        ListTile(
      title: Text(
        'አሶሳ ጠቅላላ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አሶሳ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0577750212(ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+2515777500212' as Uri);
  },
),

        ],
      ),
    ), 
        ListTile(
      title: Text(
        'ጋምቤላ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ጋምቤላ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0475510019(ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+2514755100119' as Uri);
  },
),

        ],
      ),
    ), 
    ListTile(
      title: Text(
        'አፋር ሪፈራል ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አፋር ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0914400559 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251914400559' as Uri);
  },
),

        ],
      ),
    ), 

    ListTile(
      title: Text(
        'ሮበ ጠቅላላ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ:ኦሮሚያ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0226651700 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251226651700' as Uri);
  },
),

        ],
      ),
    ), 
        ListTile(
      title: Text(
        'አምቦ ሪፈራል ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አምቦ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0112362229(ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251112362229' as Uri);
  },
),

        ],
      ),
    ), 
        ListTile(
      title: Text(
        'አዳማ ሆስፒታል ህክምና ኮሌጅ:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አዳማ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0910815510 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251910815510' as Uri);
  },
),

        ],
      ),
    ), 
        ListTile(
      title: Text(
        'አርባ ምንጭ ጠቅላላ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ:አርባ ምንጭ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0468814986 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251468814986' as Uri);
  },
),

        ],
      ),
    ), 



    ListTile(
      title: Text(
        'ጎንደር ዩንቨርስቲ ሆስፒታል:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ጎንደር ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 05811241231 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+2515811241231' as Uri);
  },
),

InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MapScreen()),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Open Map',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
  

        ],
      ),
    ), 
















ElevatedButton(
  onPressed: () async {
    String url =
        'https://maps.google.com/maps?width=100%25&height=500&hl=en&q=hospital%20near%20Jimma%20University%20JIT%20Campus&t=&z=14&ie=UTF8&iwloc=B&output=embed';
   if (await canLaunchUrl(url as Uri)) {
  await launchUrl(url as Uri);
}else {
      throw 'Could not launch $url';
    }
  },
  child: Text('Open Map'),
),

              ],
            ),
            ExpansionTile(
  title: Text(
    'የጤና ባለሙያ ያግኙ',
    style: TextStyle(
      fontFamily: 'Abyssinica SIL',
    ),
  ),
  children: [
    ListTile(
      title: Text(
        'ስም',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
          InkWell(
            child: Text(
              'ስልክ: 0222222222 (ለመደወል ይጫኑ)',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
              ),
            ),
            onTap: () {
              launchUrl('tel:+25122222222' as Uri);
            },
          ),
        ],
      ),
    ),
   
    // Add other doctors
  ],

),
      ExpansionTile(
  title: Text(
    'አምቡላንስ አገልግሎት',
    style: TextStyle(
      fontFamily: 'Abyssinica SIL',
    ),
  ),
  children: [
    ListTile(
      title: Text(
        'ጠብታ አምቡላንስ:',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ኢትዮጵያ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
      InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 0911225464 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251911225464' as Uri);
  },
),

        ],
      ),
    ),
    ListTile(
      title: Text(
        'ኒያላ አምቡላንስ',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ኢትዮጵያ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
       InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 6791 or 0988919191/929292 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251988919191' as Uri);
  },
),

        ],
      ),
    ),
    ListTile(
      title: Text(
        'ጥቁር አንበሳ ሆስፒታል አምቡላንስ አገልግሎት',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አዲሥ አበባ  ዋናው ፖስታ ቤት አካባቢ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
         InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 011 551 1211 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:0115511211' as Uri);
  },
),

        ],
      ),
    ),
    ListTile(
      title: Text(
        'የኢትዮጵያ ቀይ መስቀል',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: ኢትዮጵያ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
         InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 907 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:907' as Uri);
  },
),

        ],
      ),
    ),
    ListTile(
      title: Text(
        'ምኒሊክ ሆስፒታል አምቡላንስ አገልግሎት ',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አዲስ አበባ ምኒሊክ አካባቢ ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
         InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone, color: Colors.green), // Phone Icon with green color
      Text(
        'ስልክ: 011 123 4272 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:0111234272' as Uri);
  },
),

        ],
      ),
    ),
    ListTile(
      title: Text(
        'ቅዱስ ፓውሎስ  ሆስፒታል ሚሊኒየም ህክምና ኮለጅ አምቡላንስ አገልግሎት',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'አድራሻ: አዲስ አበባ',
            style: TextStyle(
              fontFamily: 'Abyssinica SIL',
            ),
          ),
          InkWell(
  child: Row(
    children: <Widget>[
      Icon(Icons.phone,color: Colors.green), // Phone Icon
      Text(
        'ስልክ: +251112774787 (ለመደወል ይጫኑ)',
        style: TextStyle(
          fontFamily: 'Abyssinica SIL',
        ),
      ),
    ],
  ),
  onTap: () {
    launchUrl('tel:+251112774787' as Uri);
  },
),


        ],
      ),
    ),
    
     
    
  ],
),
            // Add other ExpansionTiles and widgets
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
