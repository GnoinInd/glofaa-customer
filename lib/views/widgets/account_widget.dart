import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountWidget extends StatelessWidget {
  final String title;
  final String svgAsset;
  const AccountWidget({required this.title, required this.svgAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
              size: 10,
            ),
          ),
        ],
      ),
    );
  }
}
