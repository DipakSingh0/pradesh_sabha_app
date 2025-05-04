import 'package:flutter/material.dart';
import 'package:pradesh_app/padhadhikari_page/model/profile_model.dart';

class ProfileCard extends StatelessWidget {
  final Profile profile;

  const ProfileCard({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        // color: Colors.white,
        border: Border.all(color: Colors.grey),
        // borderRadius: BorderRadius.circular(8),
      ),
      // child: 
        child: Row(
          children: [
            Container(
              width: 120, 
              height: 127, 
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(profile.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.red[800],
                    ),
                  ),
                  Text(profile.position,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(height: 6),
                  Text("Designation: ${profile.designation}"),
                  Text("Mobile: ${profile.mobile}"),
                  Text("Email: ${profile.email}"),
                ],
              ),
            ),
          ],
        ),
      );
    
  }
}
