import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images.jpg')),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
    );
  }
}
