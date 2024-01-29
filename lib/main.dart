import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:glofa_customer/model/network_calls/dio_client/get_it_instance.dart';
import 'package:glofa_customer/model/services/auth_service.dart';
import 'package:glofa_customer/model/services/globleService.dart';
import 'package:glofa_customer/view/screens/auth_view/login_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'view/screens/root_view/home_view/home_screen.dart';
import 'view/screens/root_view/home_view/plus_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

initServices() async {
  Get.log('starting services ...');
  WidgetsFlutterBinding.ensureInitialized();
  BackgroundIsolateBinaryMessenger.ensureInitialized;
  //await Firebase.initializeApp();
  //MyNotification.initialize(FlutterLocalNotificationsPlugin());
 // FirebaseMessaging.onBackgroundMessage(myBackgroundMessageHandler);
  await getInit();
  await GetStorage.init();
  await Get.putAsync(() => AuthService().init());
  await Get.putAsync(() => GlobalService().init());
  Get.log('All services started...');
  return;
}

Widget responsiveScreen(context, widget) {
  return MediaQuery(
    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0, ), //set desired text scale factor here
    child: ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 2400,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(450, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(800, name: TABLET),
          const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(color: const Color(0xFFF5F5F5))),
  );
}

