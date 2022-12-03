import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:khoneamee/Controller/main_controller.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class BoxContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final String? image;
  final int index;
  final String? label;
  final Color? inactiveColor;
  final Color? activeColor;

  const BoxContainer(
      {Key? key,
      required this.index,
      this.height,
      this.width,
      this.image,
      this.label,
      this.inactiveColor,
      this.activeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainController controller = Get.find(tag: 'mainController');
    return Obx(() => Container(
          height: height,
          margin: const EdgeInsets.only(top: 10),
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: controller.list.value[index].rx.value
                ? activeColor
                : inactiveColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 15, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      controller.list.value[index].rx.value ? 'On' : 'Off',
                      style: TextStyle(
                          color: controller.list.value[index].rx.value
                              ? Colors.white
                              : const Color(0xFF405FF2),
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    Container(
                      height: 30,
                      width: 50,
                      margin: const EdgeInsets.only(left: 20),
                      child: FlutterSwitch(
                        width: 50,
                        height: 30,
                        value: controller.list.value[index].rx.value,
                        inactiveText: '',
                        activeText: '',
                        showOnOff: true,
                        inactiveColor: activeColor!,
                        activeColor: const Color(0xFF122C99),
                        activeToggleColor: Colors.white,
                        padding: 2,
                        duration: const Duration(seconds: 1),
                        onToggle: (val) {
                          // print(val);
                          controller.list.value[index].rx.value = val;
                          controller.change();
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 50),
                child: Image.asset(
                  image!,
                  color: controller.list.value[index].rx.value
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              SizedBox(
                height: 20,
                width: 100,
                child: Text(
                  label!,
                  style: TextStyle(
                      color: controller.list.value[index].rx.value
                          ? Colors.white
                          : const Color(0xFF405FF2),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ));
  }
}
