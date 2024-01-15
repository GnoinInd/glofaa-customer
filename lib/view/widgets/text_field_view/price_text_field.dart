import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glofa_customer/model/utils/resource/dimensions_resource.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../../../model/utils/resource/style_resource.dart';



class PriceTextField extends StatelessWidget {
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextCapitalization? textCapitalization;
  final Function(String)? onFieldSubmitted;
  final String? initialValue;
  final String? hintText;
  final String? errorText;
  final String? iconData;
  final bool? obscureText;
  final Widget? prefixIcon;
  final bool? readOnly;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final Color? containerColor;
  final Color? cursorColor;
  final Color? outLineColor;
  final Color? hintColor;
  final Color? errorColor;
  final int? maxLength;
  final Widget? suffixIcon;
  final Function(String)? onValueChanged;
  final TextStyle? style;
  final TextStyle? hintStyle;

  const PriceTextField({Key? key, this.validator, this.keyboardType, this.textInputAction, this.textCapitalization, this.onFieldSubmitted, this.initialValue, this.hintText, this.errorText, this.iconData, this.obscureText, this.prefixIcon, this.inputFormatters, this.controller, this.containerColor, this.cursorColor, this.outLineColor, this.hintColor, this.errorColor, this.maxLength,this.suffixIcon, this.onValueChanged, this.style, this.hintStyle, this.readOnly}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin:const EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
          color: containerColor ?? ColorResource.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: ColorResource.borderColor,width: 1.5)
      ),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly ?? false,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp("[0-9 ]")),
          LengthLimitingTextInputFormatter(10),
        ],
        textInputAction: textInputAction,
        keyboardType: TextInputType.number,
        maxLength: 10,
        onChanged: onValueChanged,
        cursorColor: ColorResource.black,
        style: StyleResource.instance.styleRegular(DimensionResource.fontSizeLarge, ColorResource.black),
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
            prefix: prefixIcon,
            hintText: hintText,
            counterText: "",
            hintStyle: StyleResource.instance.styleLight(DimensionResource.fontSizeLarge, ColorResource.grey_3),
            border: InputBorder.none,
            contentPadding:  EdgeInsets.only(bottom: 10,left: 10,top: prefixIcon!=null?5:1),
            errorText: "",
            errorStyle: const TextStyle(
              height: 0,
            )),
        validator: validator,
      ),
    );
  }

}