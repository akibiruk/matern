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
      title: '0-6 ወር',
      
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: month612(),
    );
  }
}

class month612 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('maternal health and infant nutrition advisor system'),
      ),
      backgroundColor: Colors.grey[200],
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
                          'ከ6 ወር እድሜ በኃላ ሕፃናት ተጨማሪ ምግቦችን መመገብ መጀመር ይኖርባቸዋል, ለምሳሌ ለስላሳ ገንፎ በቀን 2-3 ጊዜ መመገብ ጤናማ እና ጠንካራ ሆነው እንዲያድጉ ያደርጋቸዋል.\n'

'ለህፃናት ለስለስ ያለ ገንፎ ከ2 እስከ 3 የተለያዩ ምግቦች ማለትም እንደ ቅቤ፣ ዘይት፣ ኦቾሎኒ፣ ስጋ፣ እንቁላል፣ ምስር፣ አትክልት እና ፍራፍሬ ጋር ማበልፀግ ጠንካራ እድገት እንዲኖራቸው ያደርጋል።'

'በዚህ እድሜ ክልል ውስጥ ያሉ ሕፃናት ጡት ማጥባት አያቋርጡም ÷ በቀን እና በማታ ከ8-15 ጊዜ እንዲጠቡ ይጠበቃል ፡፡\n'

