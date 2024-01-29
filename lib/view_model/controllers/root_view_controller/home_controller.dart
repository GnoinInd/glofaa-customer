import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:glofa_customer/model/models/home_model/catogories_model/catogories_model.dart';
import 'package:glofa_customer/model/network_calls/api_helper/provider_helper/home_provider.dart';
import 'package:glofa_customer/model/network_calls/dio_client/get_it_instance.dart';
import 'package:glofa_customer/view/widgets/log_print/log_print_condition.dart';


import '../../../../model/utils/resource/color_resource.dart';
import '../../../../model/utils/resource/dimensions_resource.dart';
import '../../../../model/utils/resource/style_resource.dart';
import '../../../../view/widgets/button_view/bottom_sheet.dart';


class HomeController extends GetxController {
  PageController pageController = PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  RxInt selectedIndex = 0.obs;
  HomeProvider homeProvider = getIt();
  RxBool onLine = false.obs;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  RxInt selectOrderType = 1.obs;
  Future refreshHome({bool showMessage = false}) async {
   // logPrint("Orders refreshed successfully");
   //  getOrderCount();
   //  getCurrentOrderListByType();
   //  getCompleteOrderListByType();
    if (showMessage) {
     // toastShow(massage: "Orders refreshed successfully.", error: false);
    }
  }

  /// for category
  Rx<CategoryModel> categoryModel = CategoryModel().obs;
  RxList<Category> category = <Category>[].obs;
  RxInt selectCategoryType = 0.obs;
  Future getCategory() async {
    try {
      await homeProvider.getCategory(
          onError: (message) {
            logPrint("error message=>$message");
          },
          onSuccess: (message, data) {
            if(data!=null && data["status"]==true){
              categoryModel.value =CategoryModel.fromJson(data);
              category.value = categoryModel.value.categories??[];
             // selectCategoryType.value = category.isNotEmpty? category.first.id!:0;
             // getVendorCloth(serviceId: services.first.id.toString(), categoryId: category.first.id.toString(), pageNumber: "1");
            }
            logPrint("data=>$message");
          });
    } catch (e) {
      logPrint("error =>$e");
    }
  }

  @override
  void onInit() {
      getCategory();
    super.onInit();
  }
}


