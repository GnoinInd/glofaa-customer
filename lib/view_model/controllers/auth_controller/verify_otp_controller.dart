import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view/widgets/log_print/log_print_condition.dart';


class VerifyOtpController extends GetxController{
 // AuthProvider authProvider = getIt();
  Rx<TextEditingController> otpController = TextEditingController().obs;
  Map<String,String> loginData = {};
  Timer? timer;
  RxInt start = 30.obs;
  var isLoading = false.obs;
  @override
  void onInit() {
    //loginData = Get.arguments;
    startTimer();
    super.onInit();
  }
  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }
  VoidCallback  get startTimer=>() {
    logPrint("start time");
    const oneSec =  Duration(seconds: 1);
    timer =  Timer.periodic(
      oneSec,(Timer timer) {
      if (start.value == 0) {
        timer.cancel();
      } else {
        start--;
      }
    },
    );
  };
  VoidCallback get resendOtp =>()async{
    if(start.value == 0){
      start.value = 30;
      // try {
      //   startTimer();
      //   Map<String,String> otpData ={
      //     "mobile_no": loginData["mobile_no"] ?? "",
      //     "country_code":loginData["country_code"] ?? "",
      //     "role":"Driver"
      //   };
      //
      //   await authProvider.logInTap(otpData, onError: (errorMessage){
      //     logPrint("errorMessage=> $errorMessage");
      //     toastShow(massage: errorMessage,error: true);
      //     isLoading.value = false;
      //   }, onSuccess: (message,data)async{
      //   });
      // } catch (e) {
      //   logPrint("this is login try error ${e.toString()}");
      //   toastShow(massage: "Unhandled Exception",error: true);
      // }
    }
  };


  VoidCallback get checkOtp =>()async{
    // if(otpController.value.text.isEmpty){
    //   toastShow(massage: "Enter 4 Digit Verification code.",error: true);
    // }else if(otpController.value.text.length!=4){
    //   toastShow(massage: "Please enter 4 Digit Verification code.",error: true);
    // } else {
    //   if(isLoading.value == false){
    //     isLoading.value = true;
    //     // try {
    //     //   Map<String,String> otpData ={
    //     //     "otp":otpController.value.text,
    //     //     "device_id": await Get.find<AuthService>().getFireBaseToken(),
    //     //     "device_type":Platform.isAndroid ? "android" : "ios",
    //     //     "mobile_no": loginData["mobile_no"] ?? "",
    //     //     "country_code":loginData["country_code"] ?? "",
    //     //     "referred_code":loginData.containsKey("referred_code")?loginData["referred_code"]??"":""
    //     //   };
    //     //   await authProvider.otpCheck(otpData, onError: (errorMessage){
    //     //     logPrint("errorMessage=> $errorMessage");
    //     //     toastShow(massage: errorMessage ?? "Please check your otp.",error: true);
    //     //     isLoading.value = false;
    //     //   }, onSuccess: (message,data)async{
    //     //     LoginModel loginModel = LoginModel.fromJson(data!);
    //     //     await Get.find<AuthService>().saveUser(loginModel.data?.data?.toJson()??{});
    //     //     await Get.find<AuthService>().saveUserToken(loginModel.token??"");
    //     //     toastShow(massage:loginModel.message,error: false);
    //     //     Get.offAllNamed(Get.find<AuthService>().user.value.isProfileComplete == 1 ? Get.find<AuthService>().user.value.isVerified == 1 ? Get.find<AuthService>().user.value.isVerified == 1 && Get.find<AuthService>().user.value.isProfileComplete == 1 ? Routes.homeScreen : Routes.loginScreen : Routes.verificationComplete : Get.find<AuthService>().user.value.pageStat == 0 ? Routes.verificationAskScreen : Routes.partnerRegistrationScreen);
    //     //     isLoading.value = false;
    //     //   });
    //     //
    //     // } catch (e) {
    //     //   logPrint("this is verify try error ${e.toString()}");
    //     //   toastShow(massage: "Unhandled Exception",error: true);
    //     //   isLoading.value = false;
    //     // }
    //   }
    //
    // }
  };
}