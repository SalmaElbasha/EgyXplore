import 'package:egyxplore/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPhoneNumberScreen extends StatelessWidget {
  const AddPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(onBackTap: (){Get.back();}
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Container(
               width: Get.width*0.75,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text("Add phone number",style:
                     TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.w500,
                       color: Color(0xff000000)
                     ),),
                 ],
               ),
             ),
            Container(
              width: Get.width*0.8,
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff000000),
                      width: 3
                    )
                  )
                ),
              ),
            ),
            Container(
              width: Get.width*0.26,
              height: Get.height*0.06,
              decoration: BoxDecoration(
                color: Color(0xffC3AC8E),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Text("Confirm",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20
                ),),
              ),
            ),
            Container(
              width: Get.width,
              height: Get.height*0.35,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  height:Get.height*0.27,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width:Get.width*0.127,
                          height: Get.height*0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: Text("1",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25
                              ),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width:Get.width*0.127,
                          height: Get.height*0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: Text("4",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25
                              ),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 3.5),
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            width:Get.width*0.127,
                            height: Get.height*0.065,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Text("7",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25
                                ),),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width:Get.width*0.127,
                          height: Get.height*0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: Text("2",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25
                              ),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width:Get.width*0.127,
                          height: Get.height*0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: Text("5",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25
                              ),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width:Get.width*0.127,
                          height: Get.height*0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: Text("8",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25
                              ),),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width:Get.width*0.127,
                          height: Get.height*0.065,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              ),
                              borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: Text("0",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 25
                              ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: Get.height*0.334,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width:Get.width*0.127,
                            height: Get.height*0.065,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Text("3",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25
                                ),),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width:Get.width*0.127,
                            height: Get.height*0.065,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Text("6",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25
                                ),),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            width:Get.width*0.127,
                            height: Get.height*0.065,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black,
                                    width: 2
                                ),
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(
                              child: Text("9",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 25
                                ),),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: InkWell(
                            onTap: (){

                            },
                            child: Container(
                              width:Get.width*0.07,
                              height: Get.height*0.035,
                              decoration: BoxDecoration(
                                  color: Color(0xff8B5843),

                                  borderRadius: BorderRadius.circular(100)
                              ),
                              child: Center(
                                child: Icon(Icons.close,size: 20,color: Colors.white,),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
