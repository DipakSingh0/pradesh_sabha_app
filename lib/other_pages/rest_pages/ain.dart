// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/screen3/widgets/table_widget.dart';

class Ain extends StatelessWidget {
  const Ain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'मधेश प्रदेश सभा\nजनकपुरधाम, धनुषा, नेपाल',
          style: TextStyle(fontSize: 16),
        ),
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
            TableWidget(
              columns: const [
                TableColumn(title: 'सि.न'),
                TableColumn(title: 'नाम'),
                TableColumn(title: 'प्रकाशित मिति'),
                TableColumn(title: 'डाउनलोड'),
              ],
              rows: [
                TableRowData(
                  cells: [
                    '1',
                    'विनियोजन विधेयक , २०७७',
                    '२०८० फाल्गुन ८ गते , मंगलबार',
                    ' '
                  ],
                  onPressed: () => print('Row 1 pressed'),
                ),
              
              ],
            )
          ],
        ),
      ),
    );
  }
}
