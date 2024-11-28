import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Color(0xffffffff),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: Get.width,
              child: Image(fit: BoxFit.fill,image: AssetImage("assets/images/Voice chat-rafiki 1.jpg")),
              decoration: BoxDecoration(
        
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff8B5843).withOpacity(0.5)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Container(
                    width: 25,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff8B5843)
                    ),
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff8B5843).withOpacity(0.5)
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("Seamless Communication",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800
                    ),),
                ),
                Container(
                  width: Get.width*0.75,
                  height: Get.height*0.12,
                  child: Text("Break down language barriers with our built-in translate feature. Communicate effortlessly with locals and immerse yourself in the rich culture and history of Egypt.",
                      textAlign: TextAlign.center,style: TextStyle(
        
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff5B5B5B)
                      )),
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween
              ,children: [
                TextButton(onPressed: (){}, child: Text("Skip",
                  style: TextStyle(
                      color: Color(0xff5B5B5B),
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                  ),)),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff8B5843)
                  ),
                  child: Center(
                    child: Icon(Icons.keyboard_arrow_right,color: Color(0xffffffff),size: 35,),
                  ),
                )
              ],)
          ],
        ),
      ),
    );
  }
}
