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
      home: FaqsPage(),
    );
  }
}


// ignore: must_be_immutable
class FaqsPage extends StatelessWidget {
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
                'በእርግዝና ወቅት ምን ይሰማኛል?',
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
           'ከሁሉም ሰው የተለየ ነው ነገር ግን ሆርሞኖች በሰውነትዎ እና በሚሰማዎት ስሜት ላይ ብዙ ለውጦችን ያመጣሉ. አንዳንዶቻችን ለስላሳ ጡቶች ሊኖረን ይችላል፣ በቀላሉ ሊደክመን ወይም ሊታመም ይችላል (በቀኑ ውስጥ በማንኛውም ሰዓት)።',
     
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
                'የእርግዝና ምኞቶች መቼ ይጀምራሉ?',
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
            'የእርግዝና የምግብ ፍላጎት የሚጀምርበት የተለየ ጊዜ የለም. ለእያንዳንዱ ሴት የተለየ ነው እና ምንም ፍላጎት ላይኖርም ይችላል።',
     
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
                'በእርግዝና ወቅት የደም መፍሰስ ካለብኝስ?',
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
          'የደም መፍሰስ ካጋጠመዎት ወዲያውኑ ለአዋላጅዎ ይንገሩ እና ምክሯን ያግኙ።',
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
                'በእርግዝና ወቅት የአካል ብቃት እንቅስቃሴ ማድረግ እችላለሁን?',
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
            'አዎ፣ ትችያለሽ ! ንቁ መሆን ክብደትን ለመቆጣጠር፣ የአካል ብቃት እንቅስቃሴን ለማሻሻል፣ የደም ግፊትን ለመቀነስ፣ እንቅልፍን ለማሻሻል እና ስሜትን ለማሻሻል ይረዳል።',
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
                'የማለቂያ ቀኔን እንዴት አውቃለሁ?',
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
              'የመጨረሻውን የወር አበባ ቀን ማወቅ ያስፈልግዎታል. ከወር አበባዎ የመጀመሪያ ቀን ጀምሮ 280 ቀናት ወይም 40 ሳምንታት የማለቂያ ቀንዎ ይሆናል። የማለቂያው ቀን ግምት ብቻ ነው። እንደ እውነቱ ከሆነ, ከ 5% ያነሱ ሕፃናት የተወለዱት እናት በተገመተላት ማለቂያ ቀን ነው.',
    
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
                'ህፃኑ ሲመታ ሚሰማኝ ስሜት የሚጀምረው መቼ ነው?',
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
                'አብዛኛዎቹ እናቶች በእርግዝናቸው በ14 እና 26 ሳምንታት መካከል "ፈጣን" በመባል የሚታወቁት የመጀመሪያ ምልክቶች ይሰማቸዋል። ነገር ግን፣ ይለያያል እና ስለዚህ ጉዳይ አዋላጁን ወይም ዶክተርን እንዲያነጋግሩ ይመከራሉ።',
    
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
                 'የሕፃኑን የመወለድ ችግር ለመቀነስ ከሁሉ የተሻለው መንገድ ምንድነው?',
     
         
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
                 'ፎሊክ አሲድ ለአራስ ሕፃናት ጤና እና ደህንነት አስፈላጊ የሆነ ጠቃሚ ንጥረ ነገር ነው። ለትክክለኛው እድገትም አስፈላጊ ነው.',
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
               'በእርግዝና ወቅት ምን ያህል ጊዜ ሐኪም ማየት አለብኝ?',
    
         
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
              'እርጉዝ መሆንዎን እንዳወቁ እና በእርግዝናዎ ውስጥ በመደበኛነት ዶክተር ወይም አዋላጅ ማየት አለብዎት።',
   
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
                'በእርግዝና ወቅት መጓዝ ይመከራል?',
    
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
                          
          'በአጠቃላይ በእርግዝና ወቅት መጓዝ ደህና ነው, ነገር ግን የጉዞ እቅድ ከማውጣትዎ በፊት ሐኪምዎን ማማከር ጥሩ ነው.',
 
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
              'በእርግዝና ወቅት ፀጉሬን መቀባት እችላለሁ?',
    
        
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
             'በዚህ ርዕስ ላይ የተገደበ ጥናት አለ, ነገር ግን በአጠቃላይ ከመጀመሪያው ወር ሶስት ወር በኋላ በእርግዝና ወቅት ጸጉርዎን መቀባት አስተማማኝ እንደሆነ ይቆጠራል.',
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
              'የጠዋት ህመምን እንዴት ማስታገስ እችላለሁ?',
     
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
                         
          'ትንንሽ፣ ተደጋጋሚ ምግቦችን መመገብ፣ ውሃ መጠጣት እና በቂ እረፍት ማግኘት የጠዋት ህመምን ለማስታገስ ይረዳል።',
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
                 'ከዚህ በፊት ንቁ ካልሆንኩ በእርግዝና ወቅት የአካል ብቃት እንቅስቃሴ ማድረግ እችላለሁን?',
    
  
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
                         
