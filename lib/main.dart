import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:untitled2/Screen/View/Show_Page.dart';
import 'package:untitled2/Screen/View/Tabbar_page/tabbar.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Tabbar(),
        's': (context) => Show_Page(),
      },
    ),
  );
}
