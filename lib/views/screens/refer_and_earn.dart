import 'package:glofaa_customer/views/widgets/app_bar_without_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dotted_line/dotted_line.dart';

void main() {
  runApp(const ReferAndEarn());
}

class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({super.key});

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWithoutSearchBar(title: 'Refer & Earn'),
              Container(
                width: double.infinity,
                height: 287,
                decoration: const BoxDecoration(
                  color: Color(0xFFDEF7F9),
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
                    Positioned(
                      left: 12,
                      top: 24,
                      child: Image.asset(
                        'assets/images/gift_box_red.png',
                      ),
                    ),
                    const Positioned(
                      left: 112,
                      top: 24,
                      child: Text(
                        'Refer and get FREE services',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 112,
                      top: 60,
                      child: Text(
                        'Invite your friends to try Glofaa',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 112,
                      top: 77,
                      child: Text(
                        '\nservices. They get instant',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 290,
                      top: 73,
                      child: Row(
                        children: [
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
                    ),
                    const Positioned(
                      left: 330,
                      top: 77,
                      child: Text(
                        'off.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 112,
                      top: 94,
                      child: Text(
                        'you win once they take a',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 290,
                      top: 94,
                      child: Text(
                        'service.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 175,
                      left: (MediaQuery.of(context).size.width - 200) / 2,
                      child: Container(
                        height: 18,
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 11,
                              height: 11,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 14,
                              height: 14,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 16,
                              height: 16,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0),
                              child: Text(
                                'Refer via',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              width: 16,
                              height: 16,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 14,
                              height: 14,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 11,
                              height: 11,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 230,
                      left: (MediaQuery.of(context).size.width - 300) / 2,
                      child: Container(
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/svg_images/logo_whatsapp.svg'),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'Whatsapp',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/svg_images/logo_messenger.svg'),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'Messenger',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/svg_images/logo_instagram.svg'),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'Instagram ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(
                                    'assets/svg_images/logo_link.svg'),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'Copy link ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 23.0, horizontal: 23),
                child: Container(
                  width: double.infinity,
                  height: 167,
                  decoration: ShapeDecoration(
                    color: const Color(0x3D77DCE5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 28,
                        top: 16,
                        child: Text(
                          'How it works?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            left: 28,
                            top: 47,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 37,
                            top: 64,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(1.57),
                              child: Container(
                                width: 20,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD9D9D9),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 28,
                            top: 83,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                              child: const Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 37,
                            top: 100,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(1.57),
                              child: Container(
                                width: 20,
                                decoration: const ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFD9D9D9),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 28,
                            top: 119,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF018297),
                                shape: OvalBorder(),
                              ),
                              child: const Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
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
                      const Positioned(
                        left: 53,
                        top: 47,
                        child: Text(
                          'Invite your friends & get rewarded',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 53,
                        top: 82,
                        child: Row(
                          children: [
                            const Text(
                              'They get',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                              ),
                              child: SvgPicture.asset(
                                  'assets/svg_images/orange_rupee.svg'),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0),
                              child: Text(
                                '100',
                                style: TextStyle(
                                  color: Color(0xFFF45540),
                                  fontSize: 11.59,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Text(
                              'on their first service',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 53,
                        top: 115,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'You get',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3.0),
                              child: SvgPicture.asset(
                                  'assets/svg_images/orange_rupee.svg'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 3.0),
                              child: Text(
                                '100',
                                style: TextStyle(
                                  color: Color(0xFFF45540),
                                  fontSize: 11.59,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            const Text(
                              'once their service is completed',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
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
                padding: const EdgeInsets.only(left: 23.0, right: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 4,
                          height: 3.53,
                          decoration: const ShapeDecoration(
                            color: Color(0xFF03A0D1),
                            shape: OvalBorder(),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Term and conditions',
                          style: TextStyle(
                            color: Color(0xFF03A0D1),
                            fontSize: 10,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 28),
                      child: Row(
                        children: [
                          Container(
                            width: 4,
                            height: 3.53,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF03A0D1),
                              shape: OvalBorder(),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'FAQs',
                            style: TextStyle(
                              color: Color(0xFF03A0D1),
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text(
                      'You are yet to earn any scratch cards ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0, bottom: 25),
                      child: Text(
                        'Start referring to get surprises',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    DottedLine(
                      dashColor: Colors.black38,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 33.0),
                      child: Row(
                        children: [
                          Image.asset('assets/images/gift_box_yellow.png'),
                          Row(
                            children: [
                              const Text(
                                'Earn',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 5,
                                ),
                                child: SvgPicture.asset(
                                    'assets/svg_images/orange_rupee.svg'),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.0),
                                child: Text(
                                  '100',
                                  style: TextStyle(
                                    color: Color(0xFFF45540),
                                    fontSize: 11.59,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const Text(
                                'on every successful referral',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              )
                            ],
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
    );
  }
}
