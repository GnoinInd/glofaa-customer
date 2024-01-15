import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../../../model/utils/resource/dimensions_resource.dart';
import '../../../model/utils/resource/style_resource.dart';


class BottomSheetModel {
  final bool isDismissible;
  final bool isScrollControlled;
  final bool ?enableDrag;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? titlePadding;
  final Widget child;
  final VoidCallback ?onBack;
  final String? title;
  final TextStyle? titleStyle;
  final double? height;
  final bool? showCloseButton;
  final Color color;

  BottomSheetModel(
      {required this.isDismissible,
        required this.isScrollControlled,
        this.borderRadius,
        this.enableDrag,
        this.padding,
        this.titlePadding,
        this.titleStyle,
        this.onBack,
        this.title,
        this.showCloseButton,
        this.height,
        required this.color,
        required this.child});
}

extension Present on BottomSheetModel {
  Future<dynamic> presentDetail(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: isScrollControlled,
        barrierColor: Colors.black.withOpacity(0.4),
        backgroundColor: Colors.transparent,
        isDismissible: isDismissible,
        enableDrag: enableDrag??true,
        context: context,
        builder: (context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: ClipRRect(
              borderRadius: borderRadius ?? BorderRadius.zero,
              child: Container(
                height: height ?? MediaQuery.of(context).size.height*.6,
                decoration: BoxDecoration(
                    color: color,
                    boxShadow: const [
                      BoxShadow(
                          color: ColorResource.grey_2,
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: Offset(0, -2))
                    ],
                    borderRadius: borderRadius),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:titlePadding?? const EdgeInsets.only(left: DimensionResource.marginSizeLarge, right: DimensionResource.marginSizeLarge,top: DimensionResource.marginSizeDefault, bottom:DimensionResource.marginSizeDefault ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible : showCloseButton == true ? true:false,
                            child: const SizedBox(
                              width: 24,
                              height: 24,
                            ),
                          ),
                          Expanded(child: Text(title??"",style:titleStyle?? StyleResource.instance.styleRegular(DimensionResource.fontSizeDoubleExtraLarge, ColorResource.black))),
                          Visibility(
                            visible : showCloseButton == false ? false:true,
                            child: InkWell(
                              onTap:onBack?? () {Get.back();},
                              child: const Icon(
                                Icons.close,
                                size: 24,
                                color: ColorResource.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    child,
                  ],
                ),
              ),
            ),
          );
        });
  }
}

