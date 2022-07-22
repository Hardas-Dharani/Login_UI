import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/src/routes/routers.dart';
import 'package:test/src/routes/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      title: 'Test',
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.login,
      getPages: RoutingModule().routingList,
    );
  }
}
