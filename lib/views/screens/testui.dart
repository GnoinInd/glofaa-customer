import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Switch Button'),
        ),
        body: Center(
          child: Switch(
            value: true,
            onChanged: (bool newValue) {
              // Add your onChanged logic here
            },
            activeTrackColor: Color(0xFF018297),
            activeColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
