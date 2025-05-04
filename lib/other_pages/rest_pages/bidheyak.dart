import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/custom_list.dart';
import 'package:pradesh_app/common/my_appbar.dart';

class BidheyakPage extends StatelessWidget {
  const BidheyakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
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
                  'विधेयक',
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
                  'विधेयक',
                  'दर्ता विधेयक',
                  'विधेयकमा प्राप्त संशोधन प्रस्ताव',
                  'प्रमाणीकरण भएका विधेयक',
                  'विधेयकमा संशोधनको सूचना',
                  'विधेयक सूचना फाराम',
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
