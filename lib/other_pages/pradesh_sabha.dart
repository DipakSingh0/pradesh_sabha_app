import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/custom_list.dart';
import 'package:pradesh_app/common/my_appbar.dart';
import 'package:pradesh_app/screen2/widgets/image_slider.dart';

class PradeshSabha extends StatefulWidget {
  const PradeshSabha({super.key});

  @override
  State<PradeshSabha> createState() => PradeshSabhaScreenState();
}

class PradeshSabhaScreenState extends State<PradeshSabha> {
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
            // const SizedBox(height: 15,),
            Expanded(flex: 2, child: ImageSlider()),

            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.grey,
                          child:
                              Icon(Icons.account_balance, color: Colors.white),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'प्रदेश सभा',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: redcolor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Important: Make CustomList scrollable
                    Expanded(
                      child: SingleChildScrollView(
                        child: CustomList(
                          items: [
                            'परिचय',
                            'प्रदेश सभा सचिवालयको काम',
                            'संठन संरचना',
                            'दरबन्दी विवरण',
                            'कर्मचारी विवरण',
                            'पूर्व कर्मचारीहरू',
                          ],
                          onTap: (item) {
                            print('Tapped on $item');
                          },
                        ),
                      ),
                    ),
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
