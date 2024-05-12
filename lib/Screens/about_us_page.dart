import 'package:flutter/material.dart';

class DetailInfoPage extends StatefulWidget {
  const DetailInfoPage({super.key});

  @override
  State<DetailInfoPage> createState() => _DetailInfoPageState();
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  int numOfSingleTap = 0;
  int numOfDoubleTap = 0;
  int numOfLongPress = 0;

  void incrementSingleTap() {
    setState(() {
      numOfSingleTap++;
    });
  }

  void incrementDoubleTap() {
    setState(() {
      numOfDoubleTap++;
    });
  }

  void incrementLongPress() {
    setState(() {
      numOfLongPress++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          child: Container(
            color: Colors.red,
            height: 150,
            width: 150,
          ),
          onTap: () {
            incrementSingleTap();
            print("Single Tap");
          },
          onDoubleTap: () {
            incrementDoubleTap();
            print("Double Tap");
          },
          onLongPress: () {
            incrementLongPress();
            print("Long Press");
          },
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.amber,
        child: Text(
          "Taps: $numOfSingleTap - Double Tap: $numOfDoubleTap - Long Press: $numOfLongPress",
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
