import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:glofaa_customer/views/screens/main_bottom_navigation_bar.dart';
import 'package:glofaa_customer/views/screens/profile_page.dart';

class LocationFetchUi2 extends StatelessWidget {
  const LocationFetchUi2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: GestureDetector(
              onTap: () {
                Get.to(() => MainBottomNavigationBar());
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/svg_images/pindrop_location.svg'),
                  const SizedBox(height: 6),
                  const Text(
                    'LOCATION FOR SERVICE',
                    style: TextStyle(
                      color: Color(0xFF00623E),
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Action Area IIC, North Block, Newtown,\n                            Kolkata',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    '805, Action Area IIC, North Block, Newtown, Kolkata, West\n                                  Bengal 700161, India',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
