import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khoneamee/Controller/views/mainScreenController/main_screen_controller.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fh = MediaQuery.of(context).size.height;
    double fw = MediaQuery.of(context).size.width;

    MainScreenController controller = Get.put(MainScreenController(),tag: 'mainScreenController');
    return SafeArea(
        child: Obx(
      () => SizedBox(
        height: fh,
        width: fw,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              controller.screens.value[controller.index.value],
              Container(
                // margin: EdgeInsets.only(t,left: fw/9),
                alignment: Alignment.center,
                height: 60,
                width: fw / 1.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF405FF2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.index.value = 0;
                      },
                      child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            'assets/images/account.png',
                            height: 40,
                            color: controller.index.value == 0
                                ? controller.color.value
                                : Colors.white,
                            width: 40,
                          )),
                    ),
                    GestureDetector(
                        onTap: () {
                          controller.index.value = 1;
                        },
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            'assets/images/Home.png',
                            height: 40,
                            color: controller.index.value == 1
                                ? controller.color.value
                                : Colors.white,
                            width: 40,
                          ),
                        )),
                    GestureDetector(
                        onTap: () {
                          controller.index.value = 2;
                        },
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: Image.asset(
                            'assets/images/light-bulb.png',
                            height: 40,
                            color: controller.index.value == 2
                                ? controller.color.value
                                : Colors.white,
                            width: 40,
                          ),
                        )),
                    GestureDetector(
                      onTap: () {
                        controller.index.value = 3;
                      },
                      child: SizedBox(
                        height: 25,
                        width: 25,
                        child: Image.asset(
                          'assets/images/security.png',
                          height: 40,
                          color: controller.index.value == 3
                              ? controller.color.value
                              : Colors.white,
                          width: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
      ),
    ));
  }
}
