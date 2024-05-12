import 'package:flutter/material.dart';

class DetailProfilePage extends StatelessWidget {
  const DetailProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Muhammad Zaidan"),
        actions: [
          IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                print("Anda akan mengedit foto profile");
              }),
          const SizedBox(width: 5),
          IconButton(
              icon: const Icon(Icons.share),
              onPressed: () {
                print("Anda membagikan profile anda");
              })
        ],
      ),
      body: Center(
          child: Hero(
              tag: "edit_profile_animation",
              child: Image.asset("assets/gambar_1.jpg"))),
    );
  }
}
