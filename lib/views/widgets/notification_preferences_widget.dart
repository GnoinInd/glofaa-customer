import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationPreferencesWidget extends StatefulWidget {
  final String title_1;
  final String title_2;

  const NotificationPreferencesWidget(
      {required this.title_1, required this.title_2});

  @override
  State<NotificationPreferencesWidget> createState() =>
      _NotificationPreferencesWidgetState();
}

class _NotificationPreferencesWidgetState
    extends State<NotificationPreferencesWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Row(
        children: [
          SvgPicture.asset('assets/svg_images/green_tick.svg'),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title_1,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    widget.title_2,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Image.asset('assets/images/downward_arrow.png')
        ],
      ),
    );
  }
}
