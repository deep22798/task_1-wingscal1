import 'package:get/get.dart';

class SplashController extends GetxController{
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 3), () {
      Get.offNamed('/home');
    });
  }

}