import 'package:flutter/material.dart';

class ChooseLanguageContainerWidget extends StatefulWidget {
  final String language;

  const ChooseLanguageContainerWidget({required this.language});

  @override
  State<ChooseLanguageContainerWidget> createState() =>
      _ChooseLanguageContainerWidgetState();
}

class _ChooseLanguageContainerWidgetState
    extends State<ChooseLanguageContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 76,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 5, right: 28),
            child: Container(
              width: 34,
              height: 34,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Text(
            widget.language,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ],
      ),
    );
  }
}
