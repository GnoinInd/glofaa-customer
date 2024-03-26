import 'package:flutter/material.dart';
import 'package:glofaa_customer/views/widgets/search_bar.dart'
    as CustomSearchBar;
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Show the bottom sheet automatically when the widget is built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showModalBottomSheet(
        backgroundColor: Colors.transparent,
        constraints: const BoxConstraints(maxHeight: 700),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Container(
            // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            width: double.infinity,
            height: 800,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 62,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Colors.black.withOpacity(0.25),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 111.80,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Cleaning & Pest Control',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/Rectangle722.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Bathroom\n& kitchen\n cleaning',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/Rectangle723.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Full Home \n Cleaning \n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/Rectangle724.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          ' Sofa &\n Carpet\nCleaning',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/Rectangle724.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            ' Sofa &\n Carpet\nCleaning',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/images/Rectangle722.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Bathroom\n& kitchen\n cleaning',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/Rectangle723.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Full Home \n Cleaning \n',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset('assets/images/Rectangle724.png'),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          ' Sofa &\n Carpet\nCleaning',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: [
                          Image.asset('assets/images/Rectangle724.png'),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            ' Sofa &\n Carpet\nCleaning',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      );
    });

    return const MaterialApp(
      home: SafeArea(
        child: Scaffold(),
      ),
    );
  }
}
