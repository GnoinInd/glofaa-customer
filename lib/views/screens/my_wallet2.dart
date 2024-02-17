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
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, bottom: 17),
                  child: Row(
                    children: [
                      Image.asset('assets/images/left.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 18.0),
                        child: Text(
                          'My Wallet',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 159,
                  decoration: BoxDecoration(
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
                              Text(
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
                                    Text(
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
                                    Text(
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
                    decoration: BoxDecoration(
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
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 18),
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
                                  padding: const EdgeInsets.only(
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
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 21, bottom: 21),
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
                      Text(
                        'I have Glofaa credits. What happens to them\nnow?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 11.0, bottom: 23),
                        child: Text(
                          'All Glofaa Credits have been converted to Glofaa cash. They\nare applicable on all services.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'What is Glofaa cash?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 24),
                        child: Text(
                          'Glofaa cash is given by us as part of our customer\nexperience programs. It is redeemable across all\ncategories and is valid for 1 year from date of issue.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'What is Glofaa Rewards?',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 24),
                        child: Text(
                          'Glofaa reward points are given by us as part of \npromotional campaigns so that users like you can\ntry out our flagship services. They are applicable\non selected categories only as mentioned on the\nrewards. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'Are there any other important terms and\nconditions? \n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 26),
                        child: Text(
                          'Yes: 1. Reward point can’t be clubbed with other \nongoing Glofaa offers; however third party offers like\nAmazon Pay can be combined. 2. Locked data slots\ncan’t be unlock using rewards/ Glofaa cash; but you can\nuse your rewards after service on the final bill after\nservice delivery in such cases. 3. Rewards will expire\nirrespective of service delivery date - the expiry date\nwill not change even if services delivery window is long.\nIt is thus adviced to use pre - payment option to avail\nrewards in such cases. 4. Rewards/Cash won’t be \napplicable on cash payments.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const Divider(),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 12.0, top: 21, bottom: 21),
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
      ),
    );
  }
}
