import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 12),
            child: Column(
              children: [
                Container(
                  width: 360,
                  height: 800,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 360,
                        height: 60,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 18,
                              child: Container(
                                width: 325,
                                height: 24,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 24,
                                        child: Stack(
                                          children: [
                                            Image.asset(
                                                'assets/images/left.png'),
                                            const Positioned(
                                              left: 42,
                                              top: 0,
                                              child: Text(
                                                'Add delivery address',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontFamily: 'Inter',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 57),
                                    Container(
                                      width: 18,
                                      height: 18,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 18,
                                            height: 18,
                                            child: const Stack(children: []),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Opacity(
                        opacity: 0.50,
                        child: Container(
                          width: 336,
                          height: 46,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF018297)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 28.0, top: 11),
                            child: Opacity(
                              opacity: 0.40,
                              child: Text(
                                'Full Name*',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w300,
                                  height: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0, top: 28),
                        child: Opacity(
                          opacity: 0.50,
                          child: Container(
                            width: 336,
                            height: 46,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 28.0, top: 11),
                              child: Opacity(
                                opacity: 0.40,
                                child: Text(
                                  'Phone number*',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w300,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 336,
                        height: 303,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 35,
                              child: Opacity(
                                opacity: 0.50,
                                child: Container(
                                  width: 159,
                                  height: 46,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 28.0, top: 11),
                                    child: Opacity(
                                      opacity: 0.40,
                                      child: Text(
                                        'Pincode*',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w300,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 109,
                              child: Container(
                                width: 159,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Opacity(
                                        opacity: 0.50,
                                        child: Container(
                                          width: 159,
                                          height: 46,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 28,
                                      top: 11,
                                      child: Opacity(
                                        opacity: 0.40,
                                        child: Text(
                                          'City*',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 131,
                                      top: 13,
                                      child: Opacity(
                                        opacity: 0.40,
                                        child: Container(
                                          width: 14,
                                          height: 14,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 14,
                                                  height: 14,
                                                  child:
                                                      const Stack(children: []),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 177,
                              top: 109,
                              child: Container(
                                width: 159,
                                height: 46,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Opacity(
                                        opacity: 0.50,
                                        child: Container(
                                          width: 159,
                                          height: 46,
                                          decoration: ShapeDecoration(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                              side: const BorderSide(width: 1),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Positioned(
                                      left: 28,
                                      top: 11,
                                      child: Opacity(
                                        opacity: 0.40,
                                        child: Text(
                                          'State*',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w300,
                                            height: 0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 40,
                              child: Container(
                                width: 336,
                                height: 263,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 143,
                                      child: Container(
                                        width: 336,
                                        height: 120,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 336,
                                                height: 46,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Opacity(
                                                        opacity: 0.50,
                                                        child: Container(
                                                          width: 336,
                                                          height: 46,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side:
                                                                  const BorderSide(
                                                                      width: 1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const Positioned(
                                                      left: 28,
                                                      top: 11,
                                                      child: Opacity(
                                                        opacity: 0.40,
                                                        child: Text(
                                                          'House No., Building Name*',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 16,
                                                            fontFamily: 'Inter',
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            height: 0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 74,
                                              child: Container(
                                                width: 336,
                                                height: 46,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Opacity(
                                                        opacity: 0.50,
                                                        child: Container(
                                                          width: 336,
                                                          height: 46,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              side:
                                                                  const BorderSide(
                                                                      width: 1),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 28,
                                                      top: 11,
                                                      child: Container(
                                                        width: 286,
                                                        height: 19,
                                                        child: Stack(
                                                          children: [
                                                            const Positioned(
                                                              left: 0,
                                                              top: 0,
                                                              child: Opacity(
                                                                opacity: 0.40,
                                                                child: Text(
                                                                  'Area, colony*',
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        16,
                                                                    fontFamily:
                                                                        'Inter',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                    height: 0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Positioned(
                                                              left: 272,
                                                              top: 2,
                                                              child: Opacity(
                                                                opacity: 0.40,
                                                                child:
                                                                    Container(
                                                                  width: 14,
                                                                  height: 14,
                                                                  clipBehavior:
                                                                      Clip.antiAlias,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Container(
                                                                        width:
                                                                            14,
                                                                        height:
                                                                            14,
                                                                        child: const Stack(
                                                                            children: []),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 177,
                                      top: 0,
                                      child: Container(
                                        width: 159,
                                        height: 30,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 159,
                                                height: 30,
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFF018297),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 5,
                                              top: 3,
                                              child: Container(
                                                width: 155,
                                                height: 24,
                                                child: Stack(
                                                  children: [
                                                    const Positioned(
                                                      left: 25,
                                                      top: 3,
                                                      child: Text(
                                                        'Use my location',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 16,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 24,
                                                        height: 24,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: const Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                '+ Add Alternate Phone Number',
                                style: TextStyle(
                                  color: Color(0xFF03A0D1),
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
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        child: Text(
                          '+ Add Nearby Famous Shop/mall/Landmark',
                          style: TextStyle(
                            color: Color(0xFF03A0D1),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Container(
                        width: 198,
                        height: 50,
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 0,
                              top: 0,
                              child: Text(
                                'Type of address',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 2,
                              top: 25,
                              child: Container(
                                width: 196,
                                height: 25,
                                padding: const EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 176,
                                      height: 25,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 80,
                                              height: 25,
                                              decoration: ShapeDecoration(
                                                color: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(13),
                                                ),
                                                shadows: [
                                                  const BoxShadow(
                                                    color: Color(0xFF018297),
                                                    blurRadius: 4,
                                                    offset: Offset(0, 0),
                                                    spreadRadius: 0,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 13,
                                            top: 5,
                                            child: Container(
                                              width: 53,
                                              height: 15,
                                              child: Stack(
                                                children: [
                                                  const Positioned(
                                                    left: 18,
                                                    top: 0,
                                                    child: Text(
                                                      'Home ',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily: 'Inter',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 3,
                                                    child: Container(
                                                      width: 9,
                                                      height: 9,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          const BoxDecoration(),
                                                      child: const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 96,
                                            top: 0,
                                            child: Container(
                                              width: 80,
                                              height: 25,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 80,
                                                      height: 25,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color: Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(13),
                                                        ),
                                                        shadows: [
                                                          const BoxShadow(
                                                            color: Color(
                                                                0x3F000000),
                                                            blurRadius: 4,
                                                            offset:
                                                                Offset(0, 0),
                                                            spreadRadius: 0,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 16,
                                                    top: 5,
                                                    child: Container(
                                                      width: 48,
                                                      height: 15,
                                                      child: Stack(
                                                        children: [
                                                          const Positioned(
                                                            left: 17,
                                                            top: 0,
                                                            child: Text(
                                                              'Work',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Inter',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 0,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 1,
                                                            child: Container(
                                                              width: 12,
                                                              height: 12,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child:
                                                                  const Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [],
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Center(
                        child: Container(
                          width: 213,
                          height: 28,
                          decoration: ShapeDecoration(
                            color: const Color(0xFF018297),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          child: const Center(
                            child: Text(
                              'Save Address',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
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
      ),
    );
  }
}
