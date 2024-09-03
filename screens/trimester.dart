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
      title: 'የመጀመሪያው ሦስት ጊዜ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Trimester1Page(),
    );
  }
}

class Trimester1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ትሪሚስተር 1',
         style: TextStyle(
                     fontFamily: 'Abyssinica SIL',
                    ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              title: Text(
                'የመጀመሪያዉ ወር የእርግዝና ጊዜ',
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
                          'በህክምና እርግዝና የሚቆጠረው ለመጨረሻ ጊዜ የወር አበባ ማየት ከጀመርሽበት ቀን አንስቶ ሲሆን የምትወልጂበት ቀንም ከዚህ ቀን አንስቶ ከ 40 ሳምንት በኋላ ይሆናል። ይህ የሚደረገው እርግዝና የሚፈጠርበት ትክክለኛው ቀን ስለማይታወቅና ቀኑም እንደየሰዉ ስለሚለያይ ነው።ይህም ማለት በመጀመርያው የእርግዝና ወር የመጀመርያ ሁለት ሳምንታት ገና እርግዝና አልተፈጠረም እንደማለት ነው።\n\n'' በየ 28 ቀን ውስጥ የወር አበባ የምታይ ሴት ወሩ በገባ ከ 9-21 የማርገዝ እድል ይኖራታል። በአብዛኛው ጊዜ ግን በወሩ አጋማሽ ይሆናል ተብሎ ይጠበቃል። በዚህም መሰረት የዘር መቋጠሪያሽ የሴት ዘር ይለቃል። ይህ በሆነ በ 24 ሰአት ውስጥ ግብረስጋ ግንኙነት ካደረግሽና የወንድ ዘር ካገኘ ወደ ፅንስነት ይቀየራል። \n\n''ይህ ወር ታድያ እርግዝና የሚፈጠርበት እንጂ እርጉዝ መሆንሽን የምታቂበት ጊዜ አይደለም። ለመውለድ አቅደሽ ግብረስጋ ግንኙነት አርገሽ ከሆነ ግን እርግዝና መከሰቱን አስመልክቶ ሊታዩ የሚችሉ ለውጦችን መከታተል ትችያለሽ። ሆኖም እርግዝና እርግጠኛ የሚሆነው በምርመራ ሲሆን የወር አበባሽ ከቀረ ከ 5 ቀናት በኋላ በሽንት ምርመራ መለየት ይቻላል።\n'
                          'ስለ ፅንሱ\n\n'
                          'እርግዝና ለመፈጠር የሴት ዘር በተለቀቀ በ 24 ሰአት ውስጥ የወንድ ዘር ማግኘት አለበት። ይህ ሲሆን ፅንስ ይፈጠራል። የወንዱ ዘር ኤክስ (X) ከሆነ ሴት ዋይ (Y) ከሆነ ወንድ ልጅ ይፀነሳል። \n\n''ፅንስ የሚፈጠረው በሴት የዘር ትቦ ውስጥ ሲሆን ወደ ማህፀን ለመድረስ ከ 3-4 ቀን ይፈጅበታል። በዚህም ጉዞ ከ 1 ወደ 16 ህዋስ ይባዛል። ማህፀን ከደረሰ 1 ወይ 2 ቀናት በኋላ ከማህፀን ጋር ይጣበቃል በዛውም እድገቱን ይጀምራል። በዚህ ሰአት ፅንሱ ሽል ሲባል ወደፊት ሲያድግ ወደሰውነቱ፣ እንግዴ ልጅና የእንሽርት ውሃ የሚቀየሩ ህዋሶችን የያዘ ይሆናል። \n\n''የእንግዴ ልጅ ህዋሱ ኤች ሲ ጂ (HCG) የሚባል ሆርሞን በመልቀቅ የዘር ትቦው ሌላ እንቁላል እንዳይለቅና የእርግዝና ሆርሞኖች እንዲለቀቁ ያደርጋል።እነዚህ የእርግዝና ሆርሞኖች (Estrogen and Progesterone) የማህፀን ግድግዳ እንዳይፈርስና የወር አበባ እንዳይመጣ ይከላከላሉ። \n''ኤች ሲ ጂ (HCG) ከዛም ባለፈ በሽንት ምርመራ ጊዜ እርግዝናን ለማወቅ ይረዳል። የእንግዴ ልጁ ዝግጁ እስኪሆን ድረስ ምግብና አየር በጥቃቅን ትቦዎች ይቀበላል። በወሩ መጨረሻ ግን የእንግዴ ልጁ ይህን ስራ ተረክቦ ለተቀሩት 8 ወራት ምግብና አየርን በእትብቱ በኩል ያመላልሳል።\n\n'' ከ 4ኛው ሳምንት ጀምሮ በተከታታይ 10 ሳምንታት ውስጥ የልጅሽ አካላቶች በሙሉ ተሰርተው ሲያልቁ አንዳንዶቹ ስራም ይጀምራሉ። ይህ ጊዜ ለልጅሽ እድገት መሰረታዊ ጊዜ ነውና ለምታደርጊው፣ ለምትበይውም ሆነ ለምትጠጪው ነገር ጥንቃቄ ያስፈልጋል። በወሩ መጨረሻ ጥቁር አዝሙድ ያክላል።',
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
                'የሁለተው ወር የእርግዝና ጊዜ ',
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
                          'ይህ ወር እንደገባ የእርግዝና ምልክቶችን ማስተዋል ትጀምርያለሽ። የወር አበባሽ ሲቀርም በምርመራ  ማረጋገጥሽ አይቀርም። \n''ታድያ እርጉዝ መሆንሽን እንዳወቅሽ የቅድመ ወሊድ ክትትል መጀመር ይኖርብሻል። በተጨማሪም ስለምትበያቸው ምግቦች፤ ስለምትጠጫቸው መጠጦች፤ ስለምትወስጅው መዳኒትና ስለምታደርጊው እንቅስቃሴ ማሰብ ይኖርብሻል። \n''እርግዝና በሚል እርእስ ውስጥ ያስቀመጥነውን መረጃ በደንብ ማንበብና እስክትወልጂ ድረስ መተግበር ይኖርብሻል። ስለ ቅድመ ወሊድ ክትትል ያሰፈርነው መረጃም በያንዳንዱ የህክ ምና ቀጠሮ ላይ ዝግጁ እንድትሆኚ ስለሚረዳ ብታነቢው ይመከራል። \n'
                          'እርግዝና ከተፈጠረ በኋላ መጠነኛ የደም መፍሰስ ሊኖር ይችላል። አብዛኛውን ጊዜ ችግር የሚያመጣ ባይሆንም የውርጃ ወይም የእንግዴ ልጅ ችግርን ሊያመላክት ስለሚችል ምንም አይነት ደም መፍሰስ ካለ ሃኪም ማማከር ይኖርብሻል። \n''በእርግዝና ሰአት ሊታዩ የሚችሉ አደገኛ ምልክቶችን ማወቅ ባፋጣኝ የጤና እርዳታ እንድታገኚና ጉዳት ሳይደርስ ችግሩ መፍትሄ እንዲሰጠው ስለሚረዳ አደገኛ ምልክቶችን እንደራስሽ ስም ማወቅ ይጠበቅብሻል።\n'' የመጀመርያው ሶስት ወር አስቸጋሪው ወር ሊሆንብሽ ይችላል። ይህም ከእርግዝና ጋር ተያይዘው በሚመጡ ምልክቶች የተነሳ ነው። በተለይ ማቅለሽለሽ ሲበዛም ማስታወክ ምግብ እንዳትበይ በማድረግ ሊያዳክምሽ ይችላል። \n''የፅንሱ ፈጣን እድገትም በራሱ ድካምንና ቶሎ ቶሎ መሽናትን ያስከትላል።\n'
                          'ስለ ፅንሱ\n\n'
                          'በዚህ ወር መጨረሻ ልጅሽ የሚያስፈልጋት የሰውነት አካል በሙሉ ማደግ ይጀምራል። አይምሮ፣ እጅና እግር፣ አይንና አፍንጫ፣ ሳንባና ልብ፣ ኩላሊትና ጉበት ... ሁሉም የሰውነት ክፍል ሲኖራት ሁሉም ግን በበቂ ሁኔታ ለማደግ ጊዜ ያስፈልጋቸዋል። በተለይ አይምሮና ሳምባ እስከሚወለዱበት ቀን ድረስ እድገታቸው የሚቀጥል ይሆናል።\n'' አሁን ባላት አቋም ጭንቅላቷ ትልቁን ቦታ ሲወስድ ከጭንቅላቷ በታች ያሉት የሰውነት ክፍሎች በመጠን ያንሳሉ። ይህ እያደገች ስትመጣ የሚስተካከል ይሆናል። አይኗ አፍንጫዋና ጆሮዋ ወጣ ብለው ባይታዩም ቦታው ላይ የማደግ ምልክት ማሳየት ይጀምራሉ። እጅና እግሯም ጣቶች ቢኖሯቸውም የተያያዙ በመሆናቸው በደንብ ተለይተው አይታዩም። \n''ግር ሊያሰኝ የሚችልም ጭራ መሳይ አካል ይኖራታል። ይህም እያደገች ስትሄድ የሚጠፋ ነው።\n'' ከሁሉም አስቀድሞ ስራ የሚጀምረው ልቧ ሲሆን በዚህ ሰአት በደቂቃ ከ 100 እስከ 160 ጊዜ ድረስ ይመታል ያንቺን የልብ ምት እጥፍ እንደማለት ነው። ይህን የልብ ምት ድምፅ በሚቀጥለው ወር በሚኖርሽ የአልትራ ሳውንድ ምርመራ ጊዜ የምትሰሚው ይሆናል። ልጅሽ በአፋጣኝ የምታድግበት ጊዜ በመሆኑ የተመጣጠነ ምግብ መመገብ ይኖርብሻል። በወሩ መጨረሻ በአይን ብትታይ ቦሎቄ ታክላለች ።',
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
                'የሶስተኛው ወር የእርግዝና ጊዜ ',
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
                          'በዚህ ወር በምታረጊው የቅድመ ወሊድ ክትትል ቀጠሮ ላይ እንደ እናት ማሰብ እንድትጀምሪ ከሚያረጉሽ ነገሮች አንዱ የልጅሽን የልብ ድምፅ በአልትራ ሳውንድ ምርመራ ጊዜ ማዳመጥ መቻልሽ ነው። በፍጥነት የሚመታ ጠንካራ የከበሮ ምት ሊመስልሽ ይችላል – ይህ በሂዎትሽ ከሰማሻቸው ድምፆች በሙሉ ውብ የሆነው ድምፅ ነው። \n''አሁን እርግዝናሽ እርግጥ ከመሆንም አልፎ አስጊ የሚባለዉን ጊዜ አልፈሽዋል። ይህ ማለት 3 ወር ከሞላሽ ፅንሱ የመውረድ እድሉ በጣም አናሳ ነው። ከፈለግሽ አሁን የእርግዝናሽን ዜና ለቤተሰብና ለወዳጅ ዘመድ ማካፈል ትችያለሽ። \n''እርግዝናሽ እርግጥ ሲሆን ስለገንዘብ አያያዝሽ ማሰብ መጀመር አለብሽ ግን ጭንቀት ውስጥ ሊከትሽ አይገባም። ጭንቀትሽን የሚያቀልልሽ ከሆነ አንዳንድ አስፈላጊ ነገሮችን ቀስ በቀስ መግዛት መጀመር ትችያለሽ። በመውለጃሽ ሰአት ሁሉንም በአንዴ ከመግዛት የተሻለም ነው። \n'
                          'የመጀመርያዎቹ ሶስት ወራቶች እየተጠናቀቁ በመሆኑ የድሮ ማንነትሽ ሊመለስ ይችላል። ሆኖም ሆርሞኖች ስሜታዊና አካላዊ ለውጦችን ያመጣሉ። ራስ ምታት፣ የፀባይ መለዋወጥ፣ ማቅለሽለሽና ድካም የተለመዱ ናቸው። \n''የምግብ አምሮትና ቶሎ ቶሎ መሽናት ይህን ወር ጨምሮ ወደፊትም እየተጠናከሩ ይሄዳሉ። ቃርና የሆድ ድርቀትም በዚህ ወር ከሚታዩ የእርግዝና ምልክቶች ውስጥ ይገኛሉ።\n'' የምግብ አምሮትሽ ከምግብ ነገሮች ውጪ ለምሳሌ እንደ አፈር መብላት ከሆነ ሀኪምሽን አማክሪ። \n''በዚህ ወር እስከ 2 ኪሎ ልትጨምሪ ትችያለሽ። ዳሌሽ ቢሰፋም እርጉዝ የመምሰል እድልሽ በጣም ጠባብ ነው የእርጉዝ ልብስ መልበስ ላይም አያደርስም። \n''እርግዝናሽ ተጀምሮ እስቂያልቅ ድረስ እንቅስቃሴ ማድረግ በጣም አስፈላጊ ነው። እንቅስቃሴ ማድረግ ሰውነትሽ ፅንሱን የመሸከም ጥንካሬ እንዲኖረው፤ ምጥን ለማቅለልና ከወሊድ በኋላ ቶሎ ክብደት እንድትቀንሺ ለማድረግ ይረዳል።'
                          'ስለ ፅንሱ\n'
                          ' አሁን የልጅሽ አጥንት መጠንከር ስለሚጀምር ካልሲየም ያለው ምግብ ኣዘውትሪ ወተት እርጎ የመሳሰሉትን። \n''በወሩ መጨረሻ ከባለፈው ወር ሲነፃፀር የተሻለ ሰው ይመስላል እጁ፣ እግሩ፣ ጣቶቹና የፊቱ ገፅታው በተሻለ ቦታቸውን ይይዛሉ። \n''ሰውነቱ በፍጥነት እያደገ መሆኑ ከጭንቅላቱ ጋር ያለውን የመጠን ልዩነት ያጠበዋል። ጆሮውና አፍንጫውም ወደ ውጪ መብቀል ጀምሯል። አይኑ ሙሉ ለሙሉ ቢኖርም እስከ 27 ሳምንት ድረስ እንደተከደነ ይቆያል። \n''ሁለተኛው ወር ላይ የነበረውም ጭራ መሳይ አካል ይጠፋል። ንቁ በመሆን ለነገሮች መልስ መመለስ ይጀምራል። ለምሳሌ በእጅሽ ሆድሽን ብታሻሺ ወደ እጅሽ ይጠጋል። እጅና እግሩን ማንቀሳቀስ ቢጀምርም ላንቺ እስኪታወቅሽ ድረስ ግን ጊዜ ይወስዳል። \n''ወንድም ሆነ ሴት ፆታዊ አካላቸው የተሰራ ሲሆን በበቂ ሁኔታ አድጎ ለመታየት ግን ሌላ 2 ወር ያስፈልገዋል። ሴት ከሆነች የዘር እንቁላሏ ካሁኑ ዝግጁ ይሆናል ብዛቱም እስከ 1.2 ሚሊዮን ይሆናል። እትብቱ ውስጥ ማደግ የጀመረው ሆድቃ ወደ ሆዱ ይገባል። ኩላሊቱ፣ አንጀቱ፣ አይምሮውና ጉበቱ ስራቸውን ቢጀምሩም ማደጋቸውን ግን ይቀጥላሉ። ስርአተ ማጣሪያው መስራት በመጀመሩም ሽንት ይሸናል። ይህ ሽንት ወደ እንሽርት ውሃው ሲሆን የ ሚገባው የእንግዴ ልጁ አደጋን እንዳይፈጥር ሽንቱን መልሶ ያጣራል። ከ 28 እስከ 30 ግራም ይመዝናል 4 ሴንቲ ሜተር ይረዝማል በአይን ቢታይ የአተር ፍሬ ያክላል',
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
                          'የመጀመሪያዎቹ ሦስት ወራት የእርግዝና ጊዜ ማጠቃለያ ',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Abyssinica SIL',
                          ),
                        ),
                        SizedBox(height: 14),
                        Text(
                          'ነፍሰጡር እንደሆንሽ ከተሰማሽ ቅጽበት አንስቶ ምናልባት በከፍተኛ ስሜት ልትሞዪ ትችያለሽ ፤ ምናልባትም ብዙ ጥያቄዎችም ሳይጎርፉብሽ አይቀርም ። የመጀመሪያው የሦስት ወር እርግዝና ለአንቺም ሆነ ለልጅሽ ብዙ ለውጦች ቢሞሉም ብዙዎቹ ግን በውጪው ዓለም አይታዩም። በሰውነትሽ ላይ ምን እንደሚከሰትና ጤናማ ሆነሽ መኖር የምትችይው እንዴት እንደሆነ ለማወቅ ከታች ያስቀመጥንልሽን አንብቢ',
                          style: TextStyle(
                              fontSize: 16, fontFamily: 'Abyssinica SIL'),
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'የመጀመርያው የእርግዝና ጊዜ.',
                          content:
                              'የሙሉ ጊዜ እርግዝና ወደ 9 ወራት አካባቢ የሚቆይ ሲሆን  አብዛኛዎቹ ሰዎች (ሃኪሞች እና አዋላጆች ጨምሮ) ይህንን በ 3 trimesters ይከፋፈላሉ። ምንም እንኳን ከፀነስሽበት ጊዜ ጀምሮ እርጉዝ ብትሆኚም - የወንድ የዘር ፍሬ  (እንቁላል) ሲያዳብር - የእርግዝና የመጀመሪያ ወር ሶስት ወር ከወር አበባሽ የመጀመሪያ ቀን ጀምሮ እስከ 12 ኛው ሳምንት ድረስ ይቆጠራል. ምክንያቱም በተፈጥሮ የፀነሱ አብዛኛዎቹ ሴቶች የፀነሱበትን ቀን አያውቁም. ትሪሚስተር ስለ እርግዝና ለማሰብ ጠቃሚ መንገድ ነው ምክንያቱም በአንቺና እና በልጅሽ ላይ የሚደርሱ ለውጦች በ 3 ሰፊ ምድቦች ውስጥ ይካተታሉ እነዚህም የመጀመሪያ ፣ ሁለተኛ እና ሶስተኛ የእርግዝና ጊዜ በመባል ።.',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'በሰውነትሽ ላይ ምን አይነት ለውጥ ይታያል?',
                          content:
                              'ለአንዳንድ ሴቶች, የመጀመሪያው የእርግዝና ጊዜ(ከ0 እስከ 3ኛው ወር) በማቅለሽለሽ (ብዙውን ጊዜ "የማለዳ ህመም" ይባላል, ይህም በቀንም ሆነ በማታ በማንኛውም ጊዜ ሊከሰት ይችላል). ነገር ግን እያንዳንዱ እርግዝና የተለየ እንደሆነ እና አንዳንድ ሴቶች የምግብ ፍላጎት ሲኖራቸው, ሌሎች ደግሞ የምግብ ጥላቻ ያጋጥማቸዋል አንዳንዶቹ ደግሞ የምግብ ፍላጎት ምንም ለውጥ የላቸውም. በመጀመሪያው የእርግዝና ጊዜ ውስጥ ከሚታዩት ሌሎች ለውጦች በጡትሽ ላይ የሚታዩ ለውጦች ዉስጥ ለስላሳ፣ ትልቅ እና ክብደት ሲሆኑ፣ ማህፀንሽ ሲያድግ እና ፊኛሽ ላይ ጫና ስለሚፈጥር ብዙ ጊዜ መሽናት እና ሽንት አለመቋጠር ያስፈልግዎታል።.',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: ' ምን አይነት ስመት ይሰማሳል ?',
                          content:
                              'በመጀመሪያው የእርግዝና ጊዘ ውስጥ የተለያዩ ስሜቶች የሚሰሙሽ ይሆናል ። በሆርሞን ላይ የሚከሰቱ ለውጦች የስሜት መረበሽ ወይም መበሳጨት ሊታዩብሽ ይችላሉ፤ እንዲሁም ገና በለጋ ወራት ድካም የተለመደ ነገር ነው። እንዲህ ዓይነቱ ስሜት የተለመደ ነው፤ ስለዚህ ከትዳር ጓደኛሽ ወይም ከቅርብ ጓደኛሽ ጋር ምን እንደሚሰማሽ ብትወያዪ ይመከራል ሁኔታዎቹ በጣም ከተደጋገሙብሽ ሐኪም ወይም አዋላጅ ብታማክሪ ጥሩ ነው ።',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: ' የጽንሱ ሁነታ ምን ይመስላል  ?',
                          content:
                              'በመጀመሪያው የእርግዝና ጊዘ ውስጥ ልጅሽ የዳበረ እንቁላሊት ሆኖ በ12 ሳምንት ውስጥ 6 ሴንቲ ሜትር ርዝመት ያለው ሽል ይደርሳል። በመጀመርያው ትሪሜስተር መጨረሻ ላይ የህፃንዎን ልብ በስርዐት መምታት ጀምሯል በተጨማሪም አንጎሉ፣ ሆዱ እና አንጀቱ እየዳበረ ይመጣል እጆቹና እግሮቹ ማደግ የሚጀምሩባቸው "ቡድ" በመባል የሚታወቁ ጥቃቅን ጉብታዎች አሉ።',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'ከሐኪምሽና ከአዋላጅስ ምን ይጠበቃል?',
                          content:
                              'የቅድመ ወሊድ (የእርግዝና) የጤና ምርመራ ከጠቅላላ ሐኪምሽ፣ አዋላጅሽ ወይም ከማህፀን ሐኪም ጋር ሊሆን ይችላል፣ በምትወልጂበየ ቦታ ላይ መሰረት የሚያደርግ ስለሆነ ማተት ነው። በመጀመሪያ የቅድመ ወሊድ የጤና ምርመራ ወቅት እርግዝናሽ በሽንት ወይም በደም ምርመራ ሊረጋገጥ ይችላል። እነዚህ ከቤት የእርግዝና ማረጋገጫ ሙከራዎች የበለጠ አስተማማኝ ናቸው. የመጀመርያ ትሪሜስተር የቅድመ ወሊድ ጤና ምርመራዎች ብዙውን ጊዜ በየ 4 እና 6 ሳምንታት ይከናወናሉ, ነገር ግን ይህ በጤንነትሽ እና በልጅሽ እድገት ላይ በመመስረት ሊለያይ ይችላል. ብዙ ሴቶች በ12 ሳምንታት አካባቢ የአልትራሳውንድ ምርመራ ይደረግላቸዋል - በዚህ ቅኝት የሕፃኑን የልብ ምት ሊሰሙ ይችላሉ። ይህ አልትራሳውንድ በተጨማሪ ብዙ ልደት (ለምሳሌ መንትዮች) እየወለዱ እንደሆነ ያሳያል እና የሕፃኑን መጠን እና የሚደርስበትን ቀን ለመገመትም ይረዳል ።',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title:
                              'በመጀመሪያው ትሪሜስተር ውስጥ ሌሎች የጤና \n''ምርመራዎች የሚከተሉት ናቸው -:',
                          content:
                              '- የሽንት ኢንፌክሽን ለመለየት የሽንት ምርመራዎችን ማድረግ የተለመደ ነገር ግን ሊታከም የሚችል ህክምና ካልተደረገለት የቅድመ ወሊድ ምጥ እንዲፈጠር ሊያደርግ የሚችል የጤና እክል ነው በመሆኑም ተገቢዉን ምርመራ ማድረግ ይኖርብሳል ።\n'
                              '- ከእርግዝና ጋር ተያያዥነት ያላቸው በሽታዎች ማለትም የደም አይነትሽን፣ በሰዉነትሽ ዉስጥ የሚገኘው የአይረንን መጠንሽን፣የደም ስኳርሽን ለጂስቴሽናል የስኳር በሽታ፣የኩፍኝ በሽታ የመከላከል አቅምን እና ሌሎች እንደ ኤችአይቪ፣ሄፓታይተስ ቢ እና ቂጥኝ ያሉ ኢንፌክሽኖችን ለመመርመር የደም ምርመራዎችን ማድረግ አስፈላጊ ነው ።\n'
                              '- አጠቃላይ የእናቶች ጤና እና ደህንነት ምርመራዎች ስለ እርግዝናዎ ወይም ስለ አጠቃላይ ጤናሽ ሊያጋጥሙሽ ስለሚችሉት ስጋቶች ውይይት እና በእርግዝና ወቅት ደህንነትን ለማረጋገጥ የመድኃኒት አወሳሰድን ጨምሮ በሚገባ መከታተል ይኖርብሻል ።',
                        ),
                        Divider(),
                        CollapsibleSection(
                          title: 'ጤናማ ሆነሽ መኖር እንዴት ትችያለሽ?',
                          content:
                              'በእርግዝና ወቅት ጤናን መጠበቅ በጣም አስፈላጊ ነው. ሲጋራና እንዲሁም ሌሎች ነገሮችን የምታጭሺ ከሆን ለልጅሽ ጤንነት ስትይ የግድ ማቆም ይኖርብሻል። \n'
                              'በእርግዝና ወቅት ምንም አይነት አልኮል አለመጠጣት በጥብቅ ይመከራል  ምክንያቱም ዝቅተኛ ደረጃ መጠጣት በተለይም በእርግዝና የመጀመሪያ ሶስት ወራት ውስጥ በልጅዎ ላይ የረዥም ጊዜ አሉታዊ ተጽዕኖ ሊያሳድር ይችላል።\n'
                              'በእርግዝና ወቅት የተለያዩ የተመጣጠኑ ምግቦችን መመገብ ይኖርብሻል ምክንያቱም ይህ የልጅሽን የአመጋገብ ፍላጎቶች ለማሟላት ይረዳል, እንዲሁም የራስሽን. በመጀመሪያዎቹ ሶስት ወራት ውስጥ ለመመገብ የሚፈልጉት የምግብ መጠን ከወትሮው ብዙም ባይጨምርም, አንዳንድ ተጨማሪ ንጥረ ነገሮችን ሊያስፈልጉሽ ይችላሉ. አብዛኛዎቹ ሴቶች ፎሊክ አሲድ እና አዮዲን ተጨማሪዎች ያስፈልጋቸዋል ምክንያቱም እነዚህን ከምግብ ብቻ ማግኘት አስቸጋሪ ነው ። \n'
                              'ለአንቺ እና ለልጅሽ ብዙ ጥቅሞች ስላሉት በእርግዝና ወቅት መደበኛ የአካል ብቃት እንቅስቃሴን ማድረግ አስፈላጊ ነው ። \n'
                              'በመጨረሻም ምንም አይነት እንግዳ ነገር ወይም ምቾት አልባነት ወይም ግር የሚያሰኝ ነገር ካጋተመሽ ሐኪምሽን ወይም አዋላጅሽን እንድታማክሪ አደራ እያልን የመጀመርያዎችሁ ሶስቱ ወራት በዚህ መልኩ አጠናቀቅን ።',
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
                  MaterialPageRoute(builder: (context) => Trimester1Page()),
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
