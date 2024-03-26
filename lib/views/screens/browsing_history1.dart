import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glofaa_customer/views/screens/your_cart1.dart';
import 'package:glofaa_customer/views/screens/your_cart2.dart';
import 'package:glofaa_customer/views/widgets/search_bar.dart'
    as CustomSearchBar;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:device_preview/device_preview.dart';

class BrowsingHistory1 extends StatelessWidget {
  const BrowsingHistory1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    top: 16,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const YourCart());
                    },
                    child: Image.asset(
                      'assets/images/left.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ),
                const CustomSearchBar.SearchBar(),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Your Browsing History',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset('assets/svg_images/settings.svg'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 62, left: 12),
              child: Text(
                'These items were viewed recently. We use them to personalise recommendations.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'You have no recently viewed items.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'KaushanScript',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
