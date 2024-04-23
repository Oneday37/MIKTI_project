import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Items"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Ini adalah halaman menambah item"),
            SizedBox(height: 20),
            Text("Dibawah ini adalah penggunaan Elevated Button"),
            ElevatedButton(child: Text("Tambahkan Item"), onPressed: () {}),
            SizedBox(height: 20),
            Text("Dibawah ini adalah penggunaan Text Button"),
            TextButton(
              child: Text("Ini adalah text button"),
              onPressed: () {},
            ),
            SizedBox(height: 20),
            Text("Dibawah ini adalah penggunaan Outline Button"),
            OutlinedButton(
                child: Text("Ini adalah outline button"), onPressed: () {}),
            SizedBox(height: 20),
            Text("Dibawah ini adalah penggunaan Icon Button"),
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
