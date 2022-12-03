import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khoneamee/Controller/main_controller.dart';
import 'package:khoneamee/fakeData/fakeData.dart';

import '../../Components/mainScreen/boxContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double fh = MediaQuery.of(context).size.height;
    double fw = MediaQuery.of(context).size.width;
    MainController controller = Get.find(tag: 'mainController');
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - fh / 5,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            height: 50,
            width: fw,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        margin: const EdgeInsets.only(left: 20),
                        width: 200,
                        child: const Text(
                          'Good Day Ame',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ),
                      Container(
                        height: 20,
                        margin: const EdgeInsets.only(left: 20),
                        width: 200,
                        child: const Text(
                          'Take Control',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/images/user.png'),
                          fit: BoxFit.fill)),
                )
              ],
            ),
          ),
          Stack(children: [
            Container(
              height: 330,
              width: fw,
              margin: const EdgeInsets.only(left: 40, right: 40, top: 45),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: GridView.builder(
                itemCount: controller.list.value.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 150,
                    mainAxisSpacing: 20,
                    childAspectRatio: 150,
                    crossAxisSpacing: fw - 300 - fw / 6),
                itemBuilder: (context, int index) {
                  return BoxContainer(
                    index: index,
                    height: 150,
                    width: 150,
                    activeColor: const Color(0xFF405FF2),
                    inactiveColor: const Color(0xFFE3E9F6),
                    image: controller.list.value[index].image,
                    label: controller.list.value[index].label,
                  );
                },
              ),
            ),
            Container(
              height: 20,
              width: fw,
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(left: 40, right: 40, top: 30),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white38])),
            ),
            Container(
              height: 10,
              width: fw,
              margin: const EdgeInsets.only(left: 40, right: 40, top: 370),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.white, Colors.white38])),
            )
          ])
        ],
      ),
    );
  }
}
