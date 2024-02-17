import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glofaa_customer/views/widgets/app_bar_without_search_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              AppBarWithoutSearchBar(title: 'My Wallet'),
              Container(
                width: double.infinity,
                height: 159,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.99, 0.17),
                    end: Alignment(0.99, -0.17),
                    colors: [Color(0x00FBFEFE), Color(0xFFB7FAFF)],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x00FBFEFE),
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 6),
                  child: Row(
                    children: [
                      Image.asset('assets/images/gift_box.png'),
                      Padding(
                        padding: const EdgeInsets.only(top: 34, left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Refer your\nfriends and earn',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 19.0,
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    'They get and you get',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: SvgPicture.asset(
                                        'assets/svg_images/orange_rupee.svg'),
                                  ),
                                  const Text(
                                    '100',
                                    style: TextStyle(
                                      color: Color(0xFFF45540),
                                      fontSize: 11.59,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Container(
                  width: double.infinity,
                  height: 105,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.99, 0.17),
                      end: Alignment(0.99, -0.17),
                      colors: [Color(0x00FBFEFE), Color(0xFFB7FAFF)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x00FBFEFE),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0, top: 6),
                    child: Row(
                      children: [
                        Image.asset('assets/images/glofaa_cash.png'),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Glofaa Cash',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 19.0,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      'Formerly Glofaa Credits. Applicable on all\nservices',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 138,
                decoration: const BoxDecoration(
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 12.0, top: 21, bottom: 21),
                          child: Text(
                            'Have a question?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 23.0),
                          child: Image.asset('assets/images/Forward.png'),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.only(left: 12.0, top: 21, bottom: 21),
                      child: Text(
                        'Wallet activity',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    )
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
