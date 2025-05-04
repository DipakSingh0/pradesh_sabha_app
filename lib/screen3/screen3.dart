import 'package:flutter/material.dart';
import 'package:pradesh_app/screen3/widgets/custom_menu_widget.dart';
import 'package:pradesh_app/screen3/widgets/table_widget.dart';
import 'package:pradesh_app/common/my_appbar.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MyAppBar(
          title: 'प्रदेश सभा सदस्य\nजनकपुरशेषम, भुवन, नेपाल',
          leading: Image.asset(
            'assets/icons/icon2.png',
          ),
          backgroundColor: Colors.red,
          centerTitle: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              // Title
              Text(
                'अर्थ तथा योजना समिति',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800],
                ),
              ),

              // Top(),
              CustomMenuWidget(
                menuItems: [
                  MenuItem(icon: Icons.info, label: 'परिचय'),
                  MenuItem(
                      icon: Icons.list,
                      label: 'काम, कर्तव्य र अधिकार',
                      width: 100),
                  MenuItem(icon: Icons.notifications, label: 'सूचनाहरू'),
                  MenuItem(icon: Icons.menu, label: 'गतिविधिहरू'),
                  MenuItem(icon: Icons.download, label: 'प्रकाशनहरू-डाउनलोडस्'),
                  MenuItem(icon: Icons.person, label: 'हाजिरी'),
                ],
                contents: [
                  const Text('coming soon!', style: TextStyle(fontSize: 18)),
                  const Text('coming soon!', style: TextStyle(fontSize: 18)),
                  // const Text('सूचनाहरू content',
                  //     style: TextStyle(fontSize: 18)),
                  TableWidget(
                    columns: const [
                      TableColumn(title: 'सि.न'),
                      TableColumn(title: 'शिर्षक'),
                      TableColumn(title: '#', hasButton: true),
                    ],
                    rows: [
                      TableRowData(
                        cells: [
                          '1',
                          'अर्थ तथा योजना समितिको बैठक',
                          'थप पढ्नुहोश'
                        ],
                        onPressed: () => print('Row 1 pressed'),
                      ),
                      TableRowData(
                        cells: ['2', 'विधयेक माथि छलफल', 'थप पढ्नुहोश'],
                        onPressed: () => print('Row 2 pressed'),
                      ),
                    ],
                  ),
                  const Text('No Data Found', style: TextStyle(fontSize: 18)),
                  const Text('No Data Found', style: TextStyle(fontSize: 18)),
                  const Text('No Data Found', style: TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              CustomMenuWidget(
                // title: 'अर्थ तथा योजना समिति',
                menuItems: [
                  MenuItem(icon: Icons.volume_up, label: 'अडियो ', width: 55),
                  MenuItem(icon: Icons.audiotrack, label: 'भिडियो ', width: 55),
                ],
                contents: [
                  const Text('coming soon!', style: TextStyle(fontSize: 18)),
                  const Text('coming soon!', style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
