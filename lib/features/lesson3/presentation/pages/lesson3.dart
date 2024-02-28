import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lesson3Screen extends StatefulWidget {
  const Lesson3Screen({super.key});

  @override
  State<Lesson3Screen> createState() => _Lesson3ScreenState();
}

class _Lesson3ScreenState extends State<Lesson3Screen> {
  double yPos = 0.0;
  double xPos = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTapUp: (tapDetails){
              print(tapDetails.localPosition);
              setState(() {
                xPos = tapDetails.localPosition.dx;
                yPos = tapDetails.localPosition.dy;
              });
            },
            child: Container(
              color: Colors.red,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          AnimatedPositioned(
            top: yPos,
            left: xPos,
              duration: Duration(milliseconds: 300),
              child: Icon(Icons.circle),
          ),
        ],
      ),
    );
  }
}
