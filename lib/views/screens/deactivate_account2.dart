import 'package:flutter/material.dart';
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
            children: [
              const AppBarWithSearchBar(title: 'Deactivate Account'),
              Container(
                width: double.infinity,
                height: 286,
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
                child: Stack(
                  children: [
                    const Positioned(
                      left: 12,
                      top: 25,
                      child: Text(
                        'Email ID',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 12,
                      top: 50,
                      child: Text(
                        'Sagarpandeyppt9955@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 12,
                      top: 92,
                      child: Text(
                        'Mobile Number',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 12,
                      top: 117,
                      child: Text(
                        '+916201937440',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: (MediaQuery.of(context).size.width - 188) / 2,
                      top: 166,
                      child: Container(
                        width: 188,
                        height: 25,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 41,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(65),
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
                              ),
                            ),
                            Positioned(
                              left: 49,
                              top: 0,
                              child: Container(
                                width: 41,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(65),
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
                              ),
                            ),
                            Positioned(
                              left: 98,
                              top: 0,
                              child: Container(
                                width: 41,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(65),
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
                              ),
                            ),
                            Positioned(
                              left: 147,
                              top: 0,
                              child: Container(
                                width: 41,
                                height: 25,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(65),
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: (MediaQuery.of(context).size.width - 205) / 2,
                      top: 223,
                      child: GestureDetector(
                        child: Container(
                          width: 205,
                          child: const Text(
                            'CONFIRM DEACTIVATION',
                            style: TextStyle(
                              color: Color(0xFF018297),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        onTap: () {
                          print('Container clicked!');
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                // Use AlertDialog or another dialog widget here
                                title:
                                    Text('Deactivate Account'), // Example title
                                content: Container(
                                  // Example content
                                  width: 295,
                                  height: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    'Your account has been deactivated.',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 286,
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
                child: const Stack(
                  children: [
                    Positioned(
                      left: 12,
                      top: 16,
                      child: Text(
                        'When you deactivate the account ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: 43,
                      child: Text(
                        'We will miss you.\nYou won’t be able to access your wish list.\nYou will not get updates about the latest offers & discounts.\nYou will have to fill your details while checking out over and \nover again.\nYou won’t be able to check your past Bookings. ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: 139,
                      child: Text(
                        'How do i reactivate my Glofaa account?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 12,
                      top: 166,
                      child: Text(
                        'Coming back is easy.\nSimply contact us to re-activate your account. your account \ndata will be fully restored - default settings will be applied\nand you will be subscribed to receive promotional emails\nfrom Glofaa.\nGlofaa retains your account data for you to conveniently\nstart off from where you left, if you decide to reactivate your\naccount. ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
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
