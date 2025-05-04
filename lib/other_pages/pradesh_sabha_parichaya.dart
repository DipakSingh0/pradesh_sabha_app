import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/my_appbar.dart';
import 'package:pradesh_app/screen2/widgets/image_slider.dart';

class PradeshSabhaBaithak extends StatefulWidget {
  const PradeshSabhaBaithak({super.key});

  @override
  State<PradeshSabhaBaithak> createState() => PradeshSabhaBaithakScreenState();
}

class PradeshSabhaBaithakScreenState extends State<PradeshSabhaBaithak> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: 'प्रदेश सभा सदस्य\nजनकपुरधाम, धनुषा, नेपाल',
          leading: Image.asset(
            'assets/icons/icon2.png',
          ),
          backgroundColor: Colors.red,
          centerTitle: false,
        ),
        body: Column(
          children: [
            // const SizedBox(
            //   height: 25,
            // ),
            // ImageSlider works here inside Column directly
            Expanded(flex: 2, child: ImageSlider()),

            // Now wrap the rest inside Expanded too
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // const CircleAvatar(
                        //   radius: 24,
                        //   backgroundColor: Colors.grey,
                        //   child:
                        //       Icon(Icons.account_balance, color: Colors.white),
                        // ),
                        // const SizedBox(width: 12),
                        const Text(
                          'प्रदेश सभा परिचय',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: redcolor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'परिचय',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'नेपालको राज्यशक्तिको प्रयोग संघ, प्रदेश र स्थानीय तहले गर्ने संवैधानिक व्यवस्था भए अनुसार तथा प्रदेशसभा गठन पछि २०७४/१०/१७ मा "प्रदेश नं २" मा महानगर पालिकाबाट वीरगञ्ज सभा हल मा पहिलो बैठक (अर्थात् हालको "मधेश प्रदेश" सभा) को उद्घाटन भएको थियो। यस प्रदेशको नाम "मधेश प्रदेश" राख्ने सम्बन्धी निर्णय २०७८ माघ १७ गते गरिएको हो। यस प्रदेशको राजधानी जनकपुरधाम तोक्ने निर्णय पनि यही मिति मा गरिएको हो।',
                              textAlign: TextAlign.justify,
                            ),
                            SizedBox(height: 12),
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 24.0), // ~38px indent
                              child: Text(
                                'मधेश प्रदेश सभामा ६४ निर्वाचन क्षेत्रहरू मध्ये प्रत्यक्ष निर्वाचित ३२ र समानुपातिक निर्वाचित ३२ गरी जम्मा ६४ जना सदस्यहरू रहेका छन्। प्रदेशसभाले नेपालको संविधानको अधीनमा रही कानून निर्माण गर्ने कार्य गर्दछ र यस प्रदेशको कार्यपालिका, व्यवस्थापिका तथा न्यायपालिका सम्बन्धी कानुनी ढाँचाहरू यही प्रणालीमार्फत सञ्चालनमा ल्याइन्छ।',
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'नेपालको संविधानले प्रत्येक प्रदेशलाई राजशक्तिको प्रयोग गर्न दिने प्रावधान गरेको छ। यस अन्तर्गत प्रदेश सरकार गठन, मन्त्री परिषद् गठन, कानून निर्माण, आर्थिक नीति निर्माण, बजेट निर्माण, नीति तथा कार्यक्रम निर्माण लगायतका कार्यहरू सम्पादन गर्न सकिन्छ। ',
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
