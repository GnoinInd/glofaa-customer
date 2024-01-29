

import 'package:glofa_customer/model/models/network_call_model/api_response.dart';
import 'package:glofa_customer/model/models/network_call_model/error_response.dart';
import 'package:glofa_customer/model/network_calls/api_helper/repository_helper/home_repo.dart';



class HomeProvider {
  final HomeRepo homeRepo;
  HomeProvider({required this.homeRepo});


  Future getCategory({required Function(String? message) onError, required Function(String? message, Map<String, dynamic>? map)onSuccess}) async {
    ApiResponse apiResponse = await homeRepo.getCategory();
    if (apiResponse.response != null && apiResponse.response!.statusCode == 200) {
      Map<String, dynamic> map = apiResponse.response!.data;
      String message = "success";
      onSuccess(message, map);
    } else {
      String errorMessage;
      if (apiResponse.error is String) {
        errorMessage = apiResponse.error.toString();
      } else {
        ErrorResponse errorResponse = apiResponse.error;
        errorMessage = errorResponse.errors![0].message!;
      }
      onError(errorMessage);
    }
  }


}