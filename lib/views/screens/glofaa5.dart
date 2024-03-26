import 'package:flutter/material.dart';

void main() {
  runApp(LookForServiecs());
}

class LookForServiecs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Image.asset(
          'assets/images/look_for_services.png',
        )),
      ),
    );
  }
}
