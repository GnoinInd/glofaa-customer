import 'package:flutter/material.dart';

void main() {
  runApp(NoRatings());
}

class NoRatings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Image.asset(
          'assets/images/Group1711.png',
        )),
      ),
    );
  }
}
