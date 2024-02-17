import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/widgets/glofaa_technology_text_widget.dart';

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
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0, bottom: 17),
                    child: Row(
                      children: [
                        Image.asset('assets/images/left.png'),
                        const Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text(
                            'Glofaa Technology',
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
                  Container(
                    width: double.infinity,
                    height: 64,
                    decoration: const BoxDecoration(
                      color: Color(0xFF018297),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 60.0),
                          child: Text(
                            'Glofaa\nTechnology',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Image.asset(
                              'assets/images/mingcute_menu_line.png'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Referrals: FAQs',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomInfoWidget(
                    title: 'Who all I can refer?',
                    content:
                        'Anyone who hasn’t tried that service before. Or anyone\nwho hasn’t tried any Glofaa service before.',
                  ),
                  const CustomInfoWidget(
                    title: 'What will I earn by referring?',
                    content:
                        'Redeemable amount on all Glofaa services is Rs. 100.',
                  ),
                  const CustomInfoWidget(
                    title: 'Will these rewards have an expiry \nduration?',
                    content:
                        'Yes. Each reward will have an expiry period which is visible in the wallet section.',
                  ),
                  const CustomInfoWidget(
                    title:
                        'where are scratch cards awarded? When \ncan i redeem them?',
                    content:
                        'Scratch cards are awarded when your friend signs up using your referral link or is already signed up while using your referral link. Scratch card gets unlocked when your friend successfully takes a service. The Glofaa reward in this scratch card can be redeemed instantly.If it is a third party reward, terms and conditions of the third party will apply.',
                  ),
                  const CustomInfoWidget(
                    title: 'How many scratch card scan you earn?',
                    content:
                        'You can refer a maximum of 10 people and earn 10 scratch cards from referrals.',
                  ),
                  const CustomInfoWidget(
                    title:
                        'I already have some Glofaa credits. Can I \nredeem both? ',
                    content:
                        'Glofaa credits will take precedence over Glofaa rewards.',
                  ),
                  const CustomInfoWidget(
                    title: 'Can i gift these rewards?',
                    content:
                        'No. These rewardsare non transferrable andpromotional discounts which can be only used partly by the customer these are intended for.',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
