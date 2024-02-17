import 'package:flutter/material.dart';

class AppBarWithSearchBar extends StatefulWidget {
  final String title;

  const AppBarWithSearchBar({required this.title});

  @override
  State<AppBarWithSearchBar> createState() => _AppBarWithSearchBarState();
}

class _AppBarWithSearchBarState extends State<AppBarWithSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, top: 15),
        child: Row(
          children: [
            Image.asset('assets/images/left.png'),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 23.0),
              child: Image.asset('assets/images/Search.png'),
            ),
          ],
        ),
      ),
    );
  }
}
