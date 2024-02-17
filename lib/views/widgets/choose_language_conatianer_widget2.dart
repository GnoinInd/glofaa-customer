import 'package:flutter/material.dart';

class ChooseLanguageContainerWidget2 extends StatefulWidget {
  final String image;

  const ChooseLanguageContainerWidget2({required this.image});

  @override
  State<ChooseLanguageContainerWidget2> createState() =>
      _ChooseLanguageContainerWidget2State();
}

class _ChooseLanguageContainerWidget2State
    extends State<ChooseLanguageContainerWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 76,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        shadows: const [
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
              decoration: const ShapeDecoration(
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
          Container(
            width: 68,
            height: 27.58,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
