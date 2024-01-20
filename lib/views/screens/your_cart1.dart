import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/widgets/search_bar.dart'
    as CustomSearchBar;
import 'package:glofaa_customer/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/my_icons.dart';

void main() {
  runApp(const YourCart());
}

class YourCart extends StatelessWidget {
  const YourCart({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: 232,
            decoration: BoxDecoration(
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
              children: [
                Row(
                  children: [
                    CustomSearchBar.SearchBar(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: SvgPicture.asset(
                        'assets/svg_images/cart.svg',
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'your cart',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 42,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 89,
                        height: 71,
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          'assets/images/glofaa_cart.png',
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Glofaa Cart is empty',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Pick up where you left off',
                            style: TextStyle(
                              color: Color(0xFF03A0D1),
                              fontSize: 14,
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
              ],
            ),
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
      ),
    );
  }
}
