import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/custom_list.dart';
import 'package:pradesh_app/common/my_appbar.dart';

class SachibalayaPage extends StatelessWidget {
  const SachibalayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      MyAppBar(
        title: 'प्रदेश सभा सदस्य\nजनकपुरशेषम, भुवन, नेपाल',
        leading: Image.asset(
          'assets/icons/icon2.png',
        ),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      //  AppBar(
      //   backgroundColor: Colors.red,
      //   title: const Text(
      //     'मधेश प्रदेश सभा\nजनकपुरधाम, धनुषा, नेपाल',
      //     style: TextStyle(fontSize: 16),
      //   ),
      //   centerTitle: false,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.account_balance, color: Colors.white),
                ),
                const SizedBox(width: 12),
                const Text(
                  'प्रदेश सभा सचिवालय',
                 style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: redcolor),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
