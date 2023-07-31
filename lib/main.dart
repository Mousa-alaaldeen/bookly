// ignore_for_file: prefer_const_constructors

import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Features/splash/presentation/viows/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home: SplaShView(),
    );
  }
}
