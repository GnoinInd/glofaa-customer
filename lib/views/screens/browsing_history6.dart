import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glofaa_customer/views/screens/browsing_history1.dart';
import 'package:glofaa_customer/views/screens/browsing_history7.dart';
import 'package:glofaa_customer/views/widgets/search_bar.dart'
    as CustomSearchBar;
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    const GetMaterialApp(
      home: BrowsingHistory6(),
    ),
  );
}

class BrowsingHistory6 extends StatelessWidget {
  const BrowsingHistory6({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Show the bottom sheet automatically when the widget is built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showModalBottomSheet(
        backgroundColor: Colors.transparent,
        constraints: BoxConstraints(maxHeight: 500),
        context: context,
        builder: (BuildContext context) {
          return Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => const BrowsingHistory1());
                    },
                    child: SvgPicture.asset(
                        'assets/svg_images/cancel_button.svg')),
              ),
              Stack(
                children: [
                  Container(
                    height: 413,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/left.png'),
                            SizedBox(
                              width: 9,
                            ),
                            const Text(
                              'Settings',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 40, top: 12),
                          child: const Text(
                            'Turn on/off your browsing history, new items you view will not show on this page, and your recent searches will not appear in the search bar. We will also be unable to use your browsing history for content Personalisation. This can make some recommendations for you less relevant. ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Text(
                              'Browsing History',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => BrowsingHistory7());
                              },
                              child: Switch(
                                value: true,
                                onChanged: (bool newValue) {
                                  Get.to(() => BrowsingHistory7());
                                },
                                activeTrackColor: Color(0xFF018297),
                                activeColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ));
        },
      );
    });

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      top: 16,
                    ),
                    child: Image.asset(
                      'assets/images/left.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  CustomSearchBar.SearchBar(),
                ],
              ),
              SizedBox(
                height: 28,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
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
                  Padding(
                    padding: const EdgeInsets.only(left: 195.0),
                    child: SvgPicture.asset('assets/svg_images/settings.svg'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 62, left: 12),
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
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
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
      ),
    );
  }
}
