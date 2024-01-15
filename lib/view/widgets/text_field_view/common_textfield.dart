import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../../../model/utils/resource/decoration_resource.dart';
import '../../../model/utils/resource/dimensions_resource.dart';
import '../../../model/utils/resource/style_resource.dart';
import '../log_print/log_print_condition.dart';


class CommonTextField extends StatelessWidget {
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
  final bool? showShadow;
  final bool? passwordView;
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

  const CommonTextField(
      {Key? key,
      this.validator,
      this.keyboardType,
      this.textInputAction,
      this.textCapitalization,
      this.onFieldSubmitted,
      this.initialValue,
      this.hintText,
      this.errorText,
      this.passwordView,
      this.showShadow,
      this.iconData,
      this.obscureText,
      this.prefixIcon,
      this.inputFormatters,
      this.controller,
      this.containerColor,
      this.cursorColor,
      this.outLineColor,
      this.hintColor,
      this.errorColor,
      this.maxLength,
      this.suffixIcon,
      this.onValueChanged,
      this.style,
      this.hintStyle,
      this.readOnly})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    RxBool passwordVisible = true.obs;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          decoration:showShadow==true? BoxDecoration(
              boxShadow: DecorationResource.instance.containerBoxShadow(),
              color:  ColorResource.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: ColorResource.black,
              )): BoxDecoration(
              color:  ColorResource.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                color: ColorResource.grey,
              )),
          child: Obx((){
            logPrint(passwordVisible.value);
            return TextFormField(
              obscureText: passwordView == true ? passwordVisible.value : false,
              controller: controller,
              readOnly: readOnly ?? false,
              inputFormatters: inputFormatters,
              textInputAction:textInputAction??TextInputAction.go,
              keyboardType: keyboardType,
              maxLength: maxLength,
              onChanged: onValueChanged,
              cursorColor: ColorResource.mainColor,
              style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),
              onFieldSubmitted: onFieldSubmitted,
              decoration: InputDecoration(
                  prefixIcon: prefixIcon,
                  hintText: hintText,
                  counterText: "",
                  suffixIcon: passwordView ?? false
                      ? InkWell(
                    onTap: () => passwordVisible.value = !passwordVisible.value,
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Icon(
                          passwordVisible.value ? Icons.visibility_off : Icons.visibility,
                          color: ColorResource.grey_3,
                          size: 20,
                        ),
                      ),
                    ),
                  )
                      : const SizedBox(),
                  hintStyle: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    bottom: 14,
                    left: 16,
                    top: prefixIcon != null ? 12 : 10,
                    right: 15,
                  ),
                  errorText: "",
                  errorStyle: const TextStyle(
                    height: 0,
                  )),
              validator: validator,
            );
          }),
        ),
        errorText == null || errorText == ""
            ? const SizedBox()
            : Padding(
                padding: const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
                child: Text(
                  errorText!,
                  style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmall, ColorResource.errorColor),
                  textAlign: TextAlign.start,
                ),
              ),
      ],
    );
  }
}
