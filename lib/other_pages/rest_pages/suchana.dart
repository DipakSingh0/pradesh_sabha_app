import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/custom_list.dart';
import 'package:pradesh_app/common/my_appbar.dart';

class Suchana extends StatelessWidget {
  const Suchana({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  MyAppBar(
        title: 'प्रदेश सभा सदस्य\nजनकपुरशेषम, भुवन, नेपाल',
        leading: Image.asset(
          'assets/icons/icon2.png',
        ),
        backgroundColor: Colors.red,
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.description, color: Colors.white),
                ),
                const SizedBox(width: 12),
                const Text(
                  'सूचना',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: redcolor
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: CustomList(
                items: [
                  ' प्रदेश सभा सूचना',
                  'प्रदेश सभा सचिवालय सूचना',
                  'दैनिक कार्य सूची',
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
