import 'package:flutter/material.dart';

class ChooseLanguageTestWidget extends StatefulWidget {
  const ChooseLanguageTestWidget({super.key});

  @override
  State<ChooseLanguageTestWidget> createState() =>
      _ChooseLanguageTestWidgetState();
}

class _ChooseLanguageTestWidgetState extends State<ChooseLanguageTestWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Primary text'),
          leading: Icon(Icons.label),
          trailing: Text('Metadata'),
        ),
      ],
    );
  }
}

// widget
//
// title
//selected
// index
//  selectedindex
