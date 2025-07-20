import 'package:flutter/material.dart';

void main() {
  runApp(MyAbstractUI());
}

class MyAbstractUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AbstractBackground(),
    );
  }
}

class AbstractBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: Stack(
        children: [
          // Left blue shape
          Positioned(
            top: 100,
            left: -100,
            child: Container(
              width: 250,
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xFF4DB6E3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
            ),
          ),

          // Yellow circle
          Positioned(
            top: 250,
            left: 80,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xFFFDDC88),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Right red shape
          Positioned(
            top: 150,
            right: -60,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFFF26478),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(160),
                  bottomLeft: Radius.circular(100),
                ),
              ),
            ),
          ),

          // Blue circle
          Positioned(
            bottom: 120,
            right: 60,
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Color(0xFF3E7DD1),
                shape: BoxShape.circle,
              ),
            ),
          ),

          
            
        ],
      ),
    );
  }
}
