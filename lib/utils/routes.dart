import 'package:calculator_app/views/home.dart';
import 'package:calculator_app/views/splash.dart';
import 'package:get/get.dart';

class Routes{
  static String splash='/';
  static String home='/home';
}

final Pages=[

  GetPage(name: Routes.splash, page:()=> Splash()),
  GetPage(name: Routes.home, page:()=> Home()),

];