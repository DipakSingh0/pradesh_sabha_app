import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/my_appbar.dart';
import 'package:pradesh_app/padhadhikari_page/widget/profile_listview.dart';
import 'package:pradesh_app/screen2/widgets/image_slider.dart';

class Padhadhikari extends StatefulWidget {
  const Padhadhikari({super.key});

  @override
  State<Padhadhikari> createState() => PadhadhikariScreenState();
}

class PadhadhikariScreenState extends State<Padhadhikari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: 'प्रदेश सभा सदस्य\nजनकपुरधाम, धनुषा, नेपाल',
        leading: Image.asset('assets/icons/icon2.png'),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            // height: 215,
            child: ImageSlider(),
          ),
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
                      //   child: Icon(Icons.account_balance, color: Colors.white),
                      // ),
                      // const SizedBox(width: 12),
                      Text(
                        'पूर्व पदाधिकारीहर',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: redcolor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  Expanded(
                    child: ProfileListView(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
