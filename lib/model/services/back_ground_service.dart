// import 'dart:async';
// import 'dart:convert';
// import 'dart:ui';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:get_storage/get_storage.dart';
//
// import '../../view/widgets/log_print/log_print_condition.dart';
// import '../models/auth_model/login_model.dart';
// import '../utils/resource/app_constants.dart';
// import '../utils/resource/string_resource.dart';
//
//
// @pragma('vm:entry-point')
// void updateDriverLocationInBackground(String backgroundLocationUpdate) async {
//   WidgetsFlutterBinding.ensureInitialized();
//   DartPluginRegistrant.ensureInitialized();
//   await GetStorage.init();
//   GetStorage box = GetStorage();
//   final dio = Dio();
//   User user = User.fromJson(box.read(StringResource.instance.currentUser) ?? {});
//   if (user.isVerified == 1 && user.isProfileComplete == 1 ) {
//      // Timer.periodic(Duration(seconds:user.locationUpdateTime??120), (timer) async {
//      Timer.periodic(Duration(seconds:user.locationUpdateTime??120), (timer) async {
//        logPrint("Background api call response =>$backgroundLocationUpdate");
//       try {
//         if(backgroundLocationUpdate == "updateDriverLocation"){
//           await Geolocator.getLastKnownPosition(forceAndroidLocationManager: true,).then((position) async {
//             try {
//               await dio.post(AppConstants.instance.latLngUpdate,
//                   options: Options(headers: {
//                     'Content-Type': 'application/json;charset=UTF-8',
//                     'Authorization': 'Bearer ${box.read(StringResource.instance.token)}'
//                   }),
//                   data: jsonEncode({"lat": position?.latitude??"", "lng": position?.longitude??"",},))
//                   .then((value) {
//                 logPrint("Background api call response =>$value");
//               }).catchError((_){});
//             } catch (e) {
//               // print("dio error=>$e");
//             }
//           });
//         }
//       } catch (_) {}
//     });
//   }
// }
