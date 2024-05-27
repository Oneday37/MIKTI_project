import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mikti/Screens/add_page.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: GoogleFonts.openSans(fontSize: 20),
              ),
              IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {
                    print("Anda menekan tombol share");
                  })
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/gambar_1.jpg"),
                      radius: 35,
                    ),
                    Positioned(
                      right: 0,
                      bottom: 2,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)),
                        child: const Icon(Icons.add),
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Get.to(const AddPage());
                },
              ),
              const Expanded(
                child: ListTile(
                  title: Text("My status"),
                  subtitle: Text("Tap to add new status"),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
