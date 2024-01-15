
import 'package:flutter/material.dart';
import 'package:glofa_customer/model/utils/resource/dimensions_resource.dart';
import 'package:glofa_customer/model/utils/resource/style_resource.dart';


import '../../../model/utils/resource/color_resource.dart';

Widget textBottom(String text ,VoidCallback onPressed,) {
  return GestureDetector(
      onTap: onPressed,
      child: Text(text, style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.textButtonColor)));
}
Widget textBottomWithoutUnderLine(String text ,VoidCallback onPressed,) {
  return GestureDetector(
      onTap: onPressed,
      child: Text(text, style:StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.textButtonColor)));
}