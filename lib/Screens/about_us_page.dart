import 'package:flutter/material.dart';

class DetailInfoPage extends StatelessWidget {
  const DetailInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Halaman ini nantinya akan berisikan informasi mengenai aplikasi",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
