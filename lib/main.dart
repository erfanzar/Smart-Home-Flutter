import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:khoneamee/Controller/main_controller.dart';
import 'package:khoneamee/views/mainScreen/mainScreen.dart';
import 'package:khoneamee/views/welcomeScreen/welcome.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController controller =
        Get.put(MainController(), tag: 'mainController');
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            Scaffold(body: Builder(builder: (context) => const mainScreen())));
  }
}
