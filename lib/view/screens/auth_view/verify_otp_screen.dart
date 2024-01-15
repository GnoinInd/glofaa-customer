import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glofa_customer/view/widgets/button_view/textbutton.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../../../model/utils/resource/dimensions_resource.dart';
import '../../../model/utils/resource/image_resource.dart';
import '../../../model/utils/resource/style_resource.dart';
import '../../../view_model/controllers/auth_controller/verify_otp_controller.dart';
import '../../widgets/button_view/common_button.dart';
import '../base_view/base_view_screen.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewControl: VerifyOtpController(),
        appbarPerimeter: AppbarPerimeter(
          title: "SignUp",
        ),
        onPageBuilder: (BuildContext context, VerifyOtpController controller) => _buildVerifyOtpView(context,controller));
  }
}
Widget _buildVerifyOtpView(BuildContext context, VerifyOtpController controller){
  return Container(
    decoration: BoxDecoration(
      // image: DecorationImage(
      //     image: AssetImage(ImageResource.instance.backgroundImage),
      //     fit: BoxFit.fill
      // ),
    ),
    child:ListView(
      padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Text(
          "Enter verification code",
          style: StyleResource.instance.styleBold(DimensionResource.fontSizeOverLarge, ColorResource.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.02,),
        Text(
          "We have sent you a 4 digit verification code on",
          style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.01,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "+91-${"mobile_no"??""}",
              style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.black).copyWith(letterSpacing: 1),
              textAlign: TextAlign.center,
            ),
            const SizedBox(width:4,),
            InkWell(
              onTap: ()=>Get.back(),
              child: SizedBox(
                height:14,
                width: 14,
                child: Image.asset(ImageResource.instance.penIcon),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30,),
        Center(
          child: PinCodeTextField(
            hideDefaultKeyboard: false,
            highlightAnimation: true,
            autofocus: false,
            controller: controller.otpController.value,
            hideCharacter: false,
            highlight: true,
            defaultBorderColor: ColorResource.borderColor,
            hasTextBorderColor: ColorResource.borderColor,
            pinBoxColor: Colors.transparent,
            maxLength: 4,
            highlightColor:ColorResource.mainColor,
            pinBoxBorderWidth: 1,
            pinBoxRadius: 10,
            pinBoxWidth: 46,
            pinBoxHeight: 36,
            hasUnderline: false,
            pinBoxOuterPadding: const EdgeInsets.symmetric(horizontal: 10),
            pinTextStyle:StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.black),
            pinTextAnimatedSwitcherTransition: ProvidedPinBoxTextAnimation.awesomeTransition,
            pinTextAnimatedSwitcherDuration:const  Duration(milliseconds: 300),
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.refresh,size:18,),
            Text(
              "Resend in",
              style: StyleResource.instance.styleRegular(DimensionResource.fontSizeDefault, ColorResource.black),
              textAlign: TextAlign.center,
            ),
            Obx(() {
              return Visibility(
                  visible:
                  controller.start.value != 0 ? true : false,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: " 0:${controller.start}",
                            style:StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.glofagreenresendcolor)),
                      ],
                    ),
                  ));
            }),
            Obx(() => Visibility(
                visible: controller.start.value == 0 ? true : false,
                child: textBottomWithoutUnderLine("".tr, controller.resendOtp)))
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Obx(()=>  CommonButton(
          height: 36,
          width: 140,
          text: "Login",color: ColorResource.glofabluecolor,onPressed: controller.checkOtp,loading: controller.isLoading.value,),),
      ],
    ),
  );
}
