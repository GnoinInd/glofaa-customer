import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glofaa_customer/views/widgets/app_bar_with_search_bar.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color(0xFF03ABC5),
                child: const AppBarWithSearchBar(title: ''),
              ),
              Container(
                width: double.infinity,
                height: 203,
                decoration: const BoxDecoration(color: Color(0xFF018297)),
                child: Center(
                  child: Container(
                    width: 125,
                    height: 125,
                    decoration: const ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile_image.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: OvalBorder(),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 21.60,
                          offset: Offset(0, 4),
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 19.0, bottom: 7),
                      child: Text(
                        'First Name ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.20,
                      child: Container(
                        width: 336,
                        height: 41,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 19.0, bottom: 7),
                      child: Text(
                        'Last Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.20,
                      child: Container(
                        width: 336,
                        height: 41,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(width: 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Center(
                        child: Container(
                          width: 112,
                          height: 35,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF018297),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(52),
                            ),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                          child: const Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Mobile Number',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, bottom: 19),
                      child: Opacity(
                        opacity: 0.20,
                        child: Container(
                          width: 336,
                          height: 41,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 94,
                                height: 41,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF03A0D1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Update',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Email ID',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        height: 0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0, bottom: 30),
                      child: Opacity(
                        opacity: 0.20,
                        child: Container(
                          width: 336,
                          height: 41,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 94,
                                height: 41,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF03A0D1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Verify',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'Deactivate Account',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
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
      ),
    );
  }
}
