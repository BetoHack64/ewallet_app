import 'package:ewallt_app/Views/screen_main.dart';
import 'package:ewallt_app/Views/themes/CostomTheme.dart';
import 'package:ewallt_app/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//bruno
//Filomena
Controller controller = Get.put(Controller());
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wallet',
      theme: CustomThemes().mainTheme,

      home: const ScreenMain(),
    );
  }
}

