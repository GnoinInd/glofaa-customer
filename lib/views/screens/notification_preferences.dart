import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glofaa_customer/views/widgets/app_bar_with_search_bar.dart';
import 'package:glofaa_customer/views/widgets/notification_preferences_widget.dart';

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
              const AppBarWithSearchBar(title: 'Notification Prefrences'),
              Container(
                width: double.infinity,
                height: 60,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Text(
                        'Push',
                        style: TextStyle(
                          color: Color(0xFF018297),
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'In-App',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'SMS',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      Text(
                        'WhatsApp',
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
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.0, top: 13, bottom: 14),
                      child: Text(
                        'Get notification from Glofaa on your mobile ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.30,
                      child: Divider(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 12.0,
                        right: 15,
                      ),
                      child: Column(
                        children: [
                          NotificationPreferencesWidget(
                            title_1: 'My Booking',
                            title_2: 'Latest updates on your orders',
                          ),
                          NotificationPreferencesWidget(
                            title_1: 'Reminders',
                            title_2: 'Price Drops, Back-in-stock Products,etc.',
                          ),
                          NotificationPreferencesWidget(
                            title_1: 'Recommendations by Glofaa',
                            title_2:
                                'Products, offers and curated content based \non your interest',
                          ),
                          NotificationPreferencesWidget(
                            title_1: 'New offers',
                            title_2: 'Top Deals and more',
                          ),
                          NotificationPreferencesWidget(
                            title_1: 'My Glofaa Community',
                            title_2: 'Profile updates, Newsletters, etc.',
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
