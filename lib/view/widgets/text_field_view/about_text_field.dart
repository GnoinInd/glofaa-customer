import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../../../model/utils/resource/decoration_resource.dart';
import '../../../model/utils/resource/dimensions_resource.dart';
import '../../../model/utils/resource/style_resource.dart';



class AboutUsTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final FormFieldValidator<String>? validator;
  final String? error;
  final bool? showShadow;
  const AboutUsTextField({Key? key, this.controller, this.hintText, this.validator, this.error , this.showShadow,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          decoration: showShadow==true? BoxDecoration(
              boxShadow: DecorationResource.instance.containerBoxShadow(),
              color:  ColorResource.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: ColorResource.borderColor,
              )): BoxDecoration(
              color:  ColorResource.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: ColorResource.borderColor,
              )),
          child: TextFormField(
            controller: controller,
            minLines: 6,
            maxLines: null,

            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.go,
            cursorColor: ColorResource.mainColor,
            inputFormatters: [
              LengthLimitingTextInputFormatter(200),
            ],
            style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText ?? "Please enter your message".tr,
                hintStyle: StyleResource.instance.styleLight(DimensionResource.fontSizeDefault, ColorResource.black),
                contentPadding: const EdgeInsets.only(left: 10, right: 15),
                errorText: "",
                errorStyle: const TextStyle(height: 0,)),
            validator: validator,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
                visible: error == null || error == "" ? false : true,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0, top: 5, bottom: 5),
                  child: Text(
                    error!,
                    style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmall, ColorResource.errorColor),
                    textAlign: TextAlign.start,
                  ),
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text("Maximum 200 Characters".tr,
              style: StyleResource.instance.styleLight(DimensionResource.fontSizeSmall, ColorResource.black).copyWith(height: 1,)),
            ),
          ],
        ),
      ],
    );
  }
}
