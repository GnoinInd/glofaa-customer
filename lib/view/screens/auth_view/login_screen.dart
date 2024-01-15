import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:glofa_customer/model/utils/resource/decoration_resource.dart';
import 'package:glofa_customer/view/screens/auth_view/verify_otp_screen.dart';
import 'package:glofa_customer/view/widgets/text_field_view/regex/regex.dart';

import '../../../model/utils/resource/color_resource.dart';
import '../../../model/utils/resource/dimensions_resource.dart';
import '../../../model/utils/resource/image_resource.dart';
import '../../../model/utils/resource/style_resource.dart';
import '../../../view_model/controllers/auth_controller/login_controllers.dart';
import '../../widgets/custome_checkBox/custome_chack_box.dart';
import '../../widgets/text_field_view/common_textfield.dart';
import '../base_view/base_view_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
        viewControl: LoginController(),
        onPageBuilder: (BuildContext context,LoginController controller)=>_buildLoginView(context,controller));
  }
}
Widget _buildLoginView(BuildContext context,LoginController controller){
  return Container(
    margin: EdgeInsets.only(top:42),      
    child: ListView(
      children: [ Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Image.asset(ImageResource.instance.mekup),
                  SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                  Image.asset(ImageResource.instance.dumbel),

                ],
              ),
              Spacer(),
              Column(
                children: [
                  Image.asset(ImageResource.instance.paint),
                  SizedBox(height: MediaQuery.of(context).size.height *0.04,),
                  Image.asset(ImageResource.instance.towel),
                ],
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.04,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Glofa",style: StyleResource.instance.styleExtraBold(DimensionResource.fontSizeOverLarge, ColorResource.black),),
              Text("Technology",style: StyleResource.instance.style(DimensionResource.fontSizeOverLarge, ColorResource.black),),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.02,),
          Text("Your Home Services Expert",style: StyleResource.instance.style(DimensionResource.fontSizeDefault, ColorResource.black),),
          SizedBox(height: MediaQuery.of(context).size.height *0.01,),
          Text("Quick _ Affordable _ Trusted",style: StyleResource.instance.styleBold(DimensionResource.fontSizeExtraSmalled, ColorResource.grey),),
          SizedBox(height: MediaQuery.of(context).size.height *0.02,),

          _buildNumberRow(context, controller),
          SizedBox(height: MediaQuery.of(context).size.height *0.03,),
          InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> VerifyOtpScreen()));},
            child: Container(
              width: 140,
              height: 36,
              decoration: BoxDecoration(
                color: ColorResource.glofabluecolor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text("SignUp",style: StyleResource.instance.styleBold(DimensionResource.fontSizeDefault, ColorResource.white),),
              ),
            ),
          ),
          Row(
            children: [
              Image.asset(ImageResource.instance.screwman),
              Spacer(),
              Image.asset(ImageResource.instance.paper),
            ],
          )
        ],
      ),
          ],
    ),

  );
  // return Container(
  //   decoration: BoxDecoration(
  //     image: DecorationImage(
  //         image: AssetImage(ImageResource.instance.backgroundImage),
  //         fit: BoxFit.fill
  //     ),
  //   ),
  //   child:ListView(
  //     padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
  //     children: [
  //       SizedBox(height: MediaQuery.of(context).size.height*.1,),
  //       Image.asset(ImageResource.instance.appLogo,height: 90,),
  //       SizedBox(height: MediaQuery.of(context).size.height*.07,),
  //       Center(child: Text("Welcome,",style: StyleResource.instance.styleSemiBold(DimensionResource.fontSizeExtraLarge, ColorResource.black),)),
  //       const SizedBox(height: 5,),
  //       Center(child: Text("Sign in to continue",style: StyleResource.instance.styleLight(DimensionResource.fontSizeLarge, ColorResource.textColor_2),)),
  //       const SizedBox(height: 50,),
  //       _buildNumberRow(context,controller),
  //       const SizedBox(height: 10,),
  //       _buildPrivacyPolicyRow(context,controller),
  //       const SizedBox(height: 30,),
  //       Obx(()=>  CommonButton(text: "Sign in with OTP",color:controller.isPolicyCheck.value? ColorResource.mainColor:ColorResource.lightGrey,onPressed:controller.isPolicyCheck.value? controller.logInTap:(){},loading: controller.isLoading.value,),),        const SizedBox(height: 50,),
  //     ],
  //   ),
  // );
}

Widget _buildNumberRow(BuildContext context,LoginController controller){
  return Form(
    key: controller.formKey,
    child: Obx(()=>Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16,),
          height: 50,
          width: 90,
          decoration: BoxDecoration(
            // boxShadow: DecorationResource.instance.containerBoxShadow(),
              color: ColorResource.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorResource.grey,)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                  child: Image.asset(ImageResource.instance.flagImage,fit: BoxFit.cover,),
              radius: 10,),
              const SizedBox(width: 5),
              Text("+91",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmallTo, ColorResource.blueColor),)
            ],
          ),),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CommonTextField(
              controller: controller.phoneController,
              hintText: "Enter your mobile number",
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9 ]")),
                LengthLimitingTextInputFormatter(10),
              ],
              validator: (value){
                if(value!.isEmpty){
                  controller.phoneError.value ="Please enter your mobile number";
                  return "";
                }else if(!value.isValidNumber()){
                  controller.phoneError.value ="Please enter valid contact number";
                  return "";
                }else if(value.startsWith("1")||value.startsWith("2")||value.startsWith("3")||value.startsWith("4")||value.startsWith("5")||value.startsWith("0")) {
                  controller.phoneError.value = "Please enter valid Indian number";
                  return "";
                }
                else{
                  controller.phoneError.value ="";
                  return null;
                }
              },
              errorText: controller.phoneError.value,
            ),
          ),
        )
      ],
    )),
  );
}

Widget _buildPrivacyPolicyRow(BuildContext context,LoginController controller){
  return Row(
    children: [
      Obx(()=>CustomCheckBox(
        height: 18,
        width: 18,
        onTap: (){
          controller.isPolicyCheck.value=!controller.isPolicyCheck.value;
        },
        value: controller.isPolicyCheck.value,
      ),),
      const SizedBox(width: 10,),
      Text("Accept",style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmall, ColorResource.darkColor),),
      const SizedBox(width:5,),
      //InkWell(onTap: ()=>Get.toNamed(Routes.appContentScreen,arguments: {"title":"Privacy Policy" ,"description":AppConstants.privacyPolicy.value}), child:Text("Privacy Policy",style:  StyleResource.instance.styleMedium(DimensionResource.fontSizeSmall, ColorResource.secondColor),)),
      const SizedBox(width: 5,),
      Text("and",style:  StyleResource.instance.styleRegular(DimensionResource.fontSizeSmall, ColorResource.darkColor),),
      const SizedBox(width: 5,),
     // InkWell(onTap: ()=>Get.toNamed(Routes.appContentScreen,arguments: {"title":"Terms & Conditions" ,"description":AppConstants.tramsAndCondition.value}), child:Text("Terms & Conditions",style: StyleResource.instance.styleMedium(DimensionResource.fontSizeSmall, ColorResource.secondColor)))

    ],
  );
}

Row _buildContinueLine(){return Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  mainAxisAlignment: MainAxisAlignment.center,
  mainAxisSize: MainAxisSize.max,
  children: [
    Container(
      height: 2,
      width: 80,
      decoration:const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              ColorResource.white,
              ColorResource.grey,
            ],
            begin:  FractionalOffset(0.0, 0.0),
            end:  FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.decal),
      ),
    ),
    const SizedBox(
      width: 10,
    ),
    Text(
      "or continue with",
      style: StyleResource.instance.styleRegular(DimensionResource.fontSizeSmall, ColorResource.darkColor),
    ),
    const SizedBox(
      width: 10,
    ),
    Container(
      height: 2,
      width: 80,
      decoration:const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              ColorResource.white,
              ColorResource.grey,
            ],
            begin:  FractionalOffset(1.0, 0.0),
            end:  FractionalOffset(0.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.decal),
      ),
    ),
  ],
);}

InkWell socialButton({String ?image,VoidCallback ?onTap}) {
  return InkWell(
    onTap: onTap!,
    child: Container(
      height: 45,
      width: 80,
      padding:const EdgeInsets.all(12),
      decoration: BoxDecoration(
          boxShadow: DecorationResource.instance.containerBoxShadow(),
          color: ColorResource.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorResource.borderColor,width: 1)
      ),
      child:Image.asset(image!),
    ),
  );
}
