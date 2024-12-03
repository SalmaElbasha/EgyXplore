import 'package:egyxplore/screens/on_boarding/on_boarding_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

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
                  child: Image(image: AssetImage("assets/images/Tour-guide-amico(1)1@2x.png")),
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
                        width: 25,
                        height: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff8B5843)
                        ),
                      ),
                    ),
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
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text("Welcome to EgyXplore!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800
                      ),),
                    ),
                    Container(
                      width: Get.width*0.6,
                      height: Get.height*0.12,
                      child: Text("Discover the wonders of Egypt with our personalized recommendation system. Let us guide you to the mostenchanting destinations tailored just for you.",
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
                      onTap: (){Get.to(()=>OnBoarding2());},
                      child: Container(
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
                      ),
                    )
                  ],)
              ],
            ),
          ),
    );
  }
}
