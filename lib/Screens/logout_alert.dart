import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget logoutAccount(BuildContext context) {
  return CupertinoAlertDialog(
    title: Text("Logout Akun"),
    content: Text("Apakah anda yakin ingin keluar dari akun ini?"),
    actions: [
      CupertinoDialogAction(
        child: Text("Tidak"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CupertinoDialogAction(
        child: Text("Ya"),
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: Column(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        size: 30,
                        color: Colors.red,
                      ),
                      Text("Peringatan"),
                    ],
                  ),
                  content: Text("Anda akan keluar dari akun ini"),
                  actions: [
                    CupertinoDialogAction(
                      child: Text("Batal"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: Text(
                        "Logout",
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        print("Anda berhasil Logout dari akun");
                      },
                    )
                  ],
                );
              });
        },
      )
    ],
  );
}
