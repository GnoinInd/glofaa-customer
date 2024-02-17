import 'package:flutter/material.dart';

class CustomInfoWidget extends StatelessWidget {
  final String title;
  final String content;

  const CustomInfoWidget({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const Spacer(),
              Image.asset('assets/images/downward_arrow.png'),
            ],
          ),
          Text(
            '\n$content',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 13.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
