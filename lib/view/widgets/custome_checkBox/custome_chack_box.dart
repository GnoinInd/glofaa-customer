import 'package:flutter/material.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../../../model/utils/resource/image_resource.dart';




class CustomCheckBox extends StatelessWidget {
  final VoidCallback ?onTap;
  final bool ?value;
  final double ?height;
  final double ?width;
  const CustomCheckBox({Key? key,this.value,this.onTap,this.height,this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: height,
          width: width,
          padding:const EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color:!value!? ColorResource.white:ColorResource.mainColor,
              border: Border.all(color:!value!? ColorResource.borderColor:ColorResource.mainColor,width: 1)
          ),
          child:Image.asset(ImageResource.instance.parlour,height: 20,color:ColorResource.white,)

      ),
    );
  }
}
