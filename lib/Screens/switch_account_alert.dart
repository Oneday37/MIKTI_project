import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_mikti/Style/fonts.dart';

Widget switchAccount(BuildContext context) {
  return CupertinoAlertDialog(
    title: Text("Pilih akun", style: TextStyle(fontSize: 25)),
    content: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person_2_outlined),
              ),
              SizedBox(height: 10, width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Second Account Name",
                    style: accountName,
                  ),
                  Text("secondaccount@gmail.com", style: accountInfo),
                ],
              ),
            ],
          ),
          Divider(color: Colors.black),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person_2_outlined),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Third Account Name", style: accountName),
                    Text("secondaccount@gmail.com", style: accountInfo),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.person_2_outlined),
              ),
              SizedBox(height: 50, width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login dengan akun lain", style: accountName),
                ],
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          CupertinoDialogAction(
            child: Text(
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
