import 'package:get/get.dart';
import 'package:khoneamee/views/homePage/home_page.dart';
import 'package:flutter/material.dart';

class MainScreenController extends GetxController {
  final index = 0.obs;
  final screens = const [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ].obs;
  final color = Colors.cyan.obs;
}
