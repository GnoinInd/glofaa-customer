import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isDismissible: true,
              builder: (BuildContext context) {
                return Stack(
                  children: [
                    Container(
                      color: Colors.transparent,
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Add your bottom sheet content here
                          ListTile(
                            leading: Icon(Icons.star),
                            title: Text('Item 1'),
                            onTap: () {
                              // Handle item 1 tap
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.star),
                            title: Text('Item 2'),
                            onTap: () {
                              // Handle item 2 tap
                            },
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context); // Dismiss the bottom sheet
                        },
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
