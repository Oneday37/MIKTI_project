import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget logoutAccount(BuildContext context) {
  return CupertinoAlertDialog(
    title: const Text("Logout Akun"),
    content: const Text("Apakah anda yakin ingin keluar dari akun ini?"),
    actions: [
      CupertinoDialogAction(
        child: const Text("Tidak"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      CupertinoDialogAction(
        child: const Text("Ya"),
        onPressed: () {
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return CupertinoAlertDialog(
                  title: const Column(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        size: 30,
                        color: Colors.red,
                      ),
                      Text("Peringatan"),
                    ],
                  ),
                  content: const Text("Anda akan keluar dari akun ini"),
                  actions: [
                    CupertinoDialogAction(
                      child: const Text("Batal"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    CupertinoDialogAction(
                      child: const Text(
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
