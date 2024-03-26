import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/screens/first_page.dart';
import 'package:glofaa_customer/views/screens/glofaa2.dart';
import 'package:glofaa_customer/views/screens/glofaa5.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MaterialApp(home: const MyApp()),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}
