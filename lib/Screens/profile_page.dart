import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mikti/Screens/detail_profil_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Your Profile"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  GestureDetector(
                    child: const Hero(
                      tag: "edit_profile_animation",
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/gambar_1.jpg"),
                        radius: 50,
                      ),
                    ),
                    onTap: () {
                      Get.to(const DetailProfilePage());
                    },
                  ),
                  Positioned(
                      right: 0,
                      bottom: 7,
                      child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 15,
                          )))
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              "Muhammad Zaidan",
              style: GoogleFonts.oswald(
                  fontSize: 30, fontWeight: FontWeight.normal),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
