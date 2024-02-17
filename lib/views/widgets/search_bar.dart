import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        top: 16,
      ),
      child: Container(
        alignment: Alignment.centerLeft,
        width: 310,
        height: 32,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          shadows: [
            const BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 13,
              ),
            ),
            Expanded(
              child: Container(
                child: Opacity(
                  opacity: 0.70,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Search.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Search Glofaa.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
