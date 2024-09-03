
import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/dashboard.dart';

void main() {
  runApp(FoodPack());
  
}

class FoodPack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '',
            style: TextStyle(
                fontSize: 22,
                color: Colors.black26,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ለጤናማ ህጻን',
                style: TextStyle(fontFamily:'Abyssinica SIL',fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'በእርግዝና ወቅት ለጤናማ የአኗኗር ዘይቤ የሚከተሉት ዋና ዋና ክፍሎች ይመከራሉ።:',
                style:
                    TextStyle(fontFamily:'Abyssinica SIL',color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'በእርግዝና ወቅት ለጤናማ የአኗኗር ዘይቤ ዋና ዋና ነገሮች',
                    style: TextStyle(
                        fontFamily:'Abyssinica SIL',color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('• ተገቢ ክብደት መጨመር',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                      Text('• የተመጣጠነ አመጋገብ',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                      Text('• መደበኛ የአካል ብቃት እንቅስቃሴ',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                      Text(
                          '• ተገቢ እና ወቅታዊ የቪታሚን እና የማዕድን ማሟያ',
                          style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Text(
                    'በእርግዝና ወቅት ለመመገብ ተስማሚ ምግቦች',
                    style: TextStyle(


fontFamily: 'Abyssinica SIL', color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'አትክልቶች: ',
                            style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'ካሮት, የበሰለ አረንጓዴ, ዱባ, ስፒናች,\n' 
                            'ድንች ድንች, ቀይ ጣፋጭ ፔፐር\n'
                            'ጥቅሞቹ ቫይታሚን ኤ እና\n' 'ፖታስየም ናቸው',
                            style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                                
                          
                          ),),
                          
                       ],
                      ),
                      Row(
                        children: [
                          Text(
                            'ፍራፍሬዎች: ',
                            style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                           ' ሙዝ፣ ​​ወይን ፣ ማር ጤዛ፣ ማንጎ፣\n' 'ብርቱካን፣ ፕሪም ቲማቲም ። ጥቅሙ\n'  'ፖታስየም ነው። ',
                           
                            style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                                
                                ),),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'የወተት ምርት ',
                            style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' 1% ወተት፣ አኩሪ አተር፣ ቅባት የሌለው\n''ወይም ዝቅተኛ ቅባት ያለው እርጎ\n''ጥቅሞቹ ቫይታሚን ኤ ቫይታሚን ዲ፣\n' 'ካልሲየም እና ፖታስየም' ,
                            
                            
                            
                            style: TextStyle(
                              fontFamily: 'Abyssinica SIL',
                            ),),


],
                      ),
                      Row(
                        children: [
                          Text(
                            'ጥራጥሬዎች:',
                            style: TextStyle(
                               fontFamily: 'Abyssinica SIL',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                           ' የበሰለ እህል ወይም ለመብላት ዝግጁ\n' 'የሆነ እህል ጥቅሞቹ ብረት እና\n' 'ፎሊክ አሲድ ናቸው።',
                           
style: TextStyle(
                            fontFamily: 'Abyssinica SIL',
                           ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'ፕሮቲኖች ',
                            style: TextStyle(
                               fontFamily: 'Abyssinica SIL',
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                           'ባቄላ፣ አተር፣ ስስ የበሬ ሥጋ፣ በግ፣\n' 'የአሳማ ሥጋ፣ ለውዝ፣ ዘር፣ የዶሮ እርባታ፣\n' 'እና የአሳ ስጋ ። ጥቅሞቹ\n' 'አሚኖ አሲድ ነው ',
                           style: 
                           TextStyle(
                            fontFamily: 'Abyssinica SIL',
                           ) ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Text(
                    'በእርግዝና ወቅት መወገድ ያለባቸው ምግቦች',
                    style: TextStyle(
                       fontFamily: 'Abyssinica SIL',
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('•ያልፈላ ወተት እና ምግቦች',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                      
                      Text('•ጥሬ እና ያልበሰለ  እንቁላል እና ስጋ',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                     
                      Text('• አልኮል',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                      Text('•ካፌይን',style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                      
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: ListTile(
                  title: Text(
                    'የቅድመ ወሊድ ተጨማሪ ቪታሚን እና ማዕድን ',
                    style: TextStyle(
                      fontFamily: 'Abyssinica SIL',
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ፎሊክ አሲድ',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                      Text(
                          'ሁሉም የመውለድ እድሜ ያላቸው ሴቶች 400 ማይክሮ ግራም ፎሊክ አሲድ መውሰድ አለባቸው፣ፎሊክ አሲድ እነዚህ ውስት ይገኛል:',
                          style: TextStyle( fontFamily: 'Abyssinica SIL',),),    Column(
                        children: [
                          Text('•አንዳንድ አረንጓዴ ቅጠላማ አትክልቶች',
                           style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                          Text('• አብዛኛዎቹ የቤሪ ፍሬዎች, ፍሬዎች, ባቄላዎች, የሎሚ ፍራፍሬዎች',
                           style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                          Text('•አንዳንድ የቫይታሚኖች', style: TextStyle( fontFamily: 'Abyssinica SIL',),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(


child: ListTile(


title: Text(
                    'የአመጋገብ እና የካሎሪ ምክሮች',
                    style: TextStyle(
                       fontFamily: 'Abyssinica SIL',
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                        'ጤናማ እርግዝናን ለመጠበቅ በየቀኑ በግምት 300 ተጨማሪ ካሎሪዎች ያስፈልጋሉ። ካሎሪዎች ከፕሮቲን፣ ፍራፍሬ፣ አትክልት እና ሙሉ እህል ከተመጣጠነ አመጋገብ መምጣት አለባቸው። ጣፋጭ እና ቅባት በትንሹ መሆን አለበት. የተመጣጠነ አመጋገብ እንደ ማቅለሽለሽ እና የሆድ ድርቀት ያሉ ምልክቶችን ይቀንሳል.    ' ,
                                                               style: TextStyle( fontFamily: 'Abyssinica SIL',),),
         ),), 
         Card(
                child: ListTile(
                  title: Text(
                    'በእርግዝና ወቅት ፈሳሽ መውሰድ',

                    style: TextStyle(
                      fontFamily: 'Abyssinica SIL',
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      'ብዙ ብርጭቆ ውሃን እና ጭማቂዎችን እና ሾርባዎችን በመጠጣት በቂ ፈሳሽ ይውሰዱ። የካፌይን እና ሰው ሰራሽ ጣፋጮችን ስለመገደብ አዋላጁን ወይም ዶክተርን ያነጋግሩ።',
                      style: TextStyle( fontFamily: 'Abyssinica SIL',),),
         ),),   ],
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
      ),
    );
  }
}