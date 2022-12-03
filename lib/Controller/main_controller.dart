import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Prop {
  final RxBool? rx;
  final String? image;
  final String? label;

  Prop({this.image, this.label, this.rx});
}

class MainController extends GetxController {
  final s1 = false.obs;
  final s2 = false.obs;
  final s3 = false.obs;
  final s4 = false.obs;
  final s5 = false.obs;
  final s6 = false.obs;
  final s7 = false.obs;
  final s8 = false.obs;
  final s9 = false.obs;
  final s10 = false.obs;

  final list = [].obs;
  GetStorage box = GetStorage();

  @override
  void onInit() {
    if (box.read('s1') == null) {
      box.write('s1', s1.value);
    } else {
      s1.value = box.read('s1');
    }
    if (box.read('s2') == null) {
      box.write('s2', s2.value);
    } else {
      s2.value = box.read('s2');
    }
    if (box.read('s3') == null) {
      box.write('s3', s3.value);
    } else {
      s3.value = box.read('s3');
    }
    if (box.read('s4') == null) {
      box.write('s4', s4.value);
    } else {
      s4.value = box.read('s4');
    }
    if (box.read('s5') == null) {
      box.write('s5', s5.value);
    } else {
      s5.value = box.read('s5');
    }
    if (box.read('s6') == null) {
      box.write('s6', s6.value);
    } else {
      s6.value = box.read('s6');
    }
    if (box.read('s7') == null) {
      box.write('s7', s7.value);
    } else {
      s7.value = box.read('s7');
    }
    if (box.read('s8') == null) {
      box.write('s8', s8.value);
    } else {
      s8.value = box.read('s8');
    }
    if (box.read('s9') == null) {
      box.write('s9', s9.value);
    } else {
      s9.value = box.read('s9');
    }
    if (box.read('s10') == null) {
      box.write('s10', s10.value);
    } else {
      s10.value = box.read('s10');
    }
    if (box.read('status') == null) {
      list.addAll([
        Prop(image: 'assets/images/temp.png', label: 'Temperature', rx: s1),
        Prop(
            image: 'assets/images/vintage-refrigerator.png',
            label: 'Refrigerator',
            rx: s2),
        Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s3),
        Prop(
            image: 'assets/images/air-conditioner.png',
            label: 'Air Conditioner',
            rx: s4),
        Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s5),
        Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s6),
        Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s7),
        Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s8),
        Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s9),
        Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s10),
      ]);
      box.write('status', list.value);
    } else {
      list.value = box.read('status');
    }
    super.onInit();
  }

  void change() {
    list.value = [
      Prop(image: 'assets/images/temp.png', label: 'Temperature', rx: s1),
      Prop(
          image: 'assets/images/vintage-refrigerator.png',
          label: 'Refrigerator',
          rx: s2),
      Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s3),
      Prop(
          image: 'assets/images/air-conditioner.png',
          label: 'Air Conditioner',
          rx: s4),
      Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s5),
      Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s6),
      Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s7),
      Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s8),
      Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s9),
      Prop(image: 'assets/images/light-bulb.png', label: 'Lights', rx: s10),
    ];

    box.write('s1', s1.value);
    box.write('s2', s2.value);
    box.write('s3', s3.value);
    box.write('s4', s4.value);
    box.write('s5', s5.value);
    box.write('s6', s6.value);
    box.write('s7', s7.value);
    box.write('s8', s8.value);
    box.write('s9', s9.value);
    box.write('s10', s10.value);
    box.write('status', list.value);
  }
}
