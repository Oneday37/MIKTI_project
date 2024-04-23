import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Profile"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.person, size: 45),
                    radius: 50,
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
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 15,
                          )))
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "First Account Name",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
