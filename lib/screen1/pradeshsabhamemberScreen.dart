import 'package:flutter/material.dart';
import 'package:pradesh_app/screen1/widget/drop_down_label.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/my_appbar.dart';
import 'package:pradesh_app/screen1/widget/button_widget.dart';

class PradeshSabhaMemberScreen extends StatefulWidget {
  const PradeshSabhaMemberScreen({super.key});

  @override
  State<PradeshSabhaMemberScreen> createState() =>
      _PradeshSabhaMemberScreenState();
}

class _PradeshSabhaMemberScreenState extends State<PradeshSabhaMemberScreen> {
  final _nameController = TextEditingController();
  // String? _selectedTerm = 'पश्चिम';
  String? _selectedDistrict;
  String? _selectedParty;
  String? _selectedSystem;
  String? _selectedGroup;
  final _districts = ['जिल्ला 1', 'जिल्ला 2', 'जिल्ला 3'];
  final _parties = ['पार्टी 1', 'पार्टी 2', 'पार्टी 3'];
  final _systems = ['सभी', 'प्रणाली 1', 'प्रणाली 2'];
  final _groups = ['सभी', 'समूह 1', 'समूह 2'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: 'प्रदेश सभा सदस्य\nजनकपुरशेषम, भुवन, नेपाल',
          leading: Image.asset(
            'assets/icons/icon2.png',
          ),
          // backgroundColor: Colors.red,
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8,
                ),

                // ------------portion 1 image -------------------//

                Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.grey.shade200,
                      backgroundImage: AssetImage('assets/icons/icon1.png'),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'प्रदेश सभा सदस्य',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors
                            .red, // You can use a specific red shade if needed
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

// ------------portion 2 sadasya inside container -------------------//
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.grey.shade300), // light border
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'मा. सदस्यको नाम',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'सदस्यको नाम',
                          helperText:
                              '*नेपाली वा अंग्रेजीमा लेखिएका प्रतिनिधि सभाका सदस्य खोज्नुहोस्',
                          helperStyle: TextStyle(color: Colors.red),
                        ),
                      ),
                      const SizedBox(height: 16),
                    
                      LabeledDropdown<String>(
                        label: 'प्रदेश सभा सदस्य कार्यकाल',
                        value: _selectedGroup,
                        items: _groups,
                        hintText: 'पहिलो',
                        onChanged: (val) =>
                            setState(() => _selectedGroup = val),
                        height: 56, // Custom height
                        width: 200, // Custom width
                        dropdownItemHeight: 56, // Matches the field height
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      )

                    ],
                  ),
                ),
                const SizedBox(height: 16),

// ------------portion 3   wistrit khoj-------------------//

                const Text(
                  'विस्तृत खोज',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),

                const Divider(),
                // Row 1
                Row(
                  children: [
                    Expanded(
                      child: LabeledDropdown<String>(
                        label: 'जिल्ला',
                        value: _selectedDistrict,
                        items: _districts,
                        hintText: 'सबै',
                        onChanged: (val) =>
                            setState(() => _selectedDistrict = val),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: LabeledDropdown<String>(
                        label: 'राजनीतिक दलहरू',
                        value: _selectedParty,
                        items: _parties,
                        hintText: 'सबै',
                        onChanged: (val) =>
                            setState(() => _selectedParty = val),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Row 2
                Row(
                  children: [
                    Expanded(
                      child: LabeledDropdown<String>(
                        label: 'निर्वाचन प्रणाली',
                        value: _selectedSystem,
                        items: _systems,
                        hintText: 'सबै',
                        onChanged: (val) =>
                            setState(() => _selectedSystem = val),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: LabeledDropdown<String>(
                        label: 'समूह',
                        value: _selectedGroup,
                        items: _groups,
                        hintText: 'सबै',
                        onChanged: (val) =>
                            setState(() => _selectedGroup = val),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: LabeledDropdown<String>(
                        label: 'लिङ्ग',
                        value: _selectedGroup,
                        items: _groups,
                        hintText: 'लिङ्ग छानुहो',
                        onChanged: (val) =>
                            setState(() => _selectedGroup = val),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                //------------- Button Row 1 ---------
                Row(
                  children: [
                    Expanded(
                      child: ButtonWidget(
                     
                        text: 'सदस्य खोज्नुहोस्',
                        backgroundColor: redcolor,
                        onPressed: () {
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ButtonWidget(
                        text: 'रिसेट फर्म',
                        backgroundColor: lightredcolor,
                        onPressed: () {
                        },
                      ),
                    ),
                    const SizedBox(width: 8),
                    ButtonWidget(
                      text: 'Export / Excel',
                      backgroundColor: redcolor,
                      onPressed: () {
                       
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // Button Row 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ButtonWidget(
                      text: 'Print/Download',
                      backgroundColor: Colors.green,
                      onPressed: () {
                        
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
