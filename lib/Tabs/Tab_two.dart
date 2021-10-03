import 'package:flutter/material.dart';

class Tab_two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        padding: EdgeInsets.all(5.0),
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        crossAxisCount: 3,
        children: List.generate(9, (index) {
          return Center(
              child: Image.asset('assets/download.jpg')
          );
        }),
      ),
    );
  }
}
