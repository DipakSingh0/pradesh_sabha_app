import 'package:flutter/material.dart';
import 'package:pradesh_app/padhadhikari_page/model/profile_model.dart';
import 'package:pradesh_app/padhadhikari_page/widget/profile_card_widget.dart';

class ProfileListView extends StatelessWidget {
  final List<Profile> profiles = [
    Profile(
      name: 'माननीय राम चन्द्र मण्डल',
      position: 'सभामुख',
      designation: 'माननीय सभामुख',
      mobile: 'N/A',
      email: 'N/A',
      imagePath: 'assets/images/p1.jpg', 
    ),
    Profile(
      name: 'माननीय बबिता कुमारी राजत ईश्वर',
      position: 'उपसभामुख',
      designation: 'माननीय उपसभामुख',
      mobile: 'N/A',
      email: 'N/A',
      imagePath: 'assets/images/p2.jpg',
    ),
    Profile(
      name: 'बासुप्रसाद कोइराला',
      position: 'प्रदेश सभा सचिव',
      designation: 'प्रदेश सभा सचिव',
      mobile: '९८४८०४८०२५',
      email: 'N/A',
      imagePath: 'assets/images/p3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: profiles.length,
      itemBuilder: (context, index) {
        return ProfileCard(profile: profiles[index]);
      },
    );
  }
}
