import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget switchAccount(BuildContext context) {
  return CupertinoAlertDialog(
    title: const Text("Pilih akun", style: TextStyle(fontSize: 25)),
    content: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person_2_outlined),
              ),
              const SizedBox(height: 10, width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Second Account Name",
                    style: GoogleFonts.oswald(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text("secondaccount@gmail.com",
                      style: GoogleFonts.oswald(fontSize: 15)),
                ],
              ),
            ],
          ),
          const Divider(color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.person_2_outlined),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Third Account Name",
                        style: GoogleFonts.oswald(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    Text("secondaccount@gmail.com",
                        style: GoogleFonts.oswald(fontSize: 15)),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person_2_outlined),
              ),
              const SizedBox(height: 50, width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login dengan akun lain",
                      style: GoogleFonts.oswald(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          CupertinoDialogAction(
            child: const Text(
              "Batal",
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    ),
  );
}
