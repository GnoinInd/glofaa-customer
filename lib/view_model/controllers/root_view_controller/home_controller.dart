import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


import '../../../../model/utils/resource/color_resource.dart';
import '../../../../model/utils/resource/dimensions_resource.dart';
import '../../../../model/utils/resource/style_resource.dart';
import '../../../../view/widgets/button_view/bottom_sheet.dart';


class HomeController extends GetxController {
 // HomeProvider homeProvider = getIt();
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

  // /// for counter
  // Rx<OrderCountModel> orderCountData = OrderCountModel().obs;
  // Rx<OrderCount> orderCount = OrderCount().obs;
  // Future getOrderCount() async {
  //   try {
  //     await homeProvider.getOrderCount(onError: (message) {
  //       logPrint("error message=>$message");
  //     }, onSuccess: (message, data) {
  //       if (data != null) {
  //         orderCountData.value = OrderCountModel.fromJson(data);
  //         orderCount.value = orderCountData.value.data ?? OrderCount();
  //       }
  //     });
  //   } catch (e) {
  //     logPrint(e);
  //   }
  // }

  /// current order list
  // Rx<OrderListModel> currentOrderListData = OrderListModel().obs;
  // RxList<Order> currentOrder = <Order>[].obs;
  // Future getCurrentOrderListByType() async {
  //   try {
  //     await homeProvider.getOrderListByType(
  //         orderType: "1",
  //         pageNumber: "1",
  //         onError: (message) {
  //           logPrint("error message=>$message");
  //         },
  //         onSuccess: (message, data) {
  //           if (data != null) {
  //             currentOrderListData.value = OrderListModel.fromJson(data);
  //             currentOrder.value = currentOrderListData.value.data?.data ?? [];
  //           }
  //         });
  //   } catch (e) {
  //     logPrint("catch error =>$e");
  //   }
  // }

  /// complete Order List
  // Rx<OrderListModel> completeOrderListData = OrderListModel().obs;
  // RxList<Order> completeOrder = <Order>[].obs;
  // Future getCompleteOrderListByType() async {
  //   try {
  //     await homeProvider.getOrderListByType(
  //         orderType: "2",
  //         pageNumber: "1",
  //         onError: (message) {
  //           logPrint("error message=>$message");
  //         },
  //         onSuccess: (message, data) {
  //           if (data != null) {
  //             completeOrderListData.value = OrderListModel.fromJson(data);
  //             completeOrder.value = completeOrderListData.value.data?.data ?? [];
  //           }
  //         });
  //   } catch (e) {
  //     logPrint("catch error =>$e");
  //   }
  // }

  /// update status
  // void updateServiceStatus(bool status) async {
  //   try {
  //     await homeProvider.updateServiceStatus(onError: (message) {
  //       onLine.value = !status;
  //       toastShow(massage: message ?? "Something went wrong here.", error: false);
  //       logPrint("error message=>$message");
  //     }, onSuccess: (message, data) {
  //       toastShow(massage: "Service availability Update Successfully.", error: false);
  //       Get.find<GlobalService>().getDriverProfile();
  //     });
  //   } catch (e) {
  //     logPrint(e);
  //   }
  // }

  /// notification count
  // Rx<NotificationCountModel> notificationCountData = NotificationCountModel().obs;
  // RxInt notificationCount = 0.obs;
  // Future getNotificationCount() async {
  //   try {
  //     await homeProvider.getNotificationCount(
  //         pageNumber: "1",
  //         onError: (message) {
  //           logPrint("error message=>$message");
  //         },
  //         onSuccess: (message, data) {
  //           if (data != null) {
  //             notificationCountData.value = NotificationCountModel.fromJson(data);
  //             notificationCount.value = notificationCountData.value.data ?? 0;
  //           }
  //           logPrint("data=>$message");
  //         });
  //   } catch (e) {
  //     logPrint(e);
  //   }
  // }

  // void updateDriverLocation()async{
  //   try {
  //     await Geolocator.getCurrentPosition(forceAndroidLocationManager: true,desiredAccuracy: LocationAccuracy.high).then((position) async {
  //        await homeProvider.updateDriverLocation(
  //           location: {
  //             "lat": position.latitude,
  //             "lng": position.longitude,
  //           },
  //           onError: (message) {
  //             logPrint("error message=>$message");
  //           },
  //           onSuccess: (message, data) {});
  //     }).onError((error, stackTrace){logPrint("Geolocator error message=>$error");});
  //   } catch (e) {
  //     logPrint("error get location -> $e");
  //   }
  // }

  // Future allowPermissionTap() async {
  //   try{
  //     if (await Permission.locationAlways.request().isGranted) {
  //       updateDriverLocation();
  //       await FlutterIsolate.spawn(updateDriverLocationInBackground, "updateDriverLocation");
  //       Get.back();
  //     } else {
  //       openAppSettings();
  //     }
  //   }catch(e){
  //     logPrint(e);
  //   }
  // }

  // Future checkLocationPermission() async {
  //   PermissionStatus locationPermissionStatus = await Permission.locationAlways.status;
  //   if (locationPermissionStatus.isGranted) {
  //     updateDriverLocation();
  //     await FlutterIsolate.spawn(updateDriverLocationInBackground, "updateDriverLocation");
  //   } else {
  //     permissionSheet(this);
  //   }
  // }

  @override
  void onInit() {
    // NotificationRedirection.closeAppHandler();
    // checkLocationPermission();
    // getOrderCount();
    // getCurrentOrderListByType();
    // getCompleteOrderListByType();
    // getNotificationCount();
    // onLine.value = Get.find<AuthService>().user.value.isAvailable == 0 ? false : true;
    // Get.find<GlobalService>().getDriverProfile().then((value) {
    //   if (value.data?.isVerified == 0) {
    //     Get.offAllNamed(Routes.verificationComplete);
    //   }
    // });
    // super.onInit();
  }

}

// void permissionSheet(HomeController controller) {
//   BottomSheetModel(
//       isDismissible: false,
//       onBack: () => SystemNavigator.pop(),
//       isScrollControlled: false,
//       enableDrag: false,
//       titleStyle: StyleResource.instance.styleSemiBold(
//           DimensionResource.fontSizeOverLarge, ColorResource.black),
//       title: "Allow Your Location",
//       titlePadding: const EdgeInsets.only(
//           left: DimensionResource.marginSizeLarge,
//           right: DimensionResource.marginSizeLarge,
//           top: DimensionResource.marginSizeDefault,
//           bottom: DimensionResource.marginSizeExtraSmall),
//       showCloseButton: false,
//       borderRadius: const BorderRadius.only(
//         topRight: Radius.circular(15),
//         topLeft: Radius.circular(15),
//       ),
//       height: 230,
//       color: ColorResource.white,
//       child: LocationPermissionSheet(controller: controller,
//       )).presentDetail(Get.context!);
// }


