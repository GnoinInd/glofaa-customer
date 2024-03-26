import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glofaa_customer/views/screens/location_fetch_ui_2.dart';
import 'package:get/get.dart';

class LocationFetchUi1 extends StatelessWidget {
  const LocationFetchUi1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hi, nice to meet you!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'See services around',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/map_image.png"),
                        opacity: 0.4,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 153,
                    child: Container(
                      width: 64,
                      height: 55,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/location.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 12),
              Container(
                width: 250,
                height: 33,
                decoration: ShapeDecoration(
                  color: const Color(0xFF018297),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg_images/my_location_icon.svg',
                    ),
                    const SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        Get.to(() => LocationFetchUi2());
                      },
                      child: const Text(
                        'Your current location',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 250,
                height: 33,
                decoration: ShapeDecoration(
                  color: const Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svg_images/search.svg'),
                    const SizedBox(width: 8),
                    const Text(
                      'Some other location',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
