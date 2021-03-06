import 'package:LetsDoIt/core/constants/navigation/navigation_constants.dart';
import 'package:LetsDoIt/modules/login_page/login.dart';
import 'package:common_flutter_service/service_init.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/home_page/home.dart';
import 'modules/login_page/login_controller.dart';

void main() {
  setDependency();
  ServiceInit().init(
    "https://letsdoitapi.furkanbektas.net/api/",
    runApp: () {
      runApp(
      MyApp()
      );
    },
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: NavigationConstants.ROOT,
      routes: {
        '/': (context) => LoginPage(),
        '/home':(context)=>HomePage()
      },
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
    );
  }
}

void setDependency() {
  Get.lazyPut(() => LoginController());
}
