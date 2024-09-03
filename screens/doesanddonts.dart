import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';

void main() {
  runApp(AdvisorSystem());
}

class AdvisorSystem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DosanddontsPage(),
    );
  }
}

class DosanddontsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'የእናቶች ጤና  አማካሪ መዋቅር',
          style: TextStyle(
            fontFamily: 'Abyssinica SIL',
            color: Colors.black26,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DosSection(),
            DontsSection(),
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

class DosSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          'በእርግዝና ወቅት የሚደረጉ',
        style : TextStyle(
  fontFamily: 'Abyssinica SIL',
  color: Color.fromARGB(221, 111, 11, 174), // Change text color here
 
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
  
  height: 5.0, // Adjust line height here
  letterSpacing: 2.0, // Adjust letter spacing here
),
        ),
        children: [
          ListTile(
            title: Text(
              'ፎሊክ አሲድ እና ቫይታሚን ኤ ይውሰዱ',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.purple[600],
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(
              'ፎሊክ አሲድ የሕፃኑን የነርቭ ጉድለቶች እንደ የጀርባ አጥንት ክፍተት (ስፒና ቢፊዳ) የመጋለጥ እድልን ይቀንሳል። በተቻለ ፍጥነት 400mg ፎሊክ አሲድ እንደ ማሟያ ይውሰዱ እስከ መጀመሪያው ወር መጨረሻ ድረስ።',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
           ListTile(
            title: Text(
              'የቫይታሚን ዲ ማሟያ ይውሰዱ',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.purple[600],
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(
              'በእርግዝና እና በጡት ማጥባት ወቅት ይመከራል. አንድ ሕፃን ጤናማ አጥንት፣ ጥርሶች እና ጡንቻዎች እንዲያዳብር ይረዳል።',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
           ListTile(
            title: Text(
              'የተመጣጠነ ምግብ መመገብ',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.purple[600],
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            subtitle: Text(
              'እንደ ፍራፍሬ፣ አትክልት፣ ስጋ፣ አይብ፣ ድንች፣ ባቄላ እና ጥራጥሬ ያሉ የተለያዩ ምግቦችን የሚያጠቃልል የተመጣጠነ አመጋገብ፣ ለጥሩ ጤና አስፈላጊ ነው።',
              style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ),
            ListTile(
            title: Text('አዘውትሮ የአካል ብቃት እንቅስቃሴ ማድረግ ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ንቁ መሆን የተሻለ እንቅልፍ እንዲወስዱ፣ ጭንቀትን እንዲቀንሱ እና በእርግዝና ወቅት ጤናማ እንዲሆኑ ይረዳዎታል። የእግር ጉዞዎች ለአካል ብቃት እንቅስቃሴ ጥሩ ናቸው።',
                style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,
              ),),),
         
          ListTile(
            title: Text('የስሜት መለዋወጥን መከታተል እና መቆጣጠር',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'በእርግዝና ወቅት የስሜት መለዋወጥ የተለመደ ነው. ስሜቶች ሊቋቋሙት የማይችሉት ከሆኑ ወይም ከሁለት ሳምንታት በላይ የሚቆዩ ከሆነ እርዳታ ይጠይቁ።',
                style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,
              ),), ),
          ListTile(
            title: Text('በእርግዝና ወቅት ሊታዩ የሚገባቸው ምልክቶች',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'ሕፃኑ ጤናማ እንዳልሆነ የሚያሳዩ ምልክቶች ሊሆኑ ስለሚችሉ ሁልጊዜ ከአዋላጅ ወይም ከሐኪም ጋር መመርመር ያለባቸው ምልክቶች አሉ.',
                     style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
                Text('• የሚያሰቃይ ሽንት',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
                Text('• ከሴት ብልት ደም መፍሰስ',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
                Text('• ድንገተኛ እና የማያቋርጥ የሆድ ህመም ወይም ቁርጠት',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
                Text('• ከባድ ራስ ምታት',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
                Text('• የሕፃኑ እንቅስቃሴ እየቀነሰ ይሄዳል',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
                Text('• ብዥ ያለ እይታ ፣ በዓይኖች ፊት ነጠብጣቦች',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
                
              ],
            ),
          ),
          ListTile(
            title: Text('በቂ ውሃ መጠጣት',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ድርቀትን ለመከላከል  እና አጠቃላይ ጤናን ለመደገፍ በቀን ውስጥ ብዙ ውሃ ይጠጡ።',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
          ),
          ListTile(
            title: Text('ጎጂ ንጥረ ነገሮችን ያስወግዱ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ህፃኑን ሊጎዱ ስለሚችሉ ከማጨስ ፣ ከአልኮል እና ከአደንዛዥ ዕፅ ይራቁ።',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
          ),
          ListTile(
            title: Text('የቅድመ ወሊድ ክፍሎች ይሳተፉ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ስለ ልጅ መውለድ፣ ጡት ስለማጥባት እና ስለ ልጅ እንክብካቤ ለማወቅ የቅድመ ወሊድ ክፍሎችን መቀላቀል ይመከራል ።',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
          ),
          ListTile(
            title: Text('የመዝናኛ ዘዴዎችን መለማመድ ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ጭንቀትን ለመቀነስ እንደ ጥልቅ ትንፋሽ ወይም ቅድመ ወሊድ ዮጋ ባሉ የመዝናኛ ቴክኒኮች ውስጥ ይሳተፉ።',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
          ),
          ListTile(
            title: Text('በቂ እንቅልፍ ያግኙ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ጤናዎን እና የሕፃኑን እድገት ለመደገፍ በቂ እረፍት እና እንቅልፍ ማግኘቱን ያረጋግጡ።',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
          ),
          ListTile(
            title: Text('ከእርስዎ የጤና እንክብካቤ አማካሪ ጋር ይነጋገሩ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ከጤና አጠባበቅ አማካሪዎ ጋር ይገናኙ እና በእርግዝና ወቅት ስላሉ ስጋቶች ወይም ለውጦች ይወያዩ።',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
          ),
          ListTile(
            title: Text('በቂ ውሃ መጠጣት',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ድርቀትን ለመከላከል  እና አጠቃላይ ጤናን ለመደገፍ በቀን ውስጥ ብዙ ውሃ ይጠጡ።',
                 style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Colors.black,
                fontSize: 14.0,),),
          ),
          ListTile(
            title: Text('ጎጂ የሆኑ ንጥረ ነገሮችን አስወግጂ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ሕፃኑን ሊጎዱት ስለሚችሉ ከማጨስ፣ ከአልኮል መጠጥና ከአደንዛዥ ዕፅ ራቂ.',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: const Color.fromARGB(255, 20, 18, 21),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),),
          
          ListTile(
            title: Text('የቅድመ ወሊድ ክፍል ተከታታይ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ስለ ልጅ መውለድ፣ ስለ ጡት ማጥባትና ስለ ሕፃናት እንክብካቤ ለማወቅ በቅድመ ወሊድ ትምህርት መካፈል።',
                 style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: const Color.fromARGB(255, 20, 18, 21),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),), ),
          
          ListTile(
            title: Text('ዘና ለማለት የሚረዱ ዘዴዎች ልምምድ ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ውጥረትን ለመቀነስ ጥልቅ የመተንፈስ ወይም የቅድመ ወሊድ ዮጋ የመሳሰሉ የማዝናናት ዘዴዎችን ይሳተፊ.',  style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: const Color.fromARGB(255, 20, 18, 21),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('በቂ እንቅልፍ ይኑርሽ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ጤንነትሽንና የሕፃኑን እድገት ለመደገፍ በቂ እረፍት ና እንቅልፍ ማግኘትሽን ማረጋገጥ።',  style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: const Color.fromARGB(255, 20, 18, 21),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ከጤና አገልግሎት ሰጪዎ ጋር የሐሳብ ልውውጥ ማድረግ' ,
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Colors.purple[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ከጤና አገልግሎት ሰጪሽ ጋር ተገናኝ፤ እንዲሁም በእርግዝና ወቅት የሚያሳስቡሽን ነገሮች ወይም ለውጦች ተወያዩበት።',
                 style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: const Color.fromARGB(255, 20, 18, 21),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          
          // Add more Dos items here
        ],
      ),
    );
  }
}
          // Add more Dos items here

class DontsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          'በእርግዝና ወቅት የማይደረጉ',
          style : TextStyle(
  fontFamily: 'Abyssinica SIL',
  color: Color.fromARGB(221, 198, 13, 13), // Change text color here
  
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
  
  height: 5.0, // Adjust line height here
  letterSpacing: 2.0, // Adjust letter spacing here
),
        ),
        children: [
          ListTile(
            title: Text('በእርግዝና ወቅት ክብደት ለመቀነስ መሞከር',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ክብደትን ለመቀነስ የምግብ ቡድኖችን መቁረጥ ልጅዎ ለእድገት የሚያስፈልጉትን ንጥረ ነገሮች እንዳያገኝ ሊያግደው ይችላል። ክብደትዎን ጤናማ እና ሚዛናዊ በሆነ አመጋገብ ያስተካክሉ ።',
                style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                color: Color.fromARGB(255, 10, 10, 10),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                ),),
          ),

          ListTile(
            title: Text('ሁሉንም ዓይነት ምግቦችን መመገብ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'በእርግዝና ወቅት የኢንፌክሽን አደጋን የሚያስከትሉ አንዳንድ ምግቦችን ያስወግዱ. ለምሳሌ ጥሬ ወይም ያልበሰለ ስጋ፣ ጉበት፣ ጥሬ እንቁላል እና ካፌይን ያካትታሉ።',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 19, 18, 18),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ማጨስ እና አልኮል መጠጣት',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: const Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ማጨስ እና አልኮሆል መጠጣት እንደ ፅንስ መጨንገፍ እና ያለጊዜው መወለድን የመሳሰሉ ችግሮችን ይጨምራሉ። በእርግዝና ወቅት ሙሉ በሙሉ ማስወገድ ያስፈልጋል።',
                 style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 15, 14, 14),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ቡና ያለማቋረጥ መውሰድ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ከፍ ያለ መጠን  የካፌይን ፍጆታ፣ ከእርግዝና ውስብስቦች ጋር የተቆራኘ ስለሆነ የቡና ወይምዎን ይገድቡ።',
                style: TextStyle(
                fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 3, 3, 3),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text(
                'የጤና እንክብካቤ አማካሪን ሳያማክሩ አንዳንድ መድሃኒቶችን መጠቀም',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: const Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'አንዳንድ መድሃኒቶች በማደግ ላይ ላለው ህፃን ጎጂ ሊሆኑ ይችላሉ. በእርግዝና ወቅት ማንኛውንም መድሃኒት ከመውሰድዎ በፊት ሁልጊዜ የጤና እንክብካቤ አቅራቢዎን ያማክሩ.',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 21, 21, 21),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ለጎጂ ኬሚካሎች ወይም መርዛማ ንጥረ ነገሮች  መጋለጥ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ለእርስዎ እና ለልጅዎ ሊጎዱ ለሚችሉ ኬሚካሎች፣ መርዞች ወይም ጭስ ከመጋለጥ ይቆጠቡ። በእርግዝና ወቅት ደህንነቱ የተጠበቀ አካባቢን ያረጋግጡ.',
                 style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 11, 11, 11),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ከፍተኛ ተጽዕኖ የሚያሳድሩ ልምምዶች ወይም እንቅስቃሴዎች',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'በእርግዝና ወቅት ለጉዳት ወይም ለጭንቀት ሊያጋልጡ ከሚችሉ የአካል ብቃት እንቅስቃሴዎች ወይም እንቅስቃሴዎች መራቅ። ለነፍሰ ጡር ሴቶች የሚመከሩ ዝቅተኛ ተፅእኖ ያላቸውን የአካል ብቃት እንቅስቃሴዎችን ይምረጡ።',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ከመጠን በላይ ውጥረት ወይም ስሜታዊ ጭንቀት',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ከፍተኛ የጭንቀት ወይም የስሜት ጭንቀት በእርስዎ እና በልጅዎ ላይ አሉታዊ ተጽእኖ ይኖረዋል። የመዝናኛ ዘዴዎችን ይለማመዱ እና አስፈላጊ ከሆነ ድጋፍ ይጠይቁ.',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('የቅድመ ወሊድ እንክብካቤ ቀጠሮዎችን ችላ ማለት',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'መደበኛ የቅድመ ወሊድ እንክብካቤ ቀጠሮዎች የእርስዎን እና የልጅዎን ጤና ለመቆጣጠር አስፈላጊ ናቸው። ቀጠሮዎችን መዝለል ቀደም ብሎ የማወቅ እና የጣልቃ ገብነት እድሎችን ያስከትሉ ይሆናል።',style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ጥሬ የባህር ምግቦችን ወይም ያልተፈጨ የወተት ተዋጽኦዎችን መጠቀም',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ጥሬ የባህር ምግቦች(እንደ አሳ ) እና ያልተጣበቁ የወተት ተዋጽኦዎች ለምግብ ወለድ በሽታዎች የሚዳርጉ ጎጂ ባክቴሪያዎችን ሊይዙ ይችላሉ. በእርግዝና ወቅት የኢንፌክሽን አደጋን ለመቀነስ እነዚህን ምግቦች ያስወግዱ።',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('ሙቅ ገንዳዎችን ወይም ሳውናዎችን መጠቀም',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'ከሙቀት ገንዳዎች ወይም ሳውናዎች ለከፍተኛ ሙቀት መጋለጥ የሰውነትዎን ሙቀት ከፍ ሊያደርግ ይችላል ይህም በማደግ ላይ ላለው ህፃን ጎጂ ሊሆን ይችላል. በእርግዝና ወቅት ሙቅ ገንዳዎችን ወይም ሳውናዎችን ከመጠቀም መቆጠብ ጥሩ ነው።',style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),),
          ListTile(
            title: Text('ከፍተኛ የመውደቅ አደጋ ባላቸው እንቅስቃሴዎች ውስጥ መሳተፍ',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color:  Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'እንደ ብስክሌት ፣ ፈረስ ግልቢያ፣ ወይም ከፍተኛ የመውደቅ አደጋ ያለባቸው ስፖርታዊ እንቅስቃሴዎች በእርስዎ እና በልጅዎ ላይ ጉዳት እንዳይደርስባቸው በእርግዝና ወቅት መወገድ አለባቸው።',style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          ListTile(
            title: Text('በቂ ውሃ መጠጣትን ችላ ማለት',
                style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 170, 36, 36),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0)),
            subtitle: Text(
                'የጨመረው የደም መጠን እና የአማኒዮቲክ ፈሳሾችን ለመደገፍ በእርግዝና ወቅት እርጥበት መቆየት በጣም አስፈላጊ ነው. ተገቢውን እርጥበት ችላ ማለት እንደ ድርቀት እና ቅድመ ወሊድ ምጥ የመሳሰሉ ውስብስብ ችግሮች ሊያስከትል ይችላል.',style: TextStyle(
                  fontFamily: 'Abyssinica SIL',
                    color: Color.fromARGB(255, 35, 34, 34),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0),),
          ),
          // Add more Don'ts i
         
          // Add more Don'ts items here
        ],
      ),
    );
  }
}
