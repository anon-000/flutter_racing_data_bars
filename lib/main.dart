import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:racing_data_bar/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Racing Data Bars',
      home: HomePage(),
    );
  }
}
