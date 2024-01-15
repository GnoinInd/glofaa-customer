import 'package:flutter/material.dart';
import 'package:glofa_customer/model/utils/resource/dimensions_resource.dart';
import 'package:glofa_customer/model/utils/resource/style_resource.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../loader_helper/loader_helper_ui.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool loading;
  final bool? showBorder;
  final Color color;
  final Color ?borderColor;
  final Color ?textColor;
  final Color ?loaderColor;
  final double ?width;
  final double ?height;
  final double ?textSize;

  const CommonButton({Key? key, required this.text, required this.loading, required this.onPressed, required this.color,this.textColor,this.width,this.showBorder,this.height,this.borderColor,this.textSize,this.loaderColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height??55,
        width: width??double.infinity,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(10),border:showBorder==true? Border.all(color: ColorResource.mainColor,width: 2):Border.all(color: borderColor??color,width: 1.5)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: MaterialButton(
              onPressed: onPressed,
              child: Center(
                child: loading == true
                    ? loaderHelperUi(radius:10,loaderColor:loaderColor?? ColorResource.white)
                    : Text(text,
                    style: StyleResource.instance.styleMedium(
                        textSize?? DimensionResource.fontSizeExtraLarge,
                        textColor?? ColorResource.white)),
              )),
        ));
  }
}
