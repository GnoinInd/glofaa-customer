import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/widgets/search_bar.dart'
    as CustomSearchBar;
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/my_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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
                width: 385,
                height: 108,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'assets/images/ac_repair.png',
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            'Deep clean AC service',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg_images/five_star.svg',
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(width: 5.5),
                            Text(
                              '5,112',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/rupee.png',
                              alignment: Alignment.centerLeft,
                            ),
                            SizedBox(width: 5.5),
                            Text(
                              '999',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 6),
                        Container(
                          width: 100,
                          height: 22,
                          decoration: ShapeDecoration(
                            color: Color(0xFF018297),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 0),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: Center(
                              child: Text(
                            'Remove',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )),
                        ),
                      ],
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
