import 'package:flutter/material.dart';
import 'package:pradesh_app/other_pages/rest_pages/ain.dart';
import 'package:pradesh_app/other_pages/rest_pages/bidheyak.dart';
import 'package:pradesh_app/other_pages/rest_pages/forum.dart';
import 'package:pradesh_app/other_pages/rest_pages/gallery.dart';
import 'package:pradesh_app/other_pages/pradesh_sabha.dart';
import 'package:pradesh_app/other_pages/pradesh_sabha_parichaya.dart';
import 'package:pradesh_app/padhadhikari_page/padhadhikari.dart';
import 'package:pradesh_app/other_pages/sachibalaya_page.dart';
import 'package:pradesh_app/other_pages/rest_pages/sampark.dart';
import 'package:pradesh_app/screens.dart';
import 'package:pradesh_app/other_pages/rest_pages/suchana.dart';

class MenuGrid extends StatelessWidget {
  final List<Map<String, dynamic>> menuItems = [
    {
      'icon': Icons.announcement,
      'label': 'सूचना',
      'page': const Suchana(), // Replace with your actual page
    },
    {
      'icon': Icons.people,
      'label': 'समिति',
      'page': const CommitteePage(),
    },
    {
      'icon': Icons.description,
      'label': 'विधेयक',
      'page': const BidheyakPage(),
    },
    {
      'icon': Icons.apartment,
      'label': 'प्रदेश सभा',
      'page': const PradeshSabha(),
    },
    {
      'icon': Icons.person,
      'label': 'प्रदेश सभा सदस्य',
      'page': const Padhadhikari(),
    },
    {
      'icon': Icons.account_balance,
      'label': 'प्रदेश सभा सचिवालय',
      'page': const SachibalayaPage(),
    },
    {
      'icon': Icons.event,
      'label': 'सभा बैठक',
      'page': const PradeshSabhaBaithak(),
    },
    {
      'icon': Icons.book,
      'label': 'ऐन, नियम',
      'page': const Ain(),
    },
    {
      'icon': Icons.work,
      'label': 'प्रदेश सभाका कार्यक्रमहरू',
      'page': const ProgramsPage(),
    },
    {
      'icon': Icons.photo,
      'label': 'ग्यालेरी',
      'page': const Gallery(),
    },
    {
      'icon': Icons.assignment_outlined,
      'label': 'फारम',
      'page': const Forum(),
    },
    {
      'icon': Icons.perm_contact_cal_sharp,
      'label': 'सम्पर्क',
      'page': const Sampark(),
    },
  ];

   MenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        childAspectRatio: 0.9,
        children: menuItems.map((item) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item['page']),
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(item['icon'], size: 30),
                const SizedBox(height: 5),
                Text(
                  item['label'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
