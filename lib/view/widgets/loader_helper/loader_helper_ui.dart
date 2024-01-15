import 'package:flutter/cupertino.dart';
import 'package:glofa_customer/model/utils/resource/color_resource.dart';
Widget loaderHelperUi({double ?radius,Key ?key,Color ?loaderColor}) {
  return  Center(
    child: CupertinoActivityIndicator(
      key: key??const Key(""),
      animating: true,
      color: loaderColor??ColorResource.mainColor,
      radius:radius?? 25,

    ),
  );
}
