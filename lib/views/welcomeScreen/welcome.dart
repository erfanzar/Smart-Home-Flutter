import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('assets/images/bbg.jpg'), fit: BoxFit.fill)),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 2.5,
            ),
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: const [
                Text(
                  'Sweet & \n Smart Home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Smart Home can change the way \n you live in future',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 7,
            ),
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width / 1.3,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(35)),
            child: const Center(
              child: Text(
                'GET SMART',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
