import 'package:egyxplore/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

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
              child: Image(fit: BoxFit.fill,image: AssetImage("assets/images/Location review-amico 1.png")),
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
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff8B5843).withOpacity(0.5)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Container(
                    width: 25,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff8B5843)
                    ),
                  ),
                ),

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text("Smart Exploration Tools",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800
                    ),),
                ),
                Container(
                  width: Get.width*0.72,
                  height: Get.height*0.12,
                  child: Text("Unlock the power of scanning and planning. Scan landmarks, decipher hieroglyphs, and plan your journey with precision. Egypt awaits your exploration ",
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
                InkWell(
                  onTap: (){
                    Get.to(WelcomeScreen());
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    height: Get.height*0.07,
                    width: Get.width*0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff8B5843)
                    ),
                    child: Center(
                      child: Text("Get Started",style: TextStyle(
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w400,
                        fontSize:15 ,
                      ),)
                    ),
                  ),
                )
              ],)
          ],
        ),
      ),
    );
  }
}
