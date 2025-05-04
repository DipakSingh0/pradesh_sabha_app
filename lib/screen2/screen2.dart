import 'package:flutter/material.dart';
import 'package:pradesh_app/screen2/widgets/image_slider.dart';
import 'package:pradesh_app/screen2/widgets/menu_grid.dart';
import 'package:pradesh_app/common/my_appbar.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _PradeshSabhaMemberScreenState();
}

class _PradeshSabhaMemberScreenState extends State<Screen2> {
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
        body: Column(
          children: [
            Expanded(flex: 2, child: ImageSlider()),
            const SizedBox(
              height: 15,
            ),

            Expanded(flex: 4, child: MenuGrid()),
          ],
        ),
      ),
    );
  }
}