          'አዎ፣ ምንም እንኳን ከዚህ በፊት ንቁ ባይሆኑም በእርግዝና ወቅት የአካል ብቃት እንቅስቃሴ ማድረግ መጀመር ይችላሉ። ማንኛውንም አዲስ የአካል ብቃት እንቅስቃሴ ከመጀመርዎ በፊት ቀስ ብሎ መጀመር እና ከጤና እንክብካቤ አቅራቢዎ ጋር መማከር አስፈላጊ ነው።',
  
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
               
       'ከእርግዝና ጋር የተያያዘ የጀርባ ህመምን እንዴት መቋቋም እችላለሁ?',
     
         
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
                'ከእርግዝና ጋር የተያያዘ የጀርባ ህመም የተለመደ ነው. ለስላሳ የአካል ብቃት እንቅስቃሴዎችን፣ ቅድመ ወሊድ ዮጋ ፣ ለእርግዝና ትራስ ድጋፍን በመጠቀም እና የጀርባ ህመምን ለማስታገስ ጥሩ የሰውነት አቀማመጥን በመለማመድ መሞከር ይችላሉ።',
  
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
                
     'በእርግዝና ወቅት ቡና መጠጣት አስተማማኝ ነው?',
    
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
                          
          'በአጠቃላይ በእርግዝና ወቅት የካፌይን አጠቃቀምን ለመገደብ ይመከራል. አሁንም በትንሽ መጠን ቡና መደሰት ይችላሉ፣ ነገር ግን ምን ያህል ካፌይን ለእርስዎ ደህንነቱ የተጠበቀ እንደሆነ ከጤና እንክብካቤ አቅራቢዎ ጋር መማከሩ የተሻለ ነው።',
    
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
             'አንዳንድ የተለመዱ የቅድመ ወሊድ ምልክቶች ምንድ ናቸው?',
      
         
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
          'የቅድመ ወሊድ ምጥ ምልክቶች መደበኛ መኮማተር፣ የዳሌ ግፊት፣ የታችኛው ጀርባ ህመም፣ የሴት ብልት ደም መፍሰስ እና የሴት ብልት ፈሳሾች ለውጥ ይገኙበታል። ከእነዚህ ምልክቶች አንዱን ካጋጠመዎት ወዲያውኑ የጤና እንክብካቤ አቅራቢዎን ያነጋግሩ።',
  
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
                'ጉልበት ለማግኘት እና ለመውለድ እንዴት መዘጋጀት እችላለሁ?',
      
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
                         
          'በወሊድ ትምህርት ክፍሎች ይሳተፉ፣የወሊድ እቅድ ይፍጠሩ፣የሆስፒታል ቁሳቁስ በቦርሳዎ ይያዙ፣የመዝናናት ቴክኒኮችን ይለማመዱ፣ጉልበት ለማግኘት እና ለመውለድ ለመዘጋጀት ከጤና እንክብካቤ አማካሪዎ ጋር የእርስዎን ምርጫዎች ይወያዩ።',
    
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
                 'በእርግዝና ወቅት የግብረ ሥጋ ግንኙነት ማድረግ እችላለሁን?',
    
          
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
          'በአብዛኛዎቹ ሁኔታዎች በእርግዝና ወቅት የግብረ ሥጋ ግንኙነት መፈጸም ደህና ነው. ነገር ግን ማንኛውም ስጋት ካለብዎ ወይም ከፍተኛ የሆነ እርግዝና ካለብዎ ከጤና እንክብካቤ አቅራቢዎ ጋር መማከር አስፈላጊ ነው።',
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
                'ከእርግዝና ጋር የተያያዘ እብጠት በእጆቼ እና በእግሮቼ እንዴት መቆጣጠር እችላለሁ?',
    
        
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
         'በእርግዝና ወቅት እብጠትን ለመቆጣጠር፣ በተቻለ ጊዜ እግሮችዎን ከፍ ያድርጉ፣ ለረጅም ጊዜ ከመቆም ይቆጠቡ፣ በቂ ውሃ ይጠጡ እና ምቹ ጫማዎችን ያድርጉ። እብጠት ከባድ ወይም ድንገተኛ ከሆነ የጤና እንክብካቤ አቅራቢዎን ያነጋግሩ።',
 
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
               'በእርግዝና ወቅት የስሜት መለዋወጥ የተለመደ ነው?',
    
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
                        