'ሕፃናትን የተፈላ ወይም የታከመ ውኃ እንዲጠጡ ማድረግ አስፈላጊ ነው።  ',
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
                'ማሳሰብያ',
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
                          '1) ህፃናት ከ1 ዓመት በፊት የላም ወተት መጀመር የለባቸውም፡፡\n'

                          '2)ሁልጊዜ ፍራፍሬዎችን እና አትክልቶችን ይጠቡ፣ ይላጡ እና ፍሬውን ያስወግዱ።\n'

                          '3) ከመሬት ጋር የሚገናኙ ፍራፍሬዎች፣ አትክልቶች እና ማር ላይ ልዩ ጥንቃቄ ያድርጉ፡፡\n'
                          ' የምግብ መመረዝን የሚያስከትሉ የ ቦቱሊዝም(botulism) ንጥረ ነገሮችን ሊይዙ ይችላሉ፡፡\n'
                           'እስከ 1 አመት ድረስ ልጆች ማር መመገብ የለባቸውም፡' ,
                         
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
                '   #የምግብ አሰራር 1:-የቡላ ገንፎ በወተት፣ ካሮት እና ዘይት / ቅቤ',
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
                           '-የቡላ ዱቄት\n'
                           ' ከ ግማሽ የቡና ስኒ በላይ\n'  
                         '-ወተት 1 ሙሉ የቡና ስኒ  \n'
                         '- ካሮት 1\n'  
                         '-ቅቤ / ዘይት 3 የሻይ ማንኪያ\n'  
                         '- ውሃ 4 ከግማሽ የቡና ስኒ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም \n'
                          '-ሎሚ 1 መካከለኛ መጠን \n'
                        '-ሙዝ 1 ትንሽ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1.በመጀመሪያ የቡላ ዱቄቱን ከውሃ እና ከወተት ጋር ይቀላቅሉ, አዮዲን ጨው ይጨምሩ እና በእሳት ላይ ያድርጉ።\n'
                               '2.በመቀጠልም ካሮቱን ልጠው እና ቀቅለው ይዳምጡት።\n'
                              '3.ከዛን ወደ ገንፎ, የዳመጡትን ካሮት እና ቅቤ አሊያም ዘይት ይጨምሩ እና በደንብ ያብስሉት እና ያውርዱት።\n'
                              '4.በመጨረሻም ገንፎው ከቀዘቀዘ በኋላ, ሎሚውን ወደ ውስጥ ጨምቀው እና ቀላቅለው በትዕግስት እና ማበረታቻን በመጠቀም ልጆን በማንኪያ ይመግቡ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 25 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                          'ሙዝ ለመክሰስ\n'
                              '1.ሙዙን አጥበው ልጠው በንጹህ ኩባያ ውስጥ በማንኪያ ይዳጡት.\n'  
                               '2.ከዛም ህፃኑን በማንኪያ ይመግቡ',

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
                '   #የምግብ አሰራር 2:-በባቄላ የበለፀገ የበቆሎ ገንፎ፣ ቲማቲም እና ዘይት / ቅቤ',
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
                          ' -የበቆሎ ዱቄት-ግማሽ የቡና ስኒ \n'
                          '- ቅቤ / ዘይት-1 ከግማሽ የሻይ ማንኪያ\n'  
                          'ባቄ-1 ከግማሽ የሻይ ማንኪያ    \n'
                          '- ካሮት 1\n'  
                         '-ቲማቲም -  1 ቲማቲም \n'  
                         '-ውሃ- 5 ከግማሽ  የቡና ስኒ ኒ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም \n'
                          '-የበሰለ አቮካዶ ግማሽ መካከለኛ መጠን \n', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1..ባቄላውን ለአንድ ሌሊት በውሃ ውስጥ ያሳድሩ።  \n'
                               '2.የተዘፈዘፈውን ባቄላ አጥልለው በድጋሚ በውሃ ውስጥ ይቀቅሉ እና ገለባውን አስወግደው እና ይፍጩ።።\n'
                              '3.. ቲማቲሙን ከቀቀሉት በኃላ ልጠው ይክተፉት። \n'
                              '4.የበቆሎ ዱቄቱን ከውሃ ጋር ያዋህዱ,  ውህዱን በማፍላት አዮዲድ ጨው ይጨምሩበት።\n'
                              '5. የተዘጋጀውን ቲማቲም ፣ ቅቤ / ዘይት እና የተፈጨውን ባቄላ በአንድ ላይ ቀላቅለው በትክክል እስኪበስል ድረስ እሳት ላይ እያዋሀዱት ይጠብቁ።/n'
                              '6. ከቀዝቃዛ በኃላ በትዕግስት እና ማበረታቻን በመጠቀም ልጆን በማንኪያ ይመግቡ\n'
                              'ማሳሰቢያ፡ በተገኘው ጊዜ ሁሉ በበቆሎ ዱቄቱ ምትክ ከጤፍ፣ ገብስ፣ ስንዴ ወይም የማሽላ ዱቄት ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 25 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'የበሰለ አቮካዶ ለመክሰስ\n'
                              '1.አቮካዶውን አጥበው ከላጡ በኋላ በንጹህ ማንኪያ እና ኩባያ ይዳምጡት ። \n'  
                              '2.ልጆን በማንኪያ ይመግቡ።',

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
                '   #የምግብ አሰራር 3:-በወተት፣ ቲማቲም እና የበለፀገ የቡላ ገንፎ ዘይት / ቅቤ?',
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
                          ' ቡላ -ከግማሽ በላይ በቡና ሲኒ \n'
                          'ቲማቲም-1 ቲማቲም\n'  
                          'ቅቤ / ዘይት- 2 የሻይ ማንኪያ  \n'
                          'ወተት -1 ከግማሽ ኩባያ ቡና\n '  
                         'ሎሚ 1 መካከለኛ መጠን\n'  
                         'ውሃ-4 ከግማሽ ኩባያ \n'
                         'አዮዲዝድ የተደረገ ጨው ለጣዕም \n'
                          'የበሰለ ማንጎ መካከለኛ መጠን ያለው\n', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1. የቡላ ዱቄቱን ከውሃ እና ከወተት ጋር ቀላቅለው አዮዲን ጨው ጨምረው እሳት ላይ ይጣዱት።\n'
                              '2. ቲማቲሙን ቀቅለው, ልጠው ይክተፉት\n'
                               '3.የተዘጋጀውን ቲማቲም ፣ ቅቤ/ ዘይት በተጣደው ቡላ ላይ ጨምረውበት በትክክል እስኪበስል ድረስ ያማስሉት።\n '
                              '4.እስኪቀዘቅዝ ይጠብቁ እና ሎሚውን በላዩ ላይ ጨምቀው በበቂ ሁኔታ ያዋህዱት።\n'
                              '5. ትዕግስት እና ማበረታቻ በመጠቀም ልጆንበማንኪያ ይመግቡ።\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'የበሰለ ማንጎ ለመክሰስ\n'
                              '1.ማንጎውን አጥበው ልጠው በንጹህ ማንኪያ እና ኩባያ ይዳምጡት ። \n'  
                              '2.ልጆን በማንኪያ ይመግቡ።',

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
                '   #የምግብ አሰራር 4:-የተፈጨ ድንች በጎመን፣ ካሮት፣ ወተት እና ዘይት / ቅቤ',
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
                         '-ድንች 1 መካከለኛ መጠን ያለው ድንች\n'
                         '-ካሮት 1 ካሮት\n' 
                         '-ጎመን 3 ቅጠሎች \n'
                         '-ወተት (የፈላ እና ቀዝቃዛ) ከአንድ በላይ የቡና ስኒ \n'
                         ' -ቅቤ/ዘይት 1 ከግማሽ የሻይ ማንኪያ \n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                         '-ሙዝ  መካከለኛ መጠን ያለው',


                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1. ጎመኑን አጥበው, ከትፈው በውሀ ይቀቅሉት. \n'
                             ' 2. ካሮት እና ድንቹን ልጠው, አጥበው, ይክተፉና እና ይቀቅሉ።\n'
                             ' 3. በትክክል ሲበስል ጎመኑን, ካሮቱን እና ድንቹን ከእሳት ላይ አውርደው አንድ ላይ ይፍጩት።\n'
                             '4. ወተቱን በተፈጨው ውህድ ውስጥ ይቀላቅሉት።\n'
                             ' 5. ቅቤ / ዘይት እና አዮዲን ጨው ጨምረው እና የማብሰያ ድስቱን በእሳት ላይ ያድርጉት.\n'
                             ' 6. ድስቱ በትክክል ሲሞቅ የተቀላቀሉትን ንጥረ ነገሮች ጨምረው ያብስሉት.\n'
                             '7. ሲቀዝቃዛ ጠብቀው ትዕግስት እና ማበረታቻን በመጠቀም ልጆን በማንኪያ ይመግቡ\n'
                              'ማሳሰቢያ፡ በተገኘው ጊዜ ሁሉ በበቆሎ ዱቄቱ ምትክ ከጤፍ፣ ገብስ፣ ስንዴ ወይም የማሽላ ዱቄት ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት.',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'ሙዝ ለመክሰስ\n'
                              '1. ሙዙን አጥበው ልጠው በንጹህ ማንኪያ እና ኩባያ ይዳምጡት ።\n'
                              '2.ልጆን በማንኪያ ይመግቡ ',


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
                '   #የምግብ አሰራር 5:-ቡላ እና አተር በዱባ የበለፀገ ገንፎ እና ዘይት / ቅቤ',
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
                         '-የቡላ ዱቄት ከግማሽ በላይ የቡና ሲኒ \n'
                         '-አተር ወይም የባቄላ ዱቄት 3 የሻይ ማንኪያ\n'
                         '-ዱባ 1 ቁራጭ  -ቅቤ / ዘይት 2 የሻይ ማንኪያ\n'
                         '-ሎሚ 1 መካከለኛ መጠን \n'
                         '-ውሃ 5 የቡና ሲኒ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                         '-አቮካዶ ½ መካከለኛ መጠን ያለው\n',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1. ቡላውን ከባቄላ ወይም ከአተር ዱቄት ጋር ይቀላቅሉ.\n'
                              '2. በተቀላቀለው ዱቄት ውስጥ ውሃ እና አዮዲን ጨው ጨምረው እሳት ላይ ይጣዱት.\n'
                              '3. ዱባውን ልጠው, ፍሬውን ያስወግዱት እናም ከትፈውት በውሃ ይቀቅሉ።\n'
                              '4. እስኪበስል ድረስ ዱባውን በደንብ ይክደኑት።\n'
                               '5. በዱባው ላይ ዘይት / ቅቤን ጨምረው, እና በማማሰል ይብስሉት።\n'
                               '6. እስኪቀዘቅዝ ጠብቀው እና ሎሚውን ጨምረው ይቀላቅሉት\n' 
                               '7. ልጆን በማንኪያ ይመግቡ, በትዕግስት እና ማበረታቻ ይጠቀሙ.\n'
 



                              'ማሳሰቢያ፡በማንኛውም በሚገኝበት ጊዜ ከአተር ዱቄት ይልቅ 45 ግራም የተፈጨ ስጋ ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          ' አቮካዶ ለመክሰስ \n'
                          '1.አቮካዶውን አጥበው ልጠው በንጹህ ማንኪያ እና ኩባያ ይዳምጡት ።\n'   
                          '2.ልጆን በማንኪያ ይመግቡ',




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
                '   #የምግብ አሰራር 6:-በወተት፣ ቲማቲም እና የበለፀገ የበቆሎ ገንፎ ዘይት / ቅቤ',
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
                          '-የበቆሎ ዱቄት ከግማሽ የቡና ኩባያ በላይ\n'
                          ' -ቲማቲም 1 ትንሽ መጠን\n'
                          ' - ወተት ከግማሽ የቡና ሲኒ በላይ\n'
                            '-ቅቤ / ዘይት 1 የሻይ ማንኪያ\n'
                            ' -አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                            '-ውሃ 4 የቡና ሲኒ\n'
                            '-ሙዝ 1 መካከለኛ መጠን',
                          
    
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1. የበቆሎ ዱቄቱን ከውሃ እና ከወተት ጋር ያዋህዱ እና በእሳት ላይ ያድርጉት \n'
                             '2. አዮዲን ጨው ይጨምሩ። \n'
                             '3. ቲማቲሙን ቀቅለው, ይላጡ እና ይክተፉ\n'
                             '4. ቲማቲሙን ፣ ቅቤን/ዘይትን ይጨምሩ እና በትክክል እስኪበስል ድረስ ያማስሉ።\n'
                             '5. ገንፎው እንዲቀዘቅዝ ይፍቀዱ እና ልጆን በማበረታታት እና በትዕግስት በማንኪያ ይመግቡ።\n'
                              'ማሳሰቢያ፡ የበቆሎ ዱቄት ከሌለ ጤፍ፣ ገብስ፣ ስንዴ ወይም ማሽላ ዱቄት ይጠቀሙ። \n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'ሙዝ ለመክሰስ\n'
                             '1. ሙዙን አጥበው ልጠው በንጹህ ማንኪያ እና ኩባያ ይዳምጡት ።\n'
                             ' 2.ልጆን በማንኪያ ይመግቡ',
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
                '   #የምግብ አሰራር 7:-የተፈጨ የበሬ ልብ ከድንች፣ ካሮት፣ ጎመን ጋር፣ እንቁላል እና ዘይት / ቅቤ ',
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
                           '-ድንች 1 ትንሽ መጠን ያለው/n'
                           '-ካሮት 1 ትንሽ መጠን ያለው\n'
                           ' -እንቁላል 1 ትንሽ\n'
                           '-የበሬ ሥጋ 2 የሻይ ማንኪያ\n'
                           '-ጎመን 3 ቅጠሎች\n'
                           ' -ቅቤ / ዘይት 2 የሻይ ማንኪያ\n'
                           '-አዮዲን ጨው ለጣዕም \n'
                           '-የበሰለ ፓፓያ ዕሩብ ትንሽ መጠን',


                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1. የበሬ ሥጋን በጣም በትንንሽ ቁርጥራጮች ይቁረጡ እና በዘይት ይጥበሱት።\n'
                              '2. ጎመኑን አጥበው እና ከትፈው እና ወደ ተጠበሰው የበሬ ልብ ይጨምሩ።\n '
                              '3. ካሮቱን እና ድንቹን በውሃ ውስጥ አጥበው, እና ልጠው, ከከተፉ በኋላ እና ይቀቅሉት።\n'
                              '4. ካሮት እና ድንቹ በደንብ አብስለው፣ ከእሳቱ ያውርዱ እና ይፍጩት።\n'
                              '5. ወደ መጀመሪያው ውህድ የድንች እና የካሮቱን ውህድ ይጨምሩት እና በደንብ ይቀላቅሉት\n'
                              '6. እንቁላሉን ይምቱ እና በተቀላቀለው ውህድ ላይ ይጨምሩ.\n'
                              '7. አዮዲን ጨው ይጨምሩ እና ምግቡን ማብሰል እና ማማሰሎን ይቀጥሉ.\n'
                              ' 8. በበቂ ሁኔታ ማቀዝቀዝ ÷ ማንኪያ በመጠቀም ለልጅዎ  በትዕግስት እና በማበረታታት ይመግቡ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት ከ 15 ደቂቃ. \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'የበሰለ ፓፓያ ለመክሰስ \n'
                             ' 1. ፓፓያውን አጥበው, ከፍለው ይቁረጡ እና ፍሬዎቹን ያስወግዱ።\n'
                             '2. በማንኪያ ፈጭተውት ልጆን ይመግቡ።',

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
                '   #የምግብ አሰራር 8:-እንጀራ ከሽሮ, ሽንኩርት እና ቲማቲም ጋር',
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
                          '-የተጠበሰ የአተር ዱቄት 1 መካከለኛ መጠን ያለው\n'
                          '-ሽንኩርት ዕሩብ ሽንኩርት\n'
                          '-ቲማቲም 1 መካከለኛ መጠን ያለው\n'
                          '-ቅቤ / ዘይት 3 የሻይ ማንኪያ\n'
                          '-ውሃ 4 የቡና ስኒ\n'
                          '-አዮዲዝድ ጨው ለጣዕም\n'
                          '-እንጀራ ንዑስየአንድ እንጀራ\n'
                          '-ብርቱካን 1 ትልቅ መጠን',

                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1 ቀይ ሽንኩርቱን ከትፈው  እሳት ላይ በዘይት ያብስሉት።\n'
                             '2. ቲማቲሙን ቀቅለው, ይላጡ እና ይክተፉት.\n'
                             '3. የተከተፈውን ቲማቲሙን በውሃ ውስጥ ጨምረው ይቀቅሉት.\n'
                             '4. የአተር ዱቄት(ሽሮ) እና አዮዲን ጨው ይጨምሩ እና በማማሰል ያበስሉ።\n'
                             '5. ሽሮው በትክክል ሲበስል እንጀራ ይጨምሩ እና ይቀላቅሉ6. ማበረታቻ እና ትዕግስት በመጠቀም ከቀዘቀዘ በኃላ  ልጆን በማንኪያ መመገብ።\n'
                              'ማሳሰቢያ፡ በማንኛውም በሚገኝበት ጊዜ ከአተር ዱቄት ይልቅ 30 ግራም በጥሩ ሁኔታ የተፈጨ ስጋ ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 35 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'የበሰለ ብርቱካን ለመክሰስ\n'
                              '1.ብርቱካኑን አጥበው እና ጨምቀው\n'
                              '2.በማንኪያ ፈጭተውት ልጆን ይመግቡ።',

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
                '   #የምግብ አሰራር 9:-የጤፍ ገንፎ በወተት፣ ካሮት፣ ቲማቲም እና ዘይት / ቅቤ#የንጥረ ነገሮች መጠን',
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
                          'የጤፍ ዱቄት  ግማሽ የቡና ስኒ\n'
                          'ቲማቲም 1 ቲማቲም\n'
                          'ካሮት 1 ትንሽ መጠን ያለው ካሮት\n'
                          'ወተት አንድ የቡና ስኒ\n'
                          'ቅቤ/ዘይት 1ከግማሽ የሻይ ማንኪያ\n'
                          'ውሃ 4 ከግማሽ  የቡና ሲኒ\n'
                          'አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                          'የበሰለ ፓፓያ ዕሩብ ትንሽ መጠን',
                          
                          
                          
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1. የጤፍ ዱቄቱን ከወተት እና ከውሃ ጋር በማዋሃድ አዮዲን ጨው ጨምረውበት በእሳት ላይ ያድርጉ። \n'
                              '2. ካሮቱን ልጠው, ቀቅለው ይዳምጡት.\n'
                              '3. ቲማቲሙን ቀቅለው, ልጠው እና ይክተፉት.\n'
                              '4. ካሮት, ቲማቲም, ቅቤ ወይም ዘይት ወደ ገንፎ ውስጥ ጨምረው  ያለማቋረጥ በማማሰል ማብሰል.\n'
                              '5. እስኪቀዘቅዝ ድረስ ይጠብቁ እና በትዕግስት ማበረታቻ በመጠቀም ልጆን በማንኪያ ይመግቡ ።\n'
                              'ማሳሰቢያ፡ በተገኘው ጊዜ ሁሉ በበቆሎ ዱቄቱ ምትክ ከጤፍ፣ ገብስ፣ ስንዴ ወይም የማሽላ ዱቄት ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 25 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ  ',
                          content:
                          'የበሰለ ፓፓያ ለመክሰስ\n'
                             '1.ፓፓያውን አጥበው, ከፍለው ይቁረጡ እና ፍሬዎቹን ያስወግዱ።\n'
                             '2.በማንኪያ ፈጭተውት ልጆን ይመግቡ።'

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
                '   #የምግብ አሰራር 10:-በወተት፣ በዱባ የበለፀገ የስንዴ ገንፎ እና ዘይት / ',
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
                          'የስንዴ ዱቄት ከግማሽ የቡና ሲኒ በላይ\n'
                          'ዱባ ትንሽ ቁራጭ\n'
                          'ወተት ከ1 የቡና ሲኒ በላይ\n'
                          'ቅቤ/ዘይት 1ከግማሽ የሻይ ማንኪያ\n'
                          'ውሃ 4 ከግማሽ የቡና ሲኒ\n'
                          'አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                          'ብርቱካን 1 መካከለኛ መጠን ያለው ብርቱካን',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                            '1.የስንዴ ዱቄቱን በውሃ እና ወተት ይቀላቅሉ።\n'
                            '2.እሳት ላይ ጥደውት ሞቅ ሲል  አዮዲን ጨው ይጨምሩ\n'
                            ' 3.ዱባውን ልጠው, ፍሬውን ያስወግዱ, ከዛም ይክተፉ እና በውሃ ይቀቅሉት.\n'
                            '4. ሲበስል አውርደው ይክደኑት\n'
                            '5. ዱባውን እና ዘይት / ቅቤን ወደ ገንፎ ጨምረው እስኪበስል ድረስ በትዕግስት ያማስሉት\n'
                            '6.ገንፎው እንዲቀዘቅዝ ይፍቀዱ እና ማበረታቻ በመጠቀም እና በትዕግስት ልጆን በማንኪያ ይመግቡ።\n'
                           
                              'ማሳሰቢያ፡ የስንዴ ዱቄት ከሌለ በምትኩ ጤፍ፣ ገብስ፣ በቆሎ ወይም ማሽላ ዱቄት ይጠቀሙ። \n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'ብርቱካን ለመክሰስ\n'
                              '1. ብርቱካኑን አጥበው እና ጨምቀው\n'
                              '2. ለልጆ በማንኪያ ይመግቡ'

