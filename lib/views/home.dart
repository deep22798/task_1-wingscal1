import 'package:calculator_app/controller/homecontroller.dart';
import 'package:calculator_app/utils/images.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class Home extends StatelessWidget {
  Home({super.key});


  final HomeController _homeController = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Card(
              // color: Colors.red,
                elevation: 10,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                ),
                margin: EdgeInsets.zero,
              child: Container(
                height: MediaQuery.sizeOf(context).height/1.2,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Obx(()=>Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                                child: Text(_homeController.store.join().toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                          )),


                          Padding(
                            padding: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                            child: GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                crossAxisCount: 4, // Number of columns in the grid
                              ),
                              itemCount: _homeController.items.length, // Number of items in the list
                              itemBuilder: (BuildContext context, int index) {
                                // Build each grid item
                                return Obx(()=>InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: (){
                                      _homeController.handle(_homeController.items[index]);
                                    },
                                    child: Card(
                                      color:
                                      _homeController.items[index]=='C'
                                          ||_homeController.items[index]=='%'
                                          ||_homeController.items[index]=='DEL'
                                          ||_homeController.items[index]=='/'
                                          ||_homeController.items[index]=='X'
                                          ||_homeController.items[index]=='-'
                                          ||_homeController.items[index]=='+'
                                          ||_homeController.items[index]=='='
                                          ?Colors.black:Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      margin: EdgeInsets.all(0.5),
                                      child: Center(
                                        child: Text(_homeController.items[index],
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: _homeController.items[index]=='C'
                                              ||_homeController.items[index]=='%'
                                              ||_homeController.items[index]=='DEL'
                                              ||_homeController.items[index]=='/'
                                              ||_homeController.items[index]=='X'
                                              ||_homeController.items[index]=='-'
                                              ||_homeController.items[index]=='+'
                                              ||_homeController.items[index]=='='
                                              ?Colors.white:Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ), // Display item text
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Lottie.asset(Images.logo,height: 50),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Wings",style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.bold,fontSize: 30)),
                        Text("cal",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
