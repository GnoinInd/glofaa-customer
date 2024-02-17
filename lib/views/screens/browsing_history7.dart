import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/widgets/search_bar.dart'
    as CustomSearchBar;
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
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
                    Switch(
                      value: false,
                      onChanged: (bool newValue) {
                        // Add your onChanged logic here
                      },
                      inactiveTrackColor: Colors.red,
                      inactiveThumbColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          );
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
                height: 10,
              ),
              Container(
                width: 350,
                height: 108,
                decoration: ShapeDecoration(
                  color: Color(0xFFF5F5F5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/svg_images/i_icon.svg'),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            'Browsing history is paused until 6 Dec\n2023. Turn your browsing history back\non to have new items you view shown \non this page.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Turn on History',
                            style: TextStyle(
                              color: Color(0xFF03A0D1),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                            textAlign: TextAlign.left),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
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
