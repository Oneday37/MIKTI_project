import 'dart:math';

import 'package:flutter/material.dart';

double randomBorderRadius() {
  return Random().nextDouble() * 70;
}

double randomMargin() {
  return Random().nextDouble() * 20;
}

Color randomColors() {
  return Color.fromARGB(Random().nextInt(255), Random().nextInt(255),
      Random().nextInt(255), Random().nextInt(255));
}

class DetailInfoPage extends StatefulWidget {
  const DetailInfoPage({super.key});

  @override
  State<DetailInfoPage> createState() => _DetailInfoPageState();
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  late double borderRadius;
  late double margin;
  late Color colorRandom;

  final double boxSize = 150; //Mendefiniskan nilai dari box yang akan digunakan
  double posX = 0.0; //Mendefinisikan titik awal kotak secara horizontal
  double posY = 0.0; //Mendefinisikan titik awal kotak secara vertical

  int numOfSingleTap = 0;
  int numOfDoubleTap = 0;
  int numOfLongPress = 0;

  @override
  void initState() {
    borderRadius = randomBorderRadius();
    margin = randomMargin();
    colorRandom = randomColors();
    super.initState();
  }

  void changeState() {
    setState(() {
      borderRadius = randomBorderRadius();
      margin = randomMargin();
      colorRandom = randomColors();
    });
  }

  void centerPositioned(BuildContext context) {
    posX = (MediaQuery.of(context).size.width - boxSize) / 2;
    posY = (MediaQuery.of(context).size.height - boxSize) / 3;

    setState(() {
      posX = posX;
      posY = posY;
    });
  }

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
    if (posX == 0) {
      centerPositioned(context);
      print(posX);
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned(
            top: posY,
            left: posX,
            child: GestureDetector(
              child: SizedBox(
                width: boxSize,
                height: boxSize,
                child: AnimatedContainer(
                  duration: const Duration(seconds: 3),
                  margin: EdgeInsets.all(margin),
                  decoration: BoxDecoration(
                      color: colorRandom,
                      borderRadius: BorderRadius.circular(borderRadius),
                      border: Border.all(color: Colors.black, width: 3)),
                ),
              ),
              onTap: () {
                incrementSingleTap();
                changeState();
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
              // Dapat membuat widget bergerak / drag secara vertical
              /*onVerticalDragUpdate: (details) {
                setState(() {
                  posY += details.delta.dy;
                });
              },*/
              // Dapat membuat widget bergerak / drag secara horizontal
              /*onHorizontalDragUpdate: (details) {
                setState(() {
                  posX += details.delta.dx;
                  print(posX);
                });
              },*/
              // Dapat membuat widget bergerak / drag kesegala arah
              onPanUpdate: (details) {
                setState(() {
                  posY += details.delta.dy;
                  print(posY);
                  posX += details.delta.dx;
                  print(posX);
                });
              },
            ),
          ),
        ],
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
