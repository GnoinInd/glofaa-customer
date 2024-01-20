import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
