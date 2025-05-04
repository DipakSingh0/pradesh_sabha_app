import 'package:flutter/material.dart';
import 'package:pradesh_app/common/constants.dart';
import 'package:pradesh_app/common/my_appbar.dart';

class Sampark extends StatelessWidget {
  const Sampark({super.key});

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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.person_3_outlined, color: Colors.white),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'सम्पर्क',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: redcolor),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(16),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,

                  border:
                      Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'सम्पर्क',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'मधेश प्रदेश सभा सचिवालय',
                       style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: redcolor,
                      ),
                    ),
                    const Text(
                      'जनकपुरधाम, नेपाल',
                       style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Email: mpss@madhesh.gov.np',
                       style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      'provinceassemblyp2@gmail.com',
                       style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
