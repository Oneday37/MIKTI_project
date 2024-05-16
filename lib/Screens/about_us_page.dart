import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailInfoPage extends StatefulWidget {
  const DetailInfoPage({super.key});

  @override
  State<DetailInfoPage> createState() => _DetailInfoPageState();
}

class _DetailInfoPageState extends State<DetailInfoPage> {
  final double boxSize = 150;
  int numOfSingleTap = 0;
  int numOfDoubleTap = 0;
  int numOfLongPress = 0;
  double posX = 0.0;
  double posY = 0.0;
  late double borderRadius;

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
              child: Container(
                color: Colors.red,
                height: boxSize,
                width: boxSize,
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

  void centerPositioned(BuildContext context) {
    posX = (MediaQuery.of(context).size.width - boxSize) / 2;
    posY = (MediaQuery.of(context).size.height - boxSize) / 3;

    setState(() {
      this.posX = posX;
      this.posY = posY;
    });
  }
}
