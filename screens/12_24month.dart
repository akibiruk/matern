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
      title: '12-23',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: month1224(),
    );
  }
}

class month1224 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('maternal health and infant nutrition advisor system'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: Text(
                'አመጋገብ',
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
                           'እድገታቸውን ለማረጋገጥ ከ 12 እስከ 24 ወር ባለው የእድሜ ክልል ውስጥ ህፃናትን በቀን ቢያንስ ከ 3 እስከ 4 ጊዜ የቤተሰብ ምግቦችን እንዲሁም ከ 1 እስከ 2 ጊዜ ሌሎች የመክሰስ ምግቦችን መመገብ አስፈላጊ ነው።\n'
                           'ህፃናት እያደጉ ሲሄዱ የሚሰጣቸው የምግብ መጠንም መጨመር ይኖርበታል። ይሔ ሕፃናት ለአካላቸው በቂ ጉልበት እንዲያገኙ ይረዳቸዋል።\n'
                           'ህጻናት ምግቦችን በትንንሹ እንከትፋለን፣ የምግብ መጠናቸውንና በቀን ውስጥ የሚበሉበትን የምግብ ጊዜያት እንጨምራለን፡፡\n'
                           'ሕፃናት ጡት መጥባት ይቀጥላሉ፣ የታከመ ውኀም ይጠጣሉ፡',

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
                '   #የምግብ አሰራር 22:- እንጀራ ከጎመን ፣ ድንች፣ እንቁላል እና ዘይት/ቅቤ ጋር፣ ለመጠጣት ከወተት ጋር',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                          '-.ጎመን 3 ቅጠሎች\n'
                          '-.ድንች 1 መካከለኛ መጠን ያለው ድንች\n'
                          '-.እንቁላል 1 ትንሽ እንቁላል\n'
                          '-ቅቤ / ዘይት 2 የሻይ ማንኪያ\n'
                          '-አዮዲዝድ የተደረገ ጨው ለጣዕሙ\n'
                          '-እንጀራ የ በቆሎ 1/4 እንጀራ\n'   
                          '-ወተት  1 ኩባያ\n'
                          '-የበሰለ አቮካዶ 1 መካከለኛ መጠን\n',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1. ጎመኑን አጥበው እና ከትፈው ይቀቅሉ\n'
                             '2. ድንቹን አጥበው, ልጠው እና ከትፈው ወደተቀቀለው ጎመን ውስጥ ይጨምሩ\n'
                             '3. በትክክል ሲበስል ጎመን እና ድንቹን ከእሳት ላይ አውርደው እና ያፍጩት።\n'
                             '4. እንቁላሉን መተው በተፈጨው ጎመን እና ድንች ውስጥ ይጨምሩ።\n'
                             '5. ቅቤ / ዘይት እና አዮዲን ጨው ይጨምሩ እና እሳት ላይ አድርገው በማማሰል ያብስሉ\n'
                             '6. ከቀዘቀዘ በኋላ ልጆ በእንጀራ እንዲመገብ መርዳት.\n'
                             'ማሳሰቢያ፡ በማንኛውም ጊዜ ሲገኝ ከእንጀራ ይልቅ 65 ግራም የቡላ ዳቦ መጠቀም ይችላሉ። '
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት ከ 10 ደቂቃ \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ለመክሰስ የበሰለ አቮካዶ\n'
                          '1.አቮካዶውን ይጠቡ እና ይላጡ.\n'
                          '2.ወደ ትናንሽ ቁርጥራጮች ይቁረጡ እና ለልጆ እንዲበላ ይስጡት.',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
          ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 23:- እንጀራ ከድንች፣ ካሮት፣ ጎመን እና እንቁላል ጋር፣ ለመጠጣት ከወተት ጋር',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                        '-ድንች 1 መካከለኛ መጠን ያለው\n'
                        '-ካሮት 2 አነስተኛ መጠን ያለው\n'
                        '-ሽንኩርት ½ ሽንኩርት\n'
                        '-ቅቤ / ዘይት 2 የሻይ ማንኪያ\n'
                        '-ጎመን 3 ቅጠሎች\n'
                        '-እንቁላል 1 ትንሽ እንቁላል\n'
                        '- ውሃ 7 ኩባያ ቡና\n'
                        '-አዮዲዝድ የተደረገ ጨው ለጣዕሙ\n'
                        '-እንጀራ የ በቆሎ ¼ እንጀራ\n'
                        '-ወተት 1 ቡና ኩባያ\n'
                        '-ሙዝ 1 ትልቅ መጠን',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             
                             '1.ሽንኩርቱን ከትፈው በዘይት ያብስሉት።\n'
                             '2.ጎመኑን አጥበው, ይክተፉት እና ሽንኩርቱ ከበሰለ በኋላ ይጨምሩበት\n'
                             '3.ካሮት እና ድንቹን አጥበው ፣ ልጠው ፣ ይክተፉት እና በተመሳሳይ ድስት ውስጥ ይቀቅሉ ።\n'  
                             '4. ካሮት እና ድንቹን አንድ ላይ ይፍጩት እና እንቁላሉን መተው ያዋህዱ\n'
                             '5.የቀረውን ውሃ, አዮዲድ ጨው ይጨምሩ እና ተጨማሪ ያብስሉ.\n'  
                             '6. ሲበስል ከእሳት ላይ አውርደው  ከእንጀራ ጋር ይቀላቀሉ።\n'
                             '7. ማበረታቻ እና ትዕግስት በመጠቀም አቀዝቅዘው ልጆን እንዲመገብ ይርዱት።\n'
                             'ማሳሰቢያ፡ በማንኛውም ጊዜ ከድንች ይልቅ 135 ግራም የተፈጨ ስጋ ይጠቀሙ/n'
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት ከ 10 ደቂቃ \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ሙዝ ለመክሰስ \n'
                          '1. ሙዙን አጥበው ይላጡ \n'
                          '2. በትናንሽ ቁርጥራጮች ይቁረጡ እና ልጅን ይመግቡ',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
 ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 24:- የቡላ ገንፎ  ከጎመን ፣ ወተት',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                          '-የጤፍ ዱቄት 1 የቡና ስኒ\n'  
                          '-ጎመን 3 ቅጠል 40 \n'
                          '-ቅቤ/ዘይት 3 የሻይ ማንኪያ \n'
                          '-ወተት 2 የቡና ሲኒ\n'
                          '-ውሃ 4 የቡና ሲኒ\n'
                          'አዮዲዝ የሆነ ጨው ለጣዕሙ  \n'
                          'የበሰለ ፓፓያ ግማሽ አነስተኛ መጠን',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1.ጎመኑን ማጠብ፣ መክተፍና መቀቀል\n'
                             '2.ሲበስል ከእሳት ማውጣት። \n'
                             '3.ቡላውን ከወተት ጋር ቀላቅለው እሳት ላይ ይጣዱት\n'
                             '4.ቅቤ/ዘይት እና አዮዲዝድ ጨው በመጨመር ምግቡን በማማሰል ማብሰል ።\n'
                             '5.ትንሽ ውሃ በመጨመር ተጨማሪ ማብሰል\n' 
                             '6.ማበረታቻ እና ትዕግስት በመጠቀም ልጅው እንዲበላ ማገዝ\n'
                             'ማሳሰቢያ፡ በማንኛውም ጊዜ ሲገኝ ከእንጀራ ይልቅ 65 ግራም የቡላ ዳቦ መጠቀም ይችላሉ። '
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                             'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 40 ደቂቃ \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ፓፓያ ለመክሰስ\n'
                          '1. ፓፓያውን ማጠብ እና ፍሬዎቹን ማስወገድ።\n'
                          '2. በትናንሹ ከከተፉ በኋላ ልጆ እንዲመገብ መስጠት',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
 ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 25:- እንጀራ ከሥጋ እና ከጎመን ጋር ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                         '-የተፈጨ ስጋ 4 የሻይ ማንኪያ\n'
                         '-ጎመን 4 ከግማሽ ቅጠል\n'
                         '-ሽንኩርት ግማሽ  ሽንኩርት\n'
                         '-ቅቤ/ዘይት 2 የሻይ ማንኪያ\n'
                         '-ውሃ 7 የቡና ሲኒ\n'  
                         '-አዮዲዝ የሆነ ጨው ለጣዕም\n'  
                         '-የማሽላ እንጀራ ሩብ\n'  
                         '-ወተት ለመጠጥ-2 የቡና ስኒ\n'  
                         '-ሙዝ 2 ትላልቅ ሙዝ',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1. ሽንኩርቱን በመክተፍ እሳት ላይ በዘይት ያብስሉት\n'
                             '2. የበሰለው ሽንኩርት ላይ የተፈጨውን ስጋ ጨምረው አነስተኛ መጠን ውኃ በመጨመር ማብሰል\n'
                             '3. ጎመኑን ማጠብና መክተፍ ከዚያም በስጋው ውህደት ላይ መጨመር።\n'
                             '4. አዮዲዝድ የሆነውን ጨው ጨምረው እንዲሁም አነስተኛ መጠን ያለውን ውሃ በተደጋጋሚ በመጨመር ምግቡን በሚገባ ማብሰሎን ይቀጥሉ \n'
                             '5. መብሰሉን እርግጠኛ ሲሆኑ ከእሳት ላይ ያውርዱት እና ከእንጀራው ጋር ያዋህዱ\n'
                             '6. ከቀዘቀዘ በኋላ በማበረታቻ እና በትዕግስትን ልጅዎ እንዲበላ ማገዝ.\n'
                             'ማሳሰቢያ፡ በማንኛውም ጊዜ ሲገኝ ከእንጀራ ይልቅ 65 ግራም የቡላ ዳቦ መጠቀም ይችላሉ። '
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት ከ 10 ደቂቃ \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ሙዝ ለመክሰስ '
                         '1.ሙዙን በሚገባ ካጠቡ በኋላ ይላጡ \n'
                         '2. በትናንሹ ይክተፉትና ለልጆ እንዲመገብ ይስጡ',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
 ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 26:- የጤፍ ገንፎ, ከአተር ዱቄት(ሽሮ), ካሮት,  ወተትና ዘይት/ቅቤ፣ እንዲሁም ወተት ለመጠጣት ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                          '-የጤፍ ዱቄት ከአንድ በላይ የቡና ሲኒ\n'
                          '-የአተር ዱቄት 1 የሻይ ማንኪያ\n'
                          '-ካሮት 1 አነስተኛ መጠን\n'
                          '-ወተት 1 የቡና ስኒ\n'
                          '-ዘይት 2 የሻይ ማንኪያ\n'
                          '-ውሃ 6 የቡና ስኒ\n'  
                          '- አዮዲዝ ጨው ለጣዕም\n' 
                          '-ወተት 1 የቡና ስኒ\n'
                          '-የበሰለ አቮካዶ',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1 መካከለኛ መጠን ያለውን ውኃ ከጤፍ ዱቄቱ እና ከሽሮው ጋር ደባልቆ በእሳት ላይ መጣድ።\n'
                             '2. ካሮቱን ማጠብ እና መላጥ ከዛም በበቂ ውኃ መቀቀል።\n'
                             '3. ከውሀ አውጥተው ካሮቱን መፍጨት።\n'
                             '4.የተፈጨውን ካሮት፣ አዮዲዝድ ጨው (ቅቤ/ዘይት)÷ በዱቄቱ ውህድ ድስት ውስጥ ጨምረው በማማሰል ምግቡን ያብስሉ።\n'
                             '5. ከቀዘቀዘ በኃላ ማበረታቻ እና ትዕግስት በመጠቀም ልጅዎ እንዲበላ ማገዝ\n'
                             'ማሳሰቢያ፡ በማንኛውም ጊዜ ሲገኝ ከእንጀራ ይልቅ 65 ግራም የቡላ ዳቦ መጠቀም ይችላሉ። '
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 35ደቂቃ \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'የበሰለ አቮካዶ\n'
                          '1.አቮካዶውን ማጠብ እና ወደ ትናንሽ ቁርጥራጮች መክተፍ\n'
                          '2.ልጅዎ እንዲመገብ ይስጡ.',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
 ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 27:- የገብስ ገንፎ፣ በጎመን÷በእንቁላል እና በወተት የበለፀገ  እንዲሁም በዘይት/ቅቤ  ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                          ' -የገብስ  ዱቄት-ከአንድ በላይ የቡና ሲኒ\n'
                          '-ጎመን 3 ቅጠል\n'
                          '-ወተት 1 ከግማሽ የቡና ሲኒ\n' 
                          '-እንቁላል 1 ትንሽ እንቁላል\n'  
                          '-ዘይት 2 የሻይ ማንኪያ\n'  
                          '-ሎሚ 1 መካከለኛ መጠን\n' 
                          '-ውሃ 5 የቡና ስኒ\n'
                          '-አዮዲዝ ጨው ለጣዕም\n'
                          '-ሙዝ 1 ትልቅ መጠን ሙዝ',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1.እንቁላሉን መትተው ዱቄቱ ውስጥ ከጨመሩ እና ያዋኻዱ፤ ውኽዱን ከውሃ ጋር ይቀላቅሉት።\n'
                             '2.አዮዲዝድ ጨው ጨምረውበት በእሳት ላይ ያድርጉት።\n'  
                             '3.ጎመኑን አጥበው ይቀቅሉ።\n' 
                             '4.ጎመኑን ከእሳት አውርደው ይክተፉት።\n'  
                             '5.ጎመኑን እና ቅቤ/ዘይቱን በተጣደው ውህደት ላይ ጨምረው በማማሰል በጥንቃቄ ያብስሉ።\n' 
                             '6.እንዲቀዘቅዝ ካደረጉ በኋላ ሎሚ ይጨምሩበት\n'  
                             '7.ማበረታቻ እና ትዕግስት በመጠቀም ልጅወዎ እንዲመገብ መርዳት\n'
                             'ማሳሰቢያ፡ በማንኛውም ጊዜ ሲገኝ ከእንጀራ ይልቅ 65 ግራም የቡላ ዳቦ መጠቀም ይችላሉ። '
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 35ደቂቃ \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ሙዝ ለመክሰስ\n'
                          '1.ሙዙን ማጠብና መላጥ\n' 
                          '2.በትናንሽ ቁርጥራጮች ይክተፉት እና ለልጁ እንዲመገብ ይስጡት',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
 ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 28:- እንጀራ በምስር እና በካሮት ሶስ, ከወተት ጋር  ለመጠጣት',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                          '- ምስር 2 ከግማሽ የሾርባ ማንኪያ\n'
                          '-ካሮት 1 አነስተኛ መጠን\n'
                          '-ዘይት 5 የሻይ ማንኪያ\n'  
                          '-ሽንኩርት ዕሩብ ሽንኩርት\n'  
                          '-እንጀራ ዕሩብ እንጀራ\n'  
                          '-ውሃ 8 የቡና ስኒ\n' 
                          '-አዮዲዝ ጨው  ለጣዕም\n' 
                          '-ወተት ለመጠጣት 1 የቡና ስኒ\n'  
                          '-የበሰለ አቮካዶ 1 መካከለኛ መጠን',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1.ሽንኩርቱን በዘይቱ ያብስሉት\n' 
                             '2.በበሰለው ሽንኩርት ላይ ካሮቱን አጥበው እና ከትፈው ይጨምሩ።\n' 
                             '3.አነስተኛ መጠን ያለውን ውሃ በመጨመር ማብሰል\n።'  
                             '4.ምስሩን ለቅመው እና አጥበው መጨመር።\n'  
                             '5.አዮዲዝድ ጨው እና የቀረውን ውሃ እየጨመሩ በደንብ ማብሰል።\n'
                             '6. በበቂ ሁኔታ ከበሰለ በኋላ ከእሳቱ አውርደው ከእንጀራ ጋር ይቀላቅሉ\n'  
                             '7. ከቀዘቀዘ በኋላ ማበረታቻ እና ትዕግስት በመጠቀም ልጅዎ እንዲበላ መርዳት\n'
                             'ማሳሰቢያ፡ በማንኛውም ጊዜ ሲገኝ ከእንጀራ ይልቅ 65 ግራም የቡላ ዳቦ መጠቀም ይችላሉ። '
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ:  1 ሰዓት  \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ለመክሰስ የበሰለ አቮካዶ\n'
                          '1.አቮካዶውን ማጠብ\n'  
                          '2.በትናንሽ ቁርጥራጮች ይክተፉ እና ልጅዎ እንዲበላ ይስጡት',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
 ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 29:- የማሽላ ገንፎ ፣በአተር ዱቄት(ሽሮ)  የበለጸገ,  ካሮትና ዘይት/ቅቤ እና ወተት ለመጠጣት  ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                         '-የማሽላ ዱቄት ከአንድ በላይ የቡና ሲኒ\n'
                         '-የአተር ወይም የባቄላ ዱቄት 1 የሻይ ማንኪያ\n'
                         '-ካሮት 1 ትንሽ መጠን\n' 
                         '-ቅቤ / ዘይት 3 የሻይ ማንኪያ\n'  
                         '-ውሃ 7 የቡና ሲኒ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n' 
                         '- ወተት  የሚጠጣ 1 ቡና ኩባያ \n'
                         '-የበሰለ አቮካዶ 1 መካከለኛ መጠን'

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             'ዱቄቱን በማጣሪያ አጣርተው ያፅዱት እና ወደ ድስት ይጨምሩት\n'
                             '2.በድስቱ ውስጥ ዱቄቱን ከውሃ እና ከወተት ጋር ይቀላቅሉ\n'
                             '3.አዮዲን ጨው ይጨምሩ እና በእሳት ላይ ይጣዱት\n'
                             '4.ካሮቱን ልጠው፣አጥበው ይቀቅሉ።\n' 
                             '5.ከእሳቱ ያውርዱ እና ይፍጩት።\n'
                             '6.ካሮት እና ቅቤ / ዘይት ይጨምሩ እና በማማሰል ያበስሉት።\n'
                             '7.ከቀዘቀዘ በኋላ ማበረታቻ እና ትዕግስት በመጠቀም ልጅው እንዲመገብ ይርዱት\n' 
                             'ማሳሰቢያ፡ ሲገኝ ከማሽላ ዱቄት ይልቅ ገብስ፣ ስንዴ ወይም የጤፍ ዱቄት ይጠቀሙ። \n'
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 35 ደቂቃ  \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ለመክሰስ የበሰለ አቮካዶ\n'
                          '1.አቮካዶውን አጥበው ይላጡ\n' 
                          '2.በትናንሽ ቁርጥራጮች ይክተፉት እና ልጅዎ እንዲመገብ ይስጡት ',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
          
 ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 30:- እንጀራ በድንች እና በካሮት እንዲሁም በወተት ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                          '-ድንች1 መካከለኛ መጠን ያለው\n'
                          '-ካሮት 2 አነስተኛ መጠን ያለው\n'  
                          '-ሽንኩርት አንድ ሩብ\n'
                          '-ቅቤ / ዘይት 3 የሻይ ማንኪያ\n'  
                          '-ውሃ 7 ትላልቅ የቡና ስኒ\n'  
                          '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                          '-ዕሩብ የማሽላ እንጀራ'  
                          '-ወተት 1 ኩባያ\n' 
                          '-ሙዝ 1 ትልቅ መጠን',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1.ቀይ ሽንኩርቱን ከትፈው በዘይት ይጥበሱት.\n'
                             '2.ካሮት እና ድንቹን ልጠው ፣ ይጠቡት እና ይክተፉት።\n'  
                             '3.አነስተኛ መጠን ያለውን ውሃ በእሳት ላይ ይጣዱት እና ካሮቱን በውስጡ ይጨምሩ።ለትንሽ ጊዜ በማብሰል እና ከዚያም ድንቹን ጨምሩ።\n'
                             '4.የቀረውን ውሃ እና አዮዲን ጨው ይጨምሩ እና  በበቂ ሁኔታ እንዲበስል እሳቱን ሙቀት የጨምሩት\n' 
                             '5.ሲበስል ከእሳት ላይ አውርደው ከእንጀራው ጋር ይቀላቅሉት.\n'
                             '6. በማበረታቻ እና ትዕግስት ልጅዎ እንዲመገብ ይርዱት\n' 
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት  \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ሙዝ ለመክሰስ\n'
                          '1.ሙዙን አጥበው እና ልጠው\n'
                          '2. ወደ ትናንሽ ቁርጥራጮች ይቆራርጡት እና ልጆ እንዲበላ ይስጡት.',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 29:- በጎመን እና በወተት የበለፀገ የማሽላ ገንፎ   ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                         ' -የማሽላ ዱቄት ከአንድ በላይ የቡና ሲኒ\n'
                         '-ጎመን 3 ቅጠሎች\n'  
                         '-ቅቤ / ዘይት 2 የሻይ ማንኪያ\n'
                         '-ወተት 1 ቡና ኩባያ\n' 
                         '-ውሃ 6 ኩባያ\n' 
                         '- አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                         '-የበሰለ አቮካዶ 1 መካከለኛ መጠን\n'

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1. ጎመኑን ማጠብ, መቀንጠስ እና በድስት ውስጥ መቀቀል።\n'
                             '2. ሲበስል ከእሳት ያውርዱ እና ይክተፉት\n።'
                             '3. የማሽላውን ዱቄት ከወተት እና ከውሃ ጋር ቀላቅለው በእሳት ላይ ያድርጉት\n' 
                             '4. ቅቤ/ዘይት እና አዮዳይዝድ ጨው ይጨምሩ እና በማማሰል ያብስሉት።\n' 
                             '5. ጎመኑን እና ትንሽ ውሀ ይጨምሩ እና በትዕግስት ያብስሉት።\n'
                             '6. እንዲቀዘቅዝ ካደረጉ በኃላ በማበረታቻ እና በትዕግስት ልጆን ይመግቡ።\n'
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ:1 ሰዓት ከ 20 ደቂቃ።  \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ለመክሰስ የበሰለ አቮካዶ\n'
                          '1.አቮካዶውን አጥበው ይላጡ\n' 
                          '2.በትናንሽ ቁርጥራጮች ይክተፉት እና ልጅዎ እንዲመገብ ይስጡት ',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 31:- በጎመን እና በወተት የበለፀገ የማሽላ ገንፎ   ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                          '-የማሽላ ዱቄት ከአንድ በላይ የቡና ሲኒ\n'
                          '-ጎመን 3 ቅጠሎች\n'
                          '-ቅቤ / ዘይት 2 የሻይ ማንኪያ\n'  
                          '-ወተት 1 ቡና ኩባያ \n'
                          '-ውሃ 6 ኩባያ\n'  
                          '- አዮዲዝድ የተደረገ ጨው ለጣዕም\n'  
                          '-የበሰለ አቮካዶ 1 መካከለኛ መጠን'


                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1.ጎመኑን ማጠብ, መቀንጠስ እና በድስት ውስጥ መቀቀል።\n'
                             '2 ሲበስል ከእሳት ያውርዱ እና ይክተፉት።\n'
                             '3.የማሽላውን ዱቄት ከወተት እና ከውሃ ጋር ቀላቅለው በእሳት ላይ ያድርጉት\n'
                             '4.ቅቤ/ዘይት እና አዮዳይዝድ ጨው ይጨምሩ እና በማማሰል ያብስሉት።\n'
                             '5. ጎመኑን እና ትንሽ ውሀ ይጨምሩ እና በትዕግስት ያብስሉት።\n'
                             '6. እንዲቀዘቅዝ ካደረጉ በኃላ በማበረታቻ እና በትዕግስት ልጆን ይመግቡ።\n'
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት ከ 20 ደቂቃ \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'የበሰለ አቮካዶ ለመክሰስ'
                          '1.አቮካዶውን ይጠቡ እና ይላጡ።\n'  
                          '2.በትናንሽ ቁርጥራጮች ይቁረጡ እና ለልጁ እንዲበላ ይስጡት.',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 32:- እንጀራ ከስጋ እና ከጎመን ሶስ ጋር፣ ከሚጠጣ ወተት ጋር  ',
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
                       
                       
                        
                        Divider(),
                        CollapsibleSection(
                          title: '#የንጥረ ነገሮች መጠን?',
                          content:
                         '-በጥሩ ሁኔታ የተፈጨ ስጋ 3 የሻይ ማንኪያ\n'  
                         '-ጎመን 3 ቅጠሎች\n' 
                         '-ድንች ግማሽ ትልቅ መጠን\n'
                         '- ካሮት 2 ትንሽ መጠን\n'  
                         '-ሽንኩርት ግማሽ ሽንኩርት\n'  
                         '-ቅቤ / ዘይት 4 የሻይ ማንኪያ\n'  
                         '-ውሃ 6 ኩባያ\n'  
                         '-አዮዳይዝድ የተደረገ ጨው ለጣዕም\n'  
                         '-የማሽላ እንጀራ የአንድ አራተኛ\n'  
                         '-ወተት  1 ኩባያ\n' 
                         '-የበሰለ ማንጎ 1 መካከለኛ መጠን',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1.ቀይ ሽንኩርቱን ከትፈው በዘይት ያብስሉለት'
                             '2.በበሰለው ሽንኩርት ላይ የተፈጨውን ስጋ ይጨምሩ እና በትንሽ ውሃ ያብስሉ\n'
                             '3.ጎመኑን ይጠቡ እና ይክተፉት, እና ወደ ስጋው ውህድ ይጨምሩ\n'
                             '4.አዮዳይዝድ የሆነውን ጨው ይጨምሩ እና ብዙ ጊዜ ትንሽ ውሃ በመጨመር ምግቡን ማብሰሎን ይቀጥሉ\n'  
                             '5.ምግቡ ሲበስል ከእሳት አውጥተውት ከእንጀራው ጋር ይቀላቀሉ\n'
                             '6.ማበረታቻ እና ትዕግስት በመጠቀም ልጅዎ እንዲመገብ ይርዱት\n'
                             'የበሰለ መጠን: 4 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት ከ 35 ደቂቃ  \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ለመክሰስ የበሰለ አቮካዶ\n'
                          '1.አቮካዶውን አጥበው ይላጡ\n' 
                          '2.በትናንሽ ቁርጥራጮች ይክተፉት እና ልጅዎ እንዲመገብ ይስጡት ',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
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
                  MaterialPageRoute(builder: (context) => month1224()),
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