,

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
                '   #የምግብ አሰራር 11:-በቲማቲም፣በወተትና፣በዘይት/ቅቤ የበለፀገ የተፈጨ ድንች ገንፎ',
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
                          ' -ድንች 1 መካከለኛ መጠን\n'
                          '-ቲማቲም 2 መካከለኛ መጠን\n' 
                          '-ካሮት 1 ትንሽ መጠን ያለው ካሮት\n'
                          '-ወተት ከግማሽ በላይ ቡና ሲኒ\n'
                          '-ዘይት 1 ከግማሽ የሻይ ማንኪያ\n'
                          '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                          '-የበሰለ አቮካዶ ግማሽ መካከለኛ መጠን'

                          , 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                          '1.ድንቹን እና ካሮቱን ይጠቡ፣ ይላጡ፣ ይክተፉ እና ይቀቅሉ።\n'
                          '2.ድንቹ እና ካሮቱ ሲበስሉ ከእሳት ያውርዱ እና ይፍጩት\n'
                          '3.ቲማቲሙን ውኋ ውስጥ ጨምረው ይቀቅሉት\n'
                          '4.ቲማቲሙ ከበሰለ በኃላ ከውኃው አውጥተው ይላጡት እና አድቅቀው ይክተፉት።\n'
                          '5. የተፈጨውን ድንች፣ ካሮት እና ቲማቲም በአንድ ላይ ከወተት ጋር ያዋኽዱ፣ ዘይት እና አዮዲዝድ ጨው ጨምረው በትዕግስት ያብስሉት።\n'
                          '6.ከቀዘቅዝ በኋላ ልጆን በማንኪያ እንዲመገብ ይፍቀዱለት፣ በትዕግስት ማበረታቻ መጠቀም አይዘንጉ\n'
                          'ማሳሰቢያ፡ በተገኘው ጊዜ ሁሉ በበቆሎ ዱቄቱ ምትክ ከጤፍ፣ ገብስ፣ ስንዴ ወይም የማሽላ ዱቄት ይጠቀሙ።\n'
                          'የበሰለ መጠን: 3 የቡና ስኒ\n'
                          'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 40 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'አቮካዶ ለመክሰስ \n'
                          '1.አቮካዶውን አጥበው ልጠው በንጹህ ማንኪያ እና ኩባያ ይዳምጡት ።\n'
                          '2.ልጆን በማንኪያ ይመግቡ',
                             

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
                '   #የምግብ አሰራር 12:-በወተት፣በአተር/ባቄላ ዱቄት፣በካሮት እና በዘይት/ቅቤ የበለፀገ የገብስ ገንፎ',
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
                         ' -የገብስ ዱቄት ከግማሽ በላይ የቡና ሲኒ\n'
                         '-የአተር ወይም የባቄላ ዱቄት 1 የሾርባ ማንኪያ\n'
                         '-ካሮት 1 ትንሽ መጠን\n'
                        '- ወተት ግማሽ የቡና ሲኒ\n'
                        '-ቅቤ / ዘይት 2 የሻይ ማንኪያ\n'
                        '-ውሃ 4 የቡና ሲኒ\n'
                        '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                        '-ሙዝ 1 መካከለኛ መጠን',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1.የገብሱን ዱቄት ከአተር/ከባቄላ ዱቄት ጋር ይቀላቅሉ።\n'
                              '2 በተቀላቀለው ዱቄት ውስጥ ውሃ, ወተት እና አዮዲን ጨው ይጨምሩ እና በእሳት ላይ ይጣዱት\n'
                              '3. ካሮቱን ይጠቡ፣ይላጡ፣ይክተፉ እና በዉሀ ይቀቅሉት\n'
                              '4. ከእሳትን አውርደው ካሮቱን ይፍጩት።\n'
                              '5. የተፈጨውን ካሮት እና ቅቤ/ዘይት ወደ ገንፎው ጨምረው በማማሰል በጥንቃቄ በሚገባ ያብስሉ።\n'
                              '6. በማቀዝቀዝ እንዲሁም ማበረታቻ እና ትዕግስት በመጠቀም በማንኪያ ልጅዎን ይመግቡ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 35 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ  ',
                          content:
                          'ሙዝ  ለመክሰስ\n'
                              '1. ሙዙን አጥበው ይላጡ\n'
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
                '   #የምግብ አሰራር 13:-እንጀራ ከሽሮ፣ከሽንኩርት፣ከካሮት እና ከቲማቲም ጋር',
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
                        '-የተጠበሰ የአተር ዱቄት 1 መካከለኛ የሾርባ ማንኪያ\n'
                        '-ቲማቲም 1 ትንሽ መጠን\n'
                        '-ሽንኩርት ግማሽ ሽንኩርት\n'
                        '-ካሮት 1 ትንሽ መጠን ያለው ካሮት\n'
                        '-ቅቤ / ዘይት 3 የሻይ ማንኪያ\n'
                        '-ውሃ 5 የቡና ስኒ\n'
                        '-አዮዳይዝድ ጨው ለጣዕም\n'
                        '-እንጀራ ዕሩብ የአንድ እንጀራ\n'
                        '-የበሰለ ፓፓያ ዕሩብ ትንሽ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                              '1. ቀይ ሽንኩርቱን በዘይት ያብስሉት\n'
                              '2. ካሮትን ይጠቡ, ይላጡ እና ይቀቅሉት።\n'
                              '3. ቲማቲሙን ቀቅለው, ይላጡ እና ይክተፉት\n'
                              '4.የበሰለው ሽንኩርት ላይ ካሮቱን እና ቲማቲሙን ጨምረው ካበሰሉት በኋላ ሽሮውን እና የአዮዲን ጨውን እና ጨምረው በማማሰል ያበስሉ።\n'
                              '5. ሽሮው ሲበስል እንጀራ በሰሀን ይቁረጡ እና ሽሮውን ይጨምሩበት 8.ከቀዘቀዘ በኋላ ማበረታቻ እና ትዕግስት በመጠቀም ልጅዎን በማንኪያ መመገብ\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ  ',
                          content:
                          'ፓፓያ ለመክሰስ\n'
                              '1. ፓፓያውን አጥበው ,ይላጡት እና ፍሬውን ያስወግዱት\n'
                              '2. በትናንሽ ቁርጥራጮች ይቁረጡ እና ልጆ እንዲበላ ይስጡት',

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
                '   #የምግብ አሰራር 14:-እንጀራ ከስጋ፣ ድንች፣ ጎመን እና ዘይት/ቅቤ ጋር ',
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
                         '-የተፈጨ ስጋ 3 የሻይ ማንኪያ\n'
                         '-ድንች ግማሽ ትንሽ መጠን\n'
                         '-ጎመን 3 ቅጠሎች\n'
                         '-ሽንኩርት ግማሽ ራስ\n'
                         '-ዘይት 2 የሻይ ማንኪያ\n'
                         '-እንጀራ ዕሩብ እንጀራ\n'
                         '- ውሃ 6 የቡና ሲኒ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n' 
                         '-ብርቱካን 1 ትልቅ መጠን',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                            '1. ድንቹን ይጠቡ ፣ ይክተፉ እና ይቀቅሉት ።\n'
                            '2. በተለየ ድስት ውስጥ ሽንኩርቱን በዘይት ያብስሉት እና የተፈጨውን ሥጋ ይጨምሩበት ።\n'
                            '3. ስጋው ሲበስል በውስጡ ጎመኑን አጥበው እና ከትፈው ይጨምሩ።\n'
                            '4. መጠነኛ ውሃ እየጨምሩ እና እያማሰሉ ያበስሉ።\n'
                            '5. መብሰሉን ካረጋገጡ በኋላ የተቀቀለውን ድንች ይጨምሩበት።\n'
                            '6. አዮዲን ጨው እና የቀረውን ውሃ ጨምረው በትክክል ያበስሉት።\n'
                            '7. ሲበስል አውርደው እንጀራ ላይ ይጨምሩ\n'
                            '8. ከቀዘቀዘ በኋላ ማበረታቻ በመጠቀም ለልጅዎ በማንኪያ በትዕግስት ይመግቡ።\n'
                              'ማሳሰቢያ፡ በተገኘው ጊዜ ሁሉ በበቆሎ ዱቄቱ ምትክ ከጤፍ፣ ገብስ፣ ስንዴ ወይም የማሽላ ዱቄት ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 1 ሰዓት \n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: ' መክሰስ  ',
                          content:
                          'ብርቱካን ለመክሰስ\n'
                              '1.ብርቱካኑን ይጠቡ እና ይላጡ።'
                              '2.በትናንሹ ይቆራርጡ እና ፍሬውን ያስወግዱ።\n'
                              '3. ልጆ እንዲመገብ ይስጡት።' ,

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
                '   #የምግብ አሰራር 15:-በቲማቲም የበለፀገ የማሽላ ገንፎ፣ ካሮት, ወተት እና ዘይት / ቅቤ',
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
                         '-የማሽላ ዱቄት አንድ የቡና ሲኒ\n'
                         '-ቲማቲም 1\n'
                         '-ቅቤ/ዘይት 1 ከግማሽ የሻይ ማንኪያ\n'
                         '-ካሮት 1 ትንሽ መጠን ያለው\n'
                         '-ውሃ 4 የቡና ሲኒ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                         '-ብርቱካን 1 መካከለኛ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                            '1.የማሽላ ዱቄቱን ከውሃ፣ከወተት እና ከአዮዲን ጨው ጋር በማቀላቀል በእሳት ላይ ይጣዱ\n'
                            '2.ቲማቲሙን አጥበው፣ቀቅለው፣ይላጡ እና አድቅቀው ይክተፉት።\n'
                            '3.ካሮቱን አጥበው፣ልጠወሰ፣ይቀቅሉት።\n'
                            '4.ወደ ተጣደው ገንፎ፣ ቲማቲሙን, የተፈጨውን ካሮት, ዘይት / ቅቤን ይጨምሩበት እና በደንብ ያበስሉ፤ያለማቋረጥ በማማሰል።\n'
                            '5. እስኪቀዘቅዝ ድረስ ይጠብቁ እና ማበረታቻ በመጠቀም ልጅን በትዕግሥት በማንኪያ ይመግቡ።\n'
                            'የበሰለ መጠን: 3 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ',
                          content:
                          'ብርቱካን ለመክሰስ\n'
                            '1.ብርቱካኑን ይጠቡ እና ይላጡ።\n'
                            '2.በትናንሹ ይቆራርጡ እና ፍሬውን ያስወግዱ።\n'
                            '3. ልጆ እንዲመገብ ይስጡት።',
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
                '   #የምግብ አሰራር 16:-በዱባ፣ ወተት የበለፀገ የበቆሎ ገንፎ እና ዘይት / ቅቤ',
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
                         '1.የበቆሎ ዱቄት አንድ የቡና ስኒ\n'
                         '2.ዱባ 1 ቁራጭ\n'
                         '3.ወተት ከግማሽ በላይ የቡና ሲኒ\n'
                         '4.ቅቤ/ዘይት 1 ከግማሽ የሻይ ማንኪያ\n'
                         '5.ውሃ 4 ከግማሽ የቡና ሲኒ\n'
                         '6.አዮዲዝድ የተደረገ ጨው ለጣዕሙ\n'
                         '7.ብርቱካን 1 መካከለኛ መጠን',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                           '1.የበቆሎ ዱቄቱን ከወተት እና ከውሃ ጋር ይቀላቅሉት።\n'
                           '2.ውኽዱን እሳት ላይ ይጣዱት፣ አዮዲድ ጨው ይጨምሩ እና ያብስሉት.\n'
                           '3.ዱባውን ልጠው፣ ፍሬውን አስወግደው፣ይክተፉ እና ይቀቅሉት\n'
                           '4.ዱባው ሲበስል ከእሳት አውርደው እሳት ላይ ወደነበረው የበቆሎ ውኽድ ይጨምሩት\n'
                           '5.ዘይት / ቅቤን ከጨምሩ እና እስኪበስል ድረስ እያማሰሉ ይቆዩ።\n'
                           '6.ማበረታቻ እና ትዕግስት በመጠቀም ፤ከቀዘቅዝ በኋላ ልጅዎ በማንኪያ እንዲመግቡ ያግዙ\n'
                           'ማሳሰቢያ፡ የበቆሎ ዱቄት በምትኩ ከሌለ ጤፍ፣ ገብስ እና ስንዴ ወይም ማሽላ ይጠቀሙ።\n'
                            'የበሰለ መጠን: 3 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ',
                          content:
                            'ብርቱካን ለመክሰስ\n'
                            '1. ብርቱካኑን ይጠቡ እና ይላጡ።\n'
                            '2.በትናንሹ ይቆራርጡ እና ፍሬውን ያስወግዱ።3. ልጆ እንዲመገብ ይስጡት።',
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
                '   #የምግብ አሰራር 17:-በቲማቲም፣በካሮት እና በዘይት/ቅቤ የበለፀገ የማሽላ ገንፎ',
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
                         'የማሽላ ዱቄት አንድ የቡና ሲኒ\n'
                         '-ቲማቲም 1 ቲማቲም\n'
                         '-ካሮት 1 ትንሽ መጠን ያለው\n'
                         '-ቅቤ/ዘይት 1 ከግማሽ የሻይ ማንኪያ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                         '-ውሃ 4 ከግማሽ የቡና ሲኒ\n'
                         '-ሎሚ 1 መካከለኛ መጠን\n'
                         'የበሰለ ፓፓያ ዕሩብ ትንሽ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                            '1.የማሽላ ዱቄቱን ከውኃ ጋር ለውሰውት አዮዲድ ጨው ይጨምሩበት እና እሳት ላይ ይጣዱት።\n'
                            '2.ቲማቲሙን ቀቅለው, ይላጡ እና አድቅቀው ይክተፉት።\n'
                            '3.ካሮቱን ይጠቡ, ይላጡ እና ቀቅለው ከበሰለ በኋላ ይፍጩት\n'
                            '4.ወደ ገንፎው የተከተፈውን ቲማቲም፣ የተፈጨውን ካሮት እና ቅቤን / ዘይትን ይጨምሩ እና በደንብ እስኪበስል ድረስ ያማስሉት\n'
                            '5. ከቀዘቀዘ በኋላ ሎሚውን ወደ ገንፎ ውስጥ ይጭመቁ።\n'
                            '6. በትዕግስት እና ማበረታቻ በመጠቀም ልጆን በማንኪያ ይመግቡ።\n'
                            'የበሰለ መጠን: 3 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 30 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ',
                          content:
                            'ፓፓያ ለመክሰስ\n'
                            '1.ፓፓያውን አጥበው ,ይላጡት እና ፍሬውን ያስወግዱት\n'
                            '2.በትናንሽ ቁርጥራጮች ይቁረጡ እና ልጆ እንዲበላ ይስጡት\n'
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
                '   #የምግብ አሰራር 18:-የተፈጨ ድንች በካሮት፣ በወተት እናበ ዘይት / ቅቤ የበለፀገ',
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
                         '-ድንች 1 መካከለኛ መጠን ያለው ድንች\n'
                         '-ካሮት 3 ትናንሽ ካሮት\n'
                         '-ወተት (ፈልቶ የቀዝቃዛ) 1 ከግማሽ የቡና ሲኒ\n'
                         '- ቅቤ/ዘይት 1 ከግማሽ የሻይ ማንኪያ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም-\n'
                         '-የበሰለ ማንጎ ግማሽ መካከለኛ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                           '1. ካሮቱን እና ድንቹን ልጠው፣አጥበው እና ከትፈው ይቀቅሉ።\n'
                           '2. በደንብ ሲበስል ድንቹን እና ካሮቱን ከእሳት ላይ አውርደው በደንብ ይፍጩት\n'
                           '3.ወተቱን ወደ ድንቹ እና ካሮቱ ውኽድ ውስጥ ይጨምሩት\n'
                           '4. ቅቤ / ዘይት እና አዮዲን ጨው ጨምረው እና በእሳት ላይ በበቂ ሁኔታ እስኪበስል ድረስ ያዋኽዱት።\n'
                           '5. ድስቱን ከእሳት ላይ አውርደው ፣ እስኪቀዘቅዝ ይጠብቁ እና በትዕግስት እና ማበረታቻን በመጠቀም ልጆን በማንኪያ ይመግቡ። \n'
                            'የበሰለ መጠን: 3 የቡና ስኒ\n'
                            'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 45 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ',
                          content:
                         'ማንጎ ለመክሰስ\n'
                         '1.ማንጎውን አጥበው ይላጡ\n'
                         '2.በንጹህ ቢላ ቆራርጠው\n'
                         '3.ልጆን በማንኪያ ይመግቡ'
                            ,
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
               '   #የምግብ አሰራር 19:-በአተር ዱቄት(ሽሮ)፣ በጎመን እና በዘይት/ቅቤ የበለፀገ የማሽላ ገንፎ ',
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
                        '-የማሽላ ዱቄት አንድ የቡና ሲኒ\n'
                        '-የአተር ወይም የባቄላ ዱቄት 1 የሻይ ማንኪያ\n'
                        '-ቅቤ/ዘይት 1 የሻይ ማንኪያ\n'
                        '-ጎመን 3 ቅጠሎች\n'
                        '-ውሃ 4 የቡና ሲኒ\n'
                        '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n'
                        '-የበሰለ ፓፓያ ዕሩብ ትንሽ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                          '1.ጎመኑን ይጠቡ፣ ይክተፉ እና ይቀቅሉት።\n'
                          '2.የማሽላ ዱቄቱን ከባቄላ (ወይም አተር) ዱቄት ጋር ያዋኽዱት።\n'
                          '3.በተዋኻደው ዱቄት ውስጥ ውሃ ጨምረው ከአዮዲን ጨው ጋር በደንብ ያዋኽዱ እና በበእሳት ላይ ይጣዱት።\n'
                          '4.ቅቤ/ዘይት እና ጎመኑን ጨምረው በማማሰል ማብሰል\n'
                          '5.ከቀዘቀዘ በኋላ ማበረታቻ እና ትዕግስት በመጠቀም ልጆን በማንኪያ መመገብ'
                          ' የበሰለ መጠን: 3 የቡና ስኒ\n '
                          'የዝግጅት እና የማብሰያ ጊዜ: 50 ደቂቃ',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ',
                          content:
                          'ፓፓያ ለመክሰስ'
                          '1.ፓፓያውን አጥበው ,ይላጡት እና ፍሬውን ያስወግዱት'
                          '2.በትናንሽ ቁርጥራጮች ይቁረጡ እና ልጆ እንዲበላ ይስጡት',
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
                '   #የምግብ አሰራር 20:-በዱባ እና በቲማቲም የበለፀገ የበቆሎ ገንፎ ',
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
                          '-የበቆሎ ዱቄት አንድ የቡና ስኒ\n'
                          '-ዱባ 1 ቁራጭ\n'
                          '-ቅቤ / ዘይት 1 የሻይ ማንኪያ\n'
                          '- አዮዲዝድ የተደረገ ጨው ለጣዕሙ\n'
                          '- ውሃ 4 ኩባያ\n'
                          '-የበሰለ አቮካዶ ½ መካከለኛ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                             '1. የበቆሎ ዱቄቱን ከውኃ ጋር ያዋህዱት, አዮዲን ጨው ይጨምሩበት እና እሳት ላይ ያድርጉት።\n'
                             '2. የዱባውን ልጣጭ እና ፍሬ ያስወግዱ, ይቁረጡት ይክተፋት እና ይቀቅሉት።\n'
                             '3.የበሰለውን ዱባ ከእሳት አውርደው ይፍጩት.\n'
                             '4.ዱባውን እና ዘይት / ቅቤን ወደ የበቆሎ ገንፎ ይጨምሩ እና በማማሰል በጥንቃቄ ያበስሉ.\n'
                             '5. ከቀዘቀዘ በኋላ ማበረታቻ እና ትዕግስት በመጠቀም ልጆን በማንኪያ ይመግቡ\n'
                              'ማሳሰቢያ፡ በተገኘው ጊዜ ሁሉ በበቆሎ ዱቄቱ ምትክ ከጤፍ፣ ገብስ፣ ስንዴ ወይም የማሽላ ዱቄት ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 40 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ',
                          content:
                          'ለመክሰስ የበሰለ አቮካዶ\n'
                              '1. አቮካዶን ይጠቡ እና ይላጡ.\n'
                              '2. ወደ ትናንሽ ቁርጥራጮች ይቆራርጡ እና ለልጆ እንዲበላ ይስጡት.',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Add more ExpansionTile widgets for additional sections
               ExpansionTile(
              title: Text(
                '   #የምግብ አሰራር 21:-በካሮት፣ በእንቁላል እና በድንች የበለፀገ ገንፎ  ',
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
                         '-ድንች 1 ትልቅ መጠን\n' 
                         '-ካሮት 2 ትናንሽ\n'
                         '-እንቁላል 1 ትንሽ እንቁላል\n'
                         '-ቅቤ / ዘይት 1 የሻይ ማንኪያ\n'
                         '-አዮዲዝድ የተደረገ ጨው ለጣዕም\n' 
                         '-የበሰለ ፓፓያ ¼ ትንሽ መጠን', 
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'አዘገጃጀት ',
                          content:
                          '1.ድንቹን እና ካሮቱን ይጠቡ, ይላጡት እና ይክተፉት ከዛም በውሀ ይቀቅሉት።\n'
                          '2.በሚበስልበት ጊዜ  ከእሳት ላይ አውርደው ፣ ይፍጩት።\n'
                          '3.እንቁላሉን ይምቱ እና የተፈጨው ካሮት እና ድንች ድብልቅ ላይ ይጨምሩ\n'
                          '4. ቅቤ / ዘይት እና አዮዲን ጨው ይጨምሩ እና በማማሰል ያብስሉት.\n'  
                          '5.ማበረታቻ እና ትዕግስት በመጠቀም ከቀዝቀዝ በኋላ  በማንኪያ ልጆን ይመግቡ\n'
                              'ማሳሰቢያ፡ በተገኘው ጊዜ ሁሉ በበቆሎ ዱቄቱ ምትክ ከጤፍ፣ ገብስ፣ ስንዴ ወይም የማሽላ ዱቄት ይጠቀሙ።\n'
                              'የበሰለ መጠን: 3 የቡና ስኒ\n'
                              'አጠቃላይ የዝግጅት እና የማብሰያ ጊዜ: 55 ደቂቃ\n',

                        ),
                       
                       
                        Divider(),
                        CollapsibleSection(
                          title: 'መክሰስ ',
                          content:
                              'ፓፓያ ለመክሰስ \n'
                              '1. ፓፓያውን አጥበው ,ይላጡት እና ፍሬውን ያስወግዱት\n'
                              '2. በትናንሽ ቁርጥራጮች ይቁረጡ እና ልጆ እንዲበላ ይስጡት ',

                        ),
                       
                        
                             
                      
                        // Other Text widgets and content here
                      ],
                    ),
                  ),
                ),
              ],
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
                  MaterialPageRoute(builder: (context) => month612()),
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