          'አዎን, በእርግዝና ወቅት በሆርሞን ለውጦች ምክንያት የስሜት መለዋወጥ የተለመደ ነው. ራስ መንከባከብን መለማመድ፣ ስሜትዎን ከባልደረባዎ ወይም ከታመነው ጓደኛዎ ጋር መወያየት እና አስፈላጊ ከሆነ ድጋፍን መፈለግጠቃሚ ነው።',
   
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
                'ጡት ማጥባት ለማዘጋጀት አንዳንድ መንገዶች ምንድናቸው?',

     
    
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
                        
        
          'የጡት ማጥባት ትምህርቶችን ይከታተሉ፣ ትክክለኛ የማጥባት ቴክኒኮችን ይማሩ፣ በረዳት ነርሲንግ ጡት ላይ ኢንቨስት ያድርጉ እና መመሪያ እና ድጋፍ ለማግኘት ከጡት ማጥባት አማካሪ ጋር በመማከር ያስቡበት።',
  
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
                'በእርግዝና ወቅት የልብ ህመምን እንዴት መቆጣጠር እችላለሁ?',
    
         
    
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
                        
          'የሆድ ቁርጠትን ለመቆጣጠር ትንንሽ ምግቦችን ለመብላት ይሞክሩ፣ ቅመም እና አሲዳማ የሆኑ ምግቦችን ያስወግዱ፣ ከምግብ ጊዜ ይልቅ በምግብ መካከል ፈሳሽ ይጠጡ እና በሚተኛበት ጊዜ ጭንቅላትን በትራስ ከፍ ለማድረግ ያስቡበት።',
    
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
                 'ከእርግዝና የስኳር በሽታ ጋር ተያይዘው ሊከሰቱ የሚችሉ አደጋዎች ምን ምን ናቸው?',
      
      
    
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
                        
             'በእርግዝና ወቅት የሚከሰት የስኳር በሽታ በእርግዝና ወቅት እንደ ፕሪኤክላምፕሲያ፣ ያለጊዜው መወለድ እና ማክሮሶሚያ (ትልቅ የልደት ክብደት) ያሉ ችግሮችን ሊጨምር ይችላል። በደም ውስጥ ያለውን የስኳር መጠን መከታተል እና በጤና እንክብካቤ አቅራቢዎ የተጠቆመውን የሕክምና እቅድ መከተል አስፈላጊ ነው.',

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
                 'የመሃንነት እና የእርግዝና መጥፋት ስሜታዊ ፈተናዎችን እንዴት መቋቋም እችላለሁ?',
      
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
                        
          
          'መካንነትን መቋቋም እና እርግዝናን ማጣት ስሜት ፈታኝ ሊሆን ይችላል. ከምትወዷቸው ሰዎች ድጋፍ መፈለግ፣ ምክር ወይም ህክምናን ግምት ውስጥ ማስገባት እና ለሀዘን እና ለመፈወስ ጊዜ መስጠት አስፈላጊ ነው።',
 
    
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
              
          'የፕሪኤክላምፕሲያ(ከፍተኛ የደም ግፊት) የማስጠንቀቂያ ምልክቶች ምንድ ናቸው፣ እና መቼ የህክምና እርዳታ ማግኘት አለብኝ?',
     
    
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
                        
         
          'የፕሪኤክላምፕሲያ የማስጠንቀቂያ ምልክቶች ከፍተኛ የደም ግፊት፣ እብጠት፣ ከባድ ራስ ምታት፣ የእይታ ለውጦች እና የሆድ ህመም ናቸው። ከነዚህ ምልክቶች አንዱን ካጋጠመዎት ወዲያውኑ የጤና እንክብካቤ አቅራቢዎን ያነጋግሩ።',
  
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
              'በእርግዝና ወቅት የእርግዝና ግፊትን እንዴት መቆጣጠር እችላለሁ?',
    
    
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
                        
        
          'በእርግዝና ወቅት የሚከሰት የደም ግፊት ወይም ከፍተኛ የደም ግፊት በጤና እንክብካቤ አቅራቢዎ ክትትል እና ቁጥጥር ሊፈልግ ይችላል። በመደበኛ የቅድመ ወሊድ ቀጠሮዎች ላይ መገኘት እና የአቅራቢዎችዎን ምክሮች መከተል አስፈላጊ ነው.',
   
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
                'ያለጊዜው የመውለድ አደጋዎች ምንድ ናቸው, እና እንዴት መቀነስ ይቻላል?',
      
    
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
                        
        
          'ያለጊዜው መወለድ በሕፃኑ ጤና እና እድገት ላይ አደጋ ሊያስከትል ይችላል። ስጋቶቹን ለመቀነስ፣ የጤና እንክብካቤ አቅራቢዎች ምጥ ለማዘግየት እና ህፃኑ እንዲያድግ ተጨማሪ ጊዜ ለመስጠት የአልጋ እረፍትን፣ መድሃኒቶችን ወይም ሌሎች ጣልቃገብነቶችን ሊመክሩ ይችላሉ።',
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
                'በእርግዝና ወቅት መጓዝ ደህና ነው?',
    
        
    
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
          'በአጠቃላይ በእርግዝና ወቅት መጓዝ ደህና ነው, ነገር ግን የጉዞ እቅድ ከማውጣትዎ በፊት ሐኪምዎን ማማከር ጥሩ ነው.',
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
