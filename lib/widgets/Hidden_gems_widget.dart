import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HiddenGemsWidget extends StatelessWidget {
  Color? colorGradient1;
  Color? colorGradient2;
  String? photoPath;
  String? placeName;
  Function()? onTap;
   HiddenGemsWidget({super.key,this.colorGradient1,this.colorGradient2,this.photoPath,this.placeName,this.onTap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){},
      child: Container(
        width: Get.width*0.9,
        height: Get.height*0.2,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10
            )
          ],
            image: DecorationImage(image: AssetImage(photoPath??"assets/images/antelope-canyon-arizona-usa-shutterstock_592485812 2.png"),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(

              width: Get.width*0.9,
              height: Get.height*0.05,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      colorGradient2?.withOpacity(0.9)??Color(0xffd6F2115).withOpacity(0.9),

                      colorGradient1?.withOpacity(0.9)??Color(0xff000000).withOpacity(0.9),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),

                  )
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(placeName??"The colored canyon"

                      ,style: const TextStyle(

                          color:Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),),
                  ),
                  TextButton(
                    onPressed: onTap??(){} ,
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    child: const Text("Learn More",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                  )

                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
