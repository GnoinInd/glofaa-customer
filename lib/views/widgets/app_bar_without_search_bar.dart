import 'package:flutter/material.dart';

class AppBarWithoutSearchBar extends StatefulWidget {
  final String title;

  const AppBarWithoutSearchBar({required this.title});

  @override
  State<AppBarWithoutSearchBar> createState() => _AppBarWithoutSearchBarState();
}

class _AppBarWithoutSearchBarState extends State<AppBarWithoutSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
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
            )
          ],
        ),
      ),
    );
  }
}
