import 'package:calculator_app/controller/splashcontroller.dart';
import 'package:calculator_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {

  final SplashController _splashController = Get.put(SplashController());


  Splash({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(Images.logo),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Lottie.asset(Images.logo,width: double.infinity,),
              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('Wingscal',style: TextStyle(fontSize: 25),),
                  ),
                  CircularProgressIndicator(
                    color: Colors.green.shade700,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
