import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF018297),
          toolbarHeight: 112,
          title: Padding(
            padding: const EdgeInsets.only(top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Hey! sagar pandey',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                        'assets/images/Instagram_Verification_Badge.png')
                  ],
                ),
                const SizedBox(height: 7.5),
                Row(
                  children: [
                    const Text(
                      'kumar@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    const SizedBox(
                      width: 220,
                    ),
                    SvgPicture.asset('assets/svg_images/pencil.svg'),
                  ],
                ),
                const SizedBox(height: 7.5),
                const Text(
                  '+91 6201983030',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const SizedBox(height: 6),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                buildButtonSection(),
                Container(
                  width: double.infinity,
                  height: 52,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Container(
                          width: 45,
                          height: 43,
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/email.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                'Add/Verify your Email',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              )),
                          SizedBox(height: 6),
                          Text(
                            'Get latest updates of your orders',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 75, top: 12),
                        child: Container(
                            width: 104,
                            height: 24,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF018297),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: const Center(
                              child: Text(
                                'Update',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 52,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Container(
                          width: 45,
                          height: 43,
                          alignment: Alignment.centerLeft,
                          child: Image.asset(
                            'assets/images/handshake.png',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                'Register As Partner',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              )),
                          SizedBox(height: 6),
                          Text(
                            'Install app to become a professional',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 61, top: 12),
                        child: Container(
                            width: 104,
                            height: 24,
                            decoration: ShapeDecoration(
                              color: const Color(0xFF018297),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            child: const Center(
                              child: Text(
                                'Update',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 220,
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Account Setting',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: ListView(
                            children: [
                              buildListItem(
                                context,
                                'assets/svg_images/my_profile.svg', // Replace with your SVG asset path
                                'Edit profile',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/my_wallet.svg', // Replace with your SVG asset path
                                'My wallet',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/manage_addresses.svg', // Replace with your SVG asset path
                                'Manage Addresses',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/select_languages.svg', // Replace with your SVG asset path
                                'Select Languages',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/notification_settings.svg', // Replace with your SVG asset path
                                'Notification Settings',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'My Activity',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: ListView(
                            children: [
                              buildListItem(
                                context,
                                'assets/svg_images/scheduled_booking.svg', // Replace with your SVG asset path
                                'Scheduled Booking',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/my_booking.svg', // Replace with your SVG asset path
                                'My Booking',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/my_subscription.svg', // Replace with your SVG asset path
                                'My Subscription',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/reviews.svg', // Replace with your SVG asset path
                                'Reviews',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/question_answers.svg', // Replace with your SVG asset path
                                'Question & Answers',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/my_rating.svg', // Replace with your SVG asset path
                                'My Rating',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Earn with Glofaa',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: ListView(
                            children: [
                              buildListItem(
                                context,
                                'assets/svg_images/refer_earn.svg', // Replace with your SVG asset path
                                'Refer & Earn',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/share_glofaa.svg', // Replace with your SVG asset path
                                'Share Glofaa',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Payment Options',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: ListView(
                            children: [
                              buildListItem(
                                context,
                                'assets/svg_images/saved_cards.svg', // Replace with your SVG asset path
                                'Saved cards',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/upi.svg', // Replace with your SVG asset path
                                'UPI',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Feedback & information',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: ListView(
                            children: [
                              buildListItem(
                                context,
                                'assets/svg_images/browse_faqs.svg', // Replace with your SVG asset path
                                'Browse FAQs',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/terms_policies.svg', // Replace with your SVG asset path
                                'Terms & Policies',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Glofaa Technology',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(height: 14),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: ListView(
                            children: [
                              buildListItem(
                                context,
                                'assets/svg_images/about_glofaa.svg', // Replace with your SVG asset path
                                'About Glofaa',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/contact_us.svg', // Replace with your SVG asset path
                                'Contact us',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/blog.svg', // Replace with your SVG asset path
                                'Blog',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                              buildListItem(
                                context,
                                'assets/svg_images/rate_glofaa.svg', // Replace with your SVG asset path
                                'Rate Glofaa',
                                const MyApp(),
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                Container(
                  width: 114,
                  height: 27,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    shadows: [
                      const BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Log out',
                      style: TextStyle(
                        color: Color(0xFFBC1919),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                const Opacity(
                  opacity: 0.30,
                  child: Text(
                    '7.5.28 R371',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (int index) {},
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                height: 24,
                child: Image.asset(
                  'assets/images/home.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 24,
                child: Image.asset(
                  'assets/images/notifications.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 24,
                child: Image.asset(
                  'assets/images/cart.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 24,
                child: Image.asset(
                  'assets/images/profile.png',
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildListItem(
      BuildContext context, String svgAsset, String title, Widget? screen) {
    return GestureDetector(
      onTap: () {
        if (screen != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => screen),
          );
        }
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Use SvgPicture.asset instead of Icon
            SvgPicture.asset(
              '$svgAsset',
              height: 14,
              width: 14,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            const Spacer(),
            if (screen != null)
              const Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                  size: 10,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget buildGradientButton(String text) {
  return Container(
    width: 140,
    height: 33,
    decoration: ShapeDecoration(
      gradient: const LinearGradient(
        begin: Alignment(0.00, 1.00),
        end: Alignment(0, -1),
        colors: [Color(0xFFDCF6F8), Color(0x00DCF6F8)],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      shadows: [
        const BoxShadow(
          color: Color(0xFFace9ef),
          blurRadius: 1,
          offset: Offset(0, 0),
          spreadRadius: 1,
        ),
      ],
    ),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    ),
  );
}

Widget buildButtonSection() {
  return Container(
    width: double.infinity,
    height: 116,
    decoration: const BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Color(0x3F000000),
          blurRadius: 4,
          offset: Offset(0, 0),
          spreadRadius: 0,
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildGradientButton('My Booking'),
            buildGradientButton('Wishlist'),
          ],
        ),
        const SizedBox(
          height: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildGradientButton('Coupons'),
            buildGradientButton('Help Center'),
          ],
        ),
      ],
    ),
  );
}
