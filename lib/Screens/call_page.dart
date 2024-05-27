import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 23,
                child: Icon(Icons.person),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Nama Pengguna ${index + 1}",
                  style: GoogleFonts.openSans(fontSize: 15),
                ),
              )),
              GestureDetector(
                child: Icon(Icons.favorite_border),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  child: Icon(Icons.videocam_outlined),
                  onTap: () {},
                ),
              ),
              GestureDetector(
                child: Icon(Icons.call_outlined),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    ));
  }
}
