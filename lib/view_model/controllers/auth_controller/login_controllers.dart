import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class LoginController extends GetxController{
 // AuthProvider authProvider = getIt();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController phoneController  = TextEditingController();
  var phoneError = "".obs;
  RxBool isPolicyCheck = true.obs;
  RxBool isLoading = false.obs;


  VoidCallback get logInTap =>()async{
    if (formKey.currentState!.validate() &&  isLoading.value == false && isPolicyCheck.value) {
      isLoading.value = true;
      // try {
      //   Map<String,String> loginData ={
      //     "mobile_no": phoneController.text,
      //     "country_code":"91",
      //     "role":"Driver"
      //   };
      //   await authProvider.logInTap(loginData, onError: (errorMessage){
      //     logPrint("errorMessage=> $errorMessage");
      //     phoneError.value = errorMessage ?? "Please check your phone number.";
      //     isLoading.value = false;
      //   }, onSuccess: (message,data)async{
      //     LoginModel loginModel = LoginModel.fromJson(data!);
      //     toastShow(massage:loginModel.message,error: false);
      //     Get.toNamed(Routes.verifyOtpScreen,arguments: loginData);
      //     isLoading.value = false;
      //   });
      // } catch (e) {
      //   logPrint("this is login try error ${e.toString()}");
      //   isLoading.value = false;
      // }
    }
    else if(!isPolicyCheck.value){
     // toastShow(massage:"Privacy Policy & Terms and Conditions are mandatory for login.",error: true);
    }
  };
}