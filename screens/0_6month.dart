import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '0 to 6 month',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: month06(),
    );
  }
}

class month06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
    child:  Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: Text(
                'የመጀመሪያው የእናት ጡት ',
                style: TextStyle(
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Abyssinica SIL',
                    fontSize: 18.0),
              ),
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ሕፃናት የመጀመሪያውን የእናት ጡት ቢጫ  ወተት(እንገር) ማግኘት አለባቸው፡፡ ምክንያቱም እንገር ሕፃናትን ከተለያዩ በሽታ አምጪ ተህዋስያን ይከላከልላቸዋል፡፡\n'
 
                          'ሕፃናትን ከተወለዱ አንድ ሰዓት ሳይሞላቸው እናቲቱ ደረት ላይ በማድረግ ጡት እንዲጠቡ ማድረግ አስፈላጊ ነው፡፡ ይህየእናቲቱ ጡት በቂ ወተት ቶሎ እንዲያመነጭ ከማድረጉም ባሻገር የደም ፍሳሿን እንዲቆም ይረዳታል፡፡'
                          'በቀን እና በሌሊት ከ10-20 ጊዜ ህፃናትን ጡት ማጥባት ጤናማ ሆኖ እንዲያድጉ በቂ ንጥረ-ነገር ይሰጣቸዋል።ህጻናት 6 ወር እስኪሞላቸው ድረስ የእናት ጡት ወተት ብቻ ሊሰጣቸው የሚያስፈልገው፡፡ ሌሎች ፈሳሽ ነገሮች ወይም ምግቦች በዚህ ወቅት አያስፈልጓቸውም፡፡',

                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Abyssinica SIL',
                              fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: Text(
                'ከወሊድ በኋላ ',
                style: TextStyle(
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Abyssinica SIL',
                    fontSize: 18.0),
              ),
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                         'ለልጁ ጤና እና ጥንካሬ ከወሊድ በኋላ ባሉት 45 ቀናት ውስጥ የቫይታሚን ኤ ታብሌቶች ወይም ምግቦችን ይውሰዱ፡፡\n'
                         'የእርሶን እና የልጆን ጤንነት ለመጠበቅ በቀን በቂ ምግብ ይመገቡ' ,                     
                              style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Abyssinica SIL',
                              fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

          

            // Add more ExpansionTile widgets for additional sections
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
                  MaterialPageRoute(builder: (context) => month06()),
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
              tooltip: 'Maternal',
            ),
            
          ],
        ),
      ),
    ],
  ),
),
    ),
    );
  }
}

class CollapsibleSection extends StatefulWidget {
  final String title;
  final String content;

  CollapsibleSection({required this.title, required this.content});

  @override
  _CollapsibleSectionState createState() => _CollapsibleSectionState();
}

class _CollapsibleSectionState extends State<CollapsibleSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Abyssinica SIL',
                ),
              ),
              Icon(
                isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
              ),
            ],
          ),
        ),
        if (isExpanded)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              widget.content,
              style: TextStyle(fontSize: 16, fontFamily: 'Abyssinica SIL'),
            ),
          ),
      ],
    );
  }
}
