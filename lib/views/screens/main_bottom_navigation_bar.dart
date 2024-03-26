import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/screens/account.dart';
import 'package:glofaa_customer/views/screens/profile_page.dart';
import 'package:glofaa_customer/views/screens/your_cart1.dart';
import 'package:glofaa_customer/views/screens/notification_preferences.dart';
import 'package:glofaa_customer/views/screens/browsing_history1.dart';

void main() {
  runApp(MainBottomNavigationBar());
}

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  List pages = [
    BrowsingHistory1(),
    NotificationPreferences(),
    YourCart(),
    ProfilePage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black.withOpacity(0.8),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 34,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                  size: 34,
                ),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 34,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 34,
                ),
                label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
