import 'package:flutter/material.dart';
import 'package:index/screens/3infant1.dart';
import 'package:index/screens/3trimester.dart';
import 'package:index/screens/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'የመጨረሻ ሦስት ጊዜ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Trimester3Page(),
    );
  }
}

class Trimester3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ትሪሚስተር 3',
            style: TextStyle(
                     fontFamily: 'Abyssinica SIL',
                    ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: Text(
                'የሰባተኛው ወር የእርግዝና ጊዜ',
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
                          'የወገብና የእግር ህመሙ እየከበደ እንደሚሄድ አምነሽ ተቀብለሻል ብለን እናስባለን። እነዚህ ህመሞች ሲበረቱ እረፍት እንደሚያስፈልግሽ ግን ተገንዘቢ። የልጅሽ እንቅስቃሴ ጠንካራ ከሆነና በመተኛ ሰአትሽ እንቅስቃሌ ካበዛ እንቅልፍ ማጣትሽ የማይቀር ነው። ነገር ግን ከወለድሽ በኋላ ለማጥባት ለሊት በተደጋጋሚ መነሳትሽ ስለማይቀር ካሁኑ መለማመድም ጥሩ ነው። የደም ዝውውርሽ በጣም ከፍተኛ በመሆኑ የልብ ምትሽ ሊፈጥን፤ ትንፋሽ ሊያጥርሽና ሊያዞርሽ ይችላል። የሚያስጨንቅ ነገር ባይሆንም እራስሽን መጠበቅና እረፍት ማረግ እንዳለብሽ ማመላከቻ ነው። ክብደትሽ እየጨመረ በመሆኑ እግርሽ መጨመሩ አይቀርምና በልክሽ ጫማ መግዛት ይኖርብሽ ይሆናል። ቃርና የሆድ ድርቀት እንደገና ሊጀምርሽ ይችላል ማቅለያ መንገዶቸን ተከተይ። \n'
                          'አደገኛ የሚባሉትን የእርግዝና ምልክቶች በደንብ መከታተል ይኖርብሻል። የልጅሽን እንቅስቃሴ አጥኚ እንቅስቃሴው ሲዳከም ቶሎ እንድታቂ ይረዳሻል። አብዛኞቹ በእርግዝና ሰአት የሚከሰቱ ውስብስብ ችግሮች እርግዝና በገፋ ቁጥር የመከሰት እድላቸው ሰፊ ስለሆነ ጥንቃቄ ያስፈልጋል። ለሁሉም ነገር መፍትሄው የቅድመ ወሊድ ክትትልሽን በተገቢው መንገድ መከታተል ነው። በዚህ ወር በሚኖርሽ የቅድመ ወሊድ ቀጠሮ አር ኤች ኔጌቲቭ ከሆንሽ የልጅሽን ደም የሚያጠቃ ህዋስ ልታመርቺ ስለምትችይ እሱን የሚከላከል መዳኒት ትወጊያለሽ። ይህም ሾተላይ ተብሎ የሚታወቀውን ችግር ይከላከላል።\n\n'
                          'ስለ ፅንሱ\n'
                          'የአይምሮው እድገት በጣም ከፍተኛ በመሆኑ በአካል ብቻ ሳይሆን በተግባርም እንደአራስ ልጅ መሆን ይጀምራል። ይህን ወር ልጅሽ በተመሳሳይ ሰአት መተኛትና መነሳት ይጀምራል። አንቺ ስትተኚ እንዲተኛ ፀልይ። እያደገ ሲመጣ የእንሽርት ውሃው እየቀነሰ ቦታውን ለፅንሱ ይለቃል። አይኑን መግለጥና መክደን እንዲሁም እጁን መምጠት የቀን ለቀን ትግባሩ ነው። አይኑን መግለጥም ሆነ ብርሃን መለየት ቢችልም በአብዛኛው ጊዜ ግን የተከደነ ይሆናል። ይህ ከተወለደም በኋላ የሚቀጥል ሲሆን አራስ ሆኖም በሚገልጥ ሰአት በጣም ቅርብ ከሆኑ ነገሮች ውጪ ማየት አይችልም። \n'
                          'ሳንባው ሙሉ በሙሉ ባያድግም በዚህ ወር ቢወለድ በህክምና እርዳታ የመኖር እድል አለው ከዚህ ወር ጀምሮ ስቅታ ስለሚጀምር ሊሰማሽ ይችላል። የተወሰኑ ደቂቃዎችን ብቻ የሚቆይ ሲሆን ላንቺም ለልጁም ጉዳት አያመጣም ስቅታ በተለምዶ የልጆችን ደረት ያሰፋል በመባል እንደጥሩ ነገርም ይወሰዳልሰውነቱ እና አይምሮ በፍጥነት እያደገና በደንብ እየጨመረ ስለሆነ ፕሮቲን፣ ቫይታሚን ሲ፣ ፎሊክ አሲድና አይረን ያላቸው ምግቦችን ተመገቢ። ለአጥንቱ ጥንካሬም ደግሞ ወተት ወይም የወተት ተዋፅኦ የሆኑ እንደ እርጎና አይብ ያሉ ምግቦችን ተመገቢ። ልጅሽ በየቀኑ እስከ 250 ሚሊ ግራም ካልሲየም ለአጥንቱ ጥንካሬ ይጠቀማል። \n'
                          'በወሩ መጨረሻ \n'
                          'ከ 1 እስከ 1.35 ኪሎ ግራም ይመዝናል \n'
                          '40 ሴንቲ ሜተር ይረዝማል \n'
                          'በአይን ቢታይ ትልቅ ጥቅል ጎመን ያክላል።',
                          style: TextStyle(
                              color: Colors.black,
                              
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
                'የስምንተው ወር የእርግዝና ጊዜ',
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
                          'ሆድሽ በጣም በመግፋቱ ከዚህ በፊት የምታደርጊያቸውን ነገሮች በሙሉ ማረግ ይከብድሽ ይሆናል። እኛ የምንመክርሽ በተቻለሽ አቅም እረፍት ውሰጂ። ይህን ጊዜ መልሰሽ አታገኚውም ልጅሽ ከመጣች በኋላ እረፍት ምን ማለት እንደሆነ ሊጠፋሽ ይችላል። የልጅሽ እድገት ሲጨምርና ሆድች ወደላይ ከፍ ሲል የደረት አጥንትሽ ላይ ጫና ሊያሳድር ይችላል – ህመምም ሊኖረው ይችላል። ከጡትሽ ላይም ቢጫ መልክ ያለው ፈሳሽ ሊወጣ ይችላል – ሊያስደነግጥሽ አይገባም። አንዳንድ ነብሰጡሮች ከመውለዳቸው በፊት ጡታቸው ወተት ማፍሰስ ይጀምራል ይህም ቢጫ ወተት አንገር ይባላል። \n'
                          'ከስምንት ወር ጀምሮ የውሸት ምጥ የሚባለው ምልክት መታየት ይጀምራል። የውሸት ምጥ ወይም በተለምዶ መንገድ ጠራጊው የሚባለው እውነተኛ ምጥ ያልሆነና ወደ ወሊድ የማያመራ ነው። የእውነተኛና የውሸተኛ ምጥን ልዩነት ማወቂያ ጊዜሽ አሁን ነው። ሙሉ መረጃውን ወሊድ በሚለው ማውጫ ስር ምጥ የሚለውን ዝርዝር ፅሁፍ ተመልከቺ። በሌላ በኩል ወሊድ መቅረቡን አስመልክቶ ሆርሞኖችሽ መገጣጠሚያሽ እንዲላላ በማረግ ክብደትሽን የመሸከም አቅም ያሳጡሻል። ይህም ወገብሽ ላይና እግርሽ ላይ ጫና በማድረግ ህመም ሊያመጣ ይችላል። መፍትሄው ? እረፍት። ይህ መውለጃሽ እየቀረበ መሆኑን ስለሚያመላክት የምትወልጅበትን ቦታ (ሀኪም ቤት እንዲሆን አበክረን እንመክራለን)፤ የሚያስፈልግሽን ገንዘብ፤ የሚያርስሽንና የሚያግዝሽን ሰው ማዘጋጀት ይኖርብሻል። ዘጠኝ ወር ሲገባ ሊከብድሽና ድካም ድካም ሊልሽ ስለሚችል ለወሊድ የሚያስፈልጉሽን ነገሮች በዚህ ወር ብታሟዪ ላንቺ ጥሩ ነው። ስለወሊድ ያስቀመጠነውን መረጃ በሙሉ  ብታነቢ በጣም ጥሩ ነው።\n\n'
                          'ስለ ፅንሱ\n'
                          'በስምንተኛው ወር መጨረሻ ከሳምባዋ በስተቀር ሌሎቹ የሰውነት ክፍሎች በደንብ አድ ገው ይጨርሳሉ በዚህም የተቀሩትን ጊዜያቶች  ክብደት በመጨመር ትጠመዳለች አንቸ‍ ከምትጨምሪው እያንዳንዱ ኪሎ ግማሹ የሷ ክብደት ነው àት@ስትወለድ ከሚኖራት ክብደት ከግማሽ በላዩን ከዚህ ወር ጀምEሮ የምትጨምረው ይሆናል። በፊት ከነበራት እንቅስቃሴ ግን በጣም ትቀንሳለች መጥፎ ነገር ተከስቷል ማለት ሳይሆን እየተለቀች ስለሆነ እንደልቧ ለመንቀሳቀ ቦታ ስለማታገኝ ነው በተያያዘ ልጅሽ ለመወለድ የሚያሰ‍ፈልጋትን አቀማመጥና ቦታ መያዝ ትጀምራለች።\n'
                          'አንገቷን ማዟዟር፣ እጅና እግሯን ማንከሳቀስ በደንብ ትችላለች። እንቅስቃሴዋ ጠንካራ በመሆኑ ልትረብሽሽ ትሽላለች ነገር ግን ጤነኛና ጠንካራ የመሆኗ ምልክት ነውና ብዙም አይክፋሽ። አጥንቷም በደንብ እየጠነከረ ሲሆንየጭንቅላቷ አጥንት ግን ለስላሳና በደንብ ያልገጠመ ይሆናል። ይህም በወሊድ ጊዜ ጭንቅላቷ እንዲወጣ ያደርጋል። በወሊድ ጊዜ ለመውጣት በምታረገው ጥረት ጭንቅላቷ ላይ የሚፈጠረው ጫና የጭንቅላቷን ቅርፅ ሞላላ ሊያደርገው ይችላል። ይህ መጠፎ ነገር አደለም – የልጆች ጭንቅላት የሚጠነክረውና መልኩን መያዝ የሚጀምረው አመት ካለፋቸው በኋላ ነው። አራስ እንዳሉ ሲተኙ ጭንቅላታቸውን በማዟዟር ቅርፁን ማስተካከል ይቻላል። \n'
                          'በወሩ መጨረሻ \n'
                          'ከ 2 እስከ 2.4 ኪሎ ግራም ትመዝናለች \n'
                          '46 ሴንቲ ሜተር ትረዝማለች \n'
                          'በአይን ብትታይ ሐብሐብ ታክላለች።',
                          style: TextStyle(
                              color: Colors.black,
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
                'የዘጠነኛው ወር የእርግዝና ጊዜ  ',
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
                          'እንኳን ደስ አለሽ የመጨረሻው ወር ላይ ደርሰሻል። ሆዴ መቼም ከዚህ በላይ የትም ሊሄድ አይችልም እያልሽ ነው አደል? እመኚን በዚህ ወር መጀመርያ በደንብ ይጨምራል። ከ 37 ሳምንት በኋላ ግን መጨመር ያቆማል – ተፈጥሮ ነገሮችን የምታሳካበት መንገድ አላት። ይህ የመጨረሻ ወር ስለሆነ የቅድመ ወሊድ ቀጠሮሽ በየሳምንቱ ይሆናል። እነዚህ ቀጠሮዎች በወሊድ ጊዜ ያልታሰበ ነገር እንዳይፈጠር አስቀድሞ ጥንቃቄ በማድረግ ጤነኛ የወሊድ ጊዜ ከጤነኛ ልጅ ጋር እንዲወለድ አስተዋፅኦ ያደርጋሉ። መውለጃ ቀንሽ መቅረቡን አስመልክቶ ሆድሽ (ልጅሽ) ወደታች ይወርዳል። ይህም የአተነፋፈስና የቃር ችግሮችን ቀለል እንዲል ሲያደርግ ነገር ግን መራመድ እንዲከብድሽ ያደርጋል። በተጨማሪም ፊኛሽ ላይ የሚፈጥረው ጫና ሽንትሽን ቶሎ ቶሎ ሊያመጣውና ወደ መፀዳጃ ቤት ሊያመላልስሽ ይችላል። የእግር ማበጥም በዚህ ወር የተለመደ ሲሆን እብጠቱ ግን ድንገተኛ ከሆነና በተለያዩ የሰውነት ክፍሎችሽ ላይ ከታየ የፕሪ ኢክላምዚአ ምልክት ሊሆን ስለሚችል ወደ ጤና ተቋም መሄድ ይኖርብሻል። እራስሽ ላይ የምታያቸው ለውጦት የአደገኛ ምልክቶች አለመሆናቸውን ለማወቅ ሁሌም በእርግዝና ሰአት ሊታዩ የሚችሉ አደገኛ ምልክቶች ምን ምን እንደሆኑ ማወቅና ማንበብ ይኖርብሻል። \n'
                          'ይህ ጊዜ የምጥ ምልክቶችን ጠንቅቀሽ ማወቅ የሚጠበቅብሽ ወቅት ነወ. በተለይ የእንሽርት ውሃ መፍሰስና ከጀርባ ጀምሮ ወደፊት የሚመጣ ቁርጠትን በደንብ መከታተል ይኖርብሻል። በነገራችን ላይ ይወስዳል በተባለው ቀን ይወለዳል ብለሽ አታስቢ ወደፊት ሊመጣ ወይም ወደላ ሊቀር ይችላል – ልጅሽ ቀኑ ስለደረሰ ሳይኖን ዝግጁ ሲሆን ነው የሚወለደው ።ወሩ እያለቀ ሲሄድ ለወሊድ የሚያስፈልጉሽን ነግሮች አዘጋጂ፣ ወደ ሃኪም ቤት ስትሄጂ የምትይዣቸውን ነገሮች በቦርሳ አድርገሽ ቅርብ ቦታ አስቀምጪ"መዘገጃጀት እንዳለ ሆኖ እራስሽን ግን አታድክሚ ለምጥ ሃይል ያስፈልግሻልና ሀይልሽን ቆጥቢ። ስለምጥና ወሊድ አስፈላጊ መረጃዎችን ማመቅ በጣም ጠቃሚ በመሆኑ በመሊድ ስር የተቀመጡ ፅሁፎችን እንድታነቢ እንመክራለን" በተረፈ ግን ትንፋሽ ውሰጂ ተረጋጊ፤ ልጅሽን ለማየትና ለማቀፍ ተዘጋጂ ከወሊድ በኋላም አብረንሽ ነን!! \n\n'
                          'ስለ ፅንሱ\n'
                          'መወለጃው ሲደርስ ገላውን ሸፍኖት የነበረው ጸጉርና ቆዳውን ከእንሽርት ውሃ ሲከላከለው የነበረው ዘለግላጋና ነጭ ሽፋን መርገፍ ይጀምራሉ። እነዚህንም መልሶ በመዋጥ እንደተወለደ የሚኖረውን ጥቁርና ዘለግላጋ ሰገራ ያጣራል። ለወሊድ ዝግጁ በመሆንም ጭንቅላቱ ወደታች ያዞራል። በዚህ ወር መጨረሻ ልጅሽ ለመወለድ ሙሉ በሙሉ ዝግጁ ይሆናል። ሆኖም ከተወለደ በኋላ ለተወሰኑ ሳምንቶች ቆዳው ይላላጣል፤ በደምብ ማየት አይችልም፤ ሰውነቱ እጥፍጥፍ ያለ ይሆናል የውጭውን አለም ለመልመድ ጊዜ ያስፈልገዋል። \n'
                          'በወሩ መጨረሻ አጥንቱ በጣም ጠንካራ በመሆኑ እንደተወለደ ጣት ብትሰጪው አጠንክሮ ይይዛል። ሰውነቱ ሙሉ ለሙሉ በማደግ ውጪ ለሚጠብቀው ህይወት ዝግጁ ይሆናል። ጭንቅላቱም ጸጉር በማብቀል ሲወለድ ሰው እንዲመስል ይረዳዋል። ከ 37 ሳምንት በኋላ መውለድ ፅንሱ ላይ ችግር ባያመጣም ማህፀን ውስጥ በቆየ ቁጥር አይምሮውናሳንባው በተሻለ መንገድ ያድጋል። የጤና ችግር ቢኖርና በቀዶ ጥገና መውለድ ቢኖርብሽም እንኳን አስገዳጅ ጉዳይ ከሌለ በስተቀር እስከ40 ሳምንት ትጠበቂያለሽ።\n'
                          'ታዲያ በነዚ ጊዜያቶች ከአይምሮና ከሳንባ እድገት በተጨማሪ ሰውነቱን በቅባት ይሸፍናል። ይህ ቅባትም ሰውነቱን ከብርድ የሚከላከልበት መንገድ ነው። ሆኖም ምንም ብርድ ሳይነካው ማህፀን ውስጥ 9 ወር የኖረ ህፃን ሲወለድ ሙቀቱን መቆጣጠር ሲያቅተው ይችላል። ለዛም ነው እንደተወለደ ከናትየው ሰውነት ጋር ንክኪ እንዲኖረውና ሙቀት እንዲያገኝ የሚደረገው።\n'
                          'ምንም እንኳን ጤነኛ እርግዝና ብታሳልፊም ሁሌም በጤና ማእከል መውለድ የተሻለ መሆኑን አምነሽ በጤና ተቋም ውለጂ። በጤና ተቋም መውለድ ልጅሽ የሚያስፈልገውን የመጀመርያ ቀን ክትባትም እንዲያገኝ ያግዘዋል። አንድ ህፃን በተወለደ እለት የሳምባ ነቀርሳና የልጅነት ልምሻን የሚከላከል ክትባት ያገኛል። ይህም ለጤናማ እድገቱ ትልቅ አስተዋፅኦ ይኖረዋል።\n'
                          'በወሩ መጨረሻ\n'
                          'ከ 3 እስከ 3.5 ኪሎ ግራም ይመዝናል\n'
                          '50-55 ሴንቲ ሜትር ይረዝማል\n'
                          'በአይን ቢታይ ትልቅዬ ዱባ ያክላል ... አሁንማ እራስሽ በአይንሽ ታይዋለሽ። ',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Abyssinica SIL',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            ExpansionTile(
              title: Text(
                'ማጠቃለያ',
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
                          'የሶስተኞቹ  ሦስት ወራት የእርግዝና ጊዜ ማጠቃለያ ',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Abyssinica SIL',
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'አንድ ጊዜ እርግዝና ሶስተኛው ወር ከደረሱ በኋላ, እርስዎ ከግማሽ መንገድ በላይ ነዎት. የልጅዎን መወለድ በጉጉት ሲጠባበቁ፣ ብዙ የሚያቅዱ እና የሚወስዷቸው ውሳኔዎች አሉ። እያዘገመህ እንደሆነ ታውቀው ይሆናል፣ ወይም ለልጅህ መምጣት በምትዘጋጅበት ጊዜ ለማፅዳት፣ ለማፅዳት እና ለማደራጀት በሃይል ተሞልተህ ይሆናል። ይህ የማጽዳት ፍላጎት ጎጆ በደመ ነፍስ በመባል ይታወቃል። ',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'Abyssinica SIL'),
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'የሶስተኛው ወር ሶስት ወር ምንድነው ?',
                          content:
                              'እርግዝና በመጀመሪያ ወር ብሎኮች እና በስተኛ ወር ሶስት ወራት ውስጥ ይገለጻል. እርግዝናዎ መድረሳ ማለት አሁን በሥተኛው እና በመጨረሻው ሶስት ወር ውስጥ ነባር ማለት ነው። በይፋ፣ ይህ ሶስት ወር ይቀጥላል፣ ነገር ግን እንደ እውነቱ ከሆነ፣ ልጅ የተወለደ ቁጥር ሶስት ወር ያበቃል እርግዝና እያንዳንዳቸው ከ 3 ወር በኋላ በ 3 ብሎኮች ይከፈላሉ - የመጀመሪያ ፣ ሁለተኛ እና ሶስተኛ ወር። ሳምንታትዎ ሳምንት 27 መድረኮች አሁን በሥተኛው እና በመጨረሻው ሶስት ወር ውስጥ ምንም ማለት አይደለም ። ይህ ሶስት ወር በ40ኛው ሳምንት ሊያልቅ ቢችል ግልፅ እንደሆነ እውነቱ ከሆነ ግን ልጆች የተወለደ ቁጥር ያበቃል።\n'
                              ' አንድ ሕፃን ከ 37 እስከ 42 ሣምንታት እርግዝና ውስጥ ከተወለደ ሙሉ ጊዜ እንደተወለደ ይቆጠራል. ከ 37ኛው ሳምንት በፊት የተወለደ ህጻን ያለጊዜው እንደደረሰ ይቆጠራል፣ እና ልጆች በ 42ኛ ሳምንት ካልተወለደ ፣ ምጥ ሊፈጠር ይችላል። እርግዝናዎ መድረሳ ማለት አሁን በሥተኛው እና በመጨረሻው ሶስት ወር ውስጥ ነባር ማለት ነው። በይፋ፣ ይህ ሶስት ወር ይቀጥላል፣ ነገር ግን እንደ እውነቱ ከሆነ፣ ልጅ የተወለደ ቁጥር ሶስት ወር ያበቃል። እርግዝና እያንዳንዳቸው ከ 3 ወር በኋላ በ 3 ብሎኮች ይከፈላሉ - የመጀመሪያ ፣ ሁለተኛ እና ሶስተኛ ወር። ሳምንታትዎ ሳምንት 27 መድረኮች አሁን በሥተኛው እና በመጨረሻው ሶስት ወር ውስጥ ምንም ማለት አይደለም ። ይህ ሶስት ወር በ40ኛው ሳምንት ሊያልቅ ቢችል ግልፅ እንደሆነ እውነቱ ከሆነ ግን ልጆች የተወለደ ቁጥር ያበቃል። አንድ ሕፃን ከ 37 እስከ 42 ሣምንታት እርግዝና ውስጥ ከተወለደ ሙሉ ጊዜ እንደተወለደ ይቆጠራል. ከ 37ኛው ሳምንት በፊት የተወለደ ህጻን ያለጊዜው እንደደረሰ ይቆጠራል፣ እና ሞት በ 42ኛው ሳምንት ካልተወለደ፣ ምጥ ሊፈጠር ይችላል።',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'በሰውነትሽ ላይ ምን አይነት ለውጥ ይታያል?',
                          content:
                              'ልጅዎ የሚወለድበት ጊዜ እየተቃረበ ሲሄድ, እርስዎ የሚያስተዋውቋቸው አንዳንድ ነገሮች እዚህ አሉ: ቆዳዎ እና ጅማቶችዎ የሚያድግ ልጅዎን ለማስተናገድ መለጠጣቸውን ይቀጥላሉ. በቀላሉ ይደክማሉ, እና መተኛት የበለጠ አስቸጋሪ ይሆናል. ህፃኑ በሆድዎ ውስጥ ሲያድግ የልብ ህመም እና ወይም የመተንፈስ ስሜት ይሰማዎታል።\n'
                              'እነዚህ ሁሉ የመደበኛ እርግዝና አካል ሲሆኑ፣ ምቾትን ለመቀነስ እርምጃዎችን መውሰድ ይችላሉ። ጥቆማዎችን ለማግኘት ከሐኪምዎ ወይም ከአዋላጅዎ ጋር ይነጋገሩ፣ በተለይ በህመም ላይ ከሆኑ። ይህ የመጀመሪያ ልጅዎ ከሆነ፣ ልጅዎ ወደ ዳሌዎ የበለጠ ወደታች መሄዱን ወደ 36 ሳምንታት አካባቢ ሊያስተውሉ ይችላሉ። ይህ ብዙውን ጊዜ ህፃኑ ታጭቷል ወይም ጥሏል ተብሎ ይጠራል። ከጎድን አጥንትዎ አጠገብ ብዙ ክፍል ይመለከታሉ እና መተንፈስ ቀላል ይሆናል, ነገር ግን ይህ በፊኛዎ ላይ ተጨማሪ ጫና ይጨምራል (ወደ መጸዳጃ ቤት ተጨማሪ ጉዞዎች ማለት ነው).\n'
                              'በዚህ ሶስት ወር የመጨረሻዎቹ ጥቂት ሳምንታት ውስጥ ሰውነትዎ ለሚመጣው የጉልበት ሥራ መዘጋጀት ይጀምራል. የማኅጸን ጫፍ ማለስለስ ይጀምራል, እና ብዙ ሴቶች ሾው ያስተውላሉ. ሾው በእርግዝና ወቅት በማህፀን ጫፍ ውስጥ የተቀመጠው የ mucous plug መውጣቱ ነው, እና ምጥዎ በቅርቡ እንደሚጀምር የመጀመሪያ ምልክት ነው.',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: ' ምን አይነት ስመት ይሰማሳል ?',
                          content:
                              'በዚህ የእርግዝና የመጨረሻ ደረጃ ላይ ስለ ምጥ እና ስለ መወለድ ወይም እንደ ወላጅነት እንዴት እንደሚተዳደር ሊጨነቁ ወይም ሊጨነቁ ይችላሉ. በአልጋ ላይ ምቾት ለማግኘት መቸገር እና መጸዳጃ ቤት አዘውትሮ መጎብኘት ደካማ እንቅልፍ ማለት ሊሆን ይችላል ይህም በአንዳንድ ሰዎች ላይ ብስጭት እና ዝቅተኛ ስሜት እንደሚቀሰቅስ ይታወቃል።\n'
                              'ምንም እንኳን አብዛኛዎቹ ነፍሰ ጡር ሴቶች የሶስተኛውን ወር ሶስት ጊዜ እንደ አስደሳች ጊዜ ቢያዩትም እና ስለሚቀጥለው ደረጃ አዎንታዊ ስሜት ቢሰማቸውም ከ 5 ሰዎች አንዱ በቅድመ ወሊድ ጭንቀት ወይም ድብርት ያጋጥመዋል። እርስዎ (ወይም አጋርዎ) የሚሰማዎት እንደዚህ ከሆነ አስቀድመው እርዳታ ይፈልጉ።',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: ' የጽንሱ ሁነታ ምን ይመስላል  ?',
                          content:
                              'በ31 ሳምንታት ውስጥ፣ የልጅዎ ሳንባዎች የበለጠ የበሰሉ ናቸው፣ ነገር ግን ከወለዱ በኋላ እንዲተነፍሱ የሚረዳውን ሰርፋክታንት ማምረት አይችሉም።\n'
                              'በ 36 ሳምንታት ውስጥ, የልጅዎ ርዝመት 47 ሴ.ሜ እና 2.6 ኪ.ግ ይመዝናል. በዚህ ጊዜ የልጅዎ ጭንቅላት ወደ ዳሌዎ መንቀሳቀስ ሊጀምር ወይም ለመውለድ ሊዘጋጅ ይችላል። ከ 25 ህጻናት አንዱ ሲወለድ ከመደበኛው የጭንቅላት ዝቅታ ይልቅ ብርቅ ቦታ ላይ ይሆናል። የእርስዎ ጉዳይ ይህ ከሆነ፣ ዶክተርዎ ወይም አዋላጅዎ ይህ ለጉልበትዎ ምን ማለት እንደሆነ፣ አማራጮችዎ ምን እንደሆኑ እና ልጅዎ እንዴት እንደሚወለድ ይወያያሉ።\n'
                              ' በ 40 ሳምንታት ውስጥ, ልጅዎ 50 ሴ.ሜ እና 3.4 ኪ.ግ ይመዝናል. በእድገት ረገድ, ልጅዎ አሁን ለመወለድ ዝግጁ ነው.\n',
                        ),
                        Divider(),
                        CollapsibleSection(
                            title: 'ከሐኪምሽና ከአዋላጅስ ምን ይጠበቃል?',
                            content:
                                'በሦስተኛው ወር ሶስት ወራት ውስጥ በተደጋጋሚ የቅድመ ወሊድ ምርመራዎች ታደርጋላችሁ፡ በየ 4 ሳምንቱ እስከ 36 ሳምንታት፣ ከዚያም በየ2 ሳምንቱ ከዚያ በኋላ። እስካሁን ያላገኛቸው ከሆነ የሚከተለው ሊቀርብ ይችላል፡-\n'
                                'የእርግዝና የስኳር በሽታ ምርመራ\n'
                                'ደረቅ ሳል (ፐርቱሲስ) ክትባት\n'
                                'የጉንፋን (ኢንፍሉዌንዛ) ክትባት\n'),
                        Divider(),
                        CollapsibleSection(
                          title:
                              'በ3ኛው ትሪሜስተር ውስጥ ሌሎች የጤና \n''ምርመራዎች የሚከተሉት ናቸው -:',
                          content: 'ወደ ሶስተኛው ወር ውስጥ ሲገቡ የሚከተሉትን አይርሱ-\n'
                              ' -የሆስፒታል ቦርሳ ያዙ\n'
                              ' -የሆስፒታል/የወሊድ ማእከል ጉብኝት ያስይዙ\n'
                              '-በአግባቡ የተገጠመ የመኪና መቀመጫ ያዘጋጁ (ልጅዎን ወደ ቤት ለማምጣት)\n'
                              '-ልጃችሁን ወደ ቤት ስታመጡ ምን እንደሚፈልጉ አስቡ - ምን ይገዛሉ፣ ከቤተሰብ ወይም ከጓደኞች መበደር ይችላሉ?\n'
                              '-የእርግዝና ዜናዎን ከአሰሪዎ ጋር ለመጋራት ጥሩ ጊዜ መቼ ነው?\n'
                              '- ወደ ፊት መግዛትን ያስቡ - በተለይ ሊበላሹ የማይችሉ ዋና ዋና ምግቦች (የታሸጉ ምግቦች፣ የመታጠቢያ ቤት ምርቶች፣ ወዘተ.)\n'
                              '-በሶስተኛው ወር ሶስት ወር ውስጥ ሁለት ክፍሎችን አብስሉ እና ህጻኑ ከተወለደ በኋላ ነገሮች ሲጨናነቁ ማቀዝቀዣዎን ይጫኑ',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'ጤናማ ሆነሽ መኖር እንዴት ትችያለሽ?',
                          content:
                              'ለልጅዎ ጤናማ ጅምር ለመስጠት በእርግዝና ወቅት ጤናማ ምግቦችን መመገብ አስፈላጊ ነው. አመጋገብዎ የተለያዩ እና ትኩስ አትክልትና ፍራፍሬ እንዲሁም የፕሮቲን፣ የብረት እና የካልሲየም ምንጮችን ያካተተ መሆኑን ያረጋግጡ። ብዙ ውሃ መጠጣትንም አትርሳ.\n'
                              '  የክብደት መጨመር የተለመደ የእርግዝና አካል ሲሆን አብዛኞቹ ሴቶች ከ11 እስከ 16 ኪሎ ግራም ሊጨምሩ ይችላሉ። የእርግዝና ክብደት መጨመር ማስያ በሦስተኛው ወር ሶስት ወር ውስጥ የክብደት መጨመርን ለመከታተል ጠቃሚ መሳሪያ ሊሆን ይችላል.\n'
                              ' በእርግዝና ወቅት ንቁ ሆነው ለመቆየት ይሞክሩ - በሦስተኛው ወርዎ ውስጥ እንኳን. ወደ የመውለጃ ቀንዎ ሲቃረቡ ደህንነቱ በተጠበቀ እና ረጋ ያለ የአካል ብቃት እንቅስቃሴ ማድረግ አስፈላጊ ቢሆንም፣ ያለችግር እርጉዝ እናቶች ጤናማ የአኗኗር ዘይቤ አካል ሆነው በመደበኛ የአካል ብቃት እንቅስቃሴ እንዲሳተፉ ምክሮች ይገልጻሉ።',
                        )

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
                  MaterialPageRoute(builder: (context) => TrimisterPage()),
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
                  fontSize: 16,
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
