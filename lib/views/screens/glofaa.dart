import 'package:flutter/material.dart';

void main() {
  runApp(MyReviews());
}

class MyReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Image.asset(
          'assets/images/Group1701.png',
        )),
      ),
    );
  }
}
