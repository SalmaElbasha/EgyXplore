import 'package:dotted_border/dotted_border.dart';
import 'package:egyxplore/screens/add_product/controller/add_product_controller.dart';
import 'package:egyxplore/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_container_button.dart';

class AddProductScreen extends StatelessWidget {
  const AddProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
        init: AddProductController(),
    builder: (AddProductController controller) {
    return Scaffold(
        backgroundColor:Color(0xffffffff) ,
      appBar:PreferredSize(

        preferredSize: Size.fromHeight(100.0),

        child: Container(
          color: Color(0xffffffff) ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: Get.width ,
                color: Color(0xffffffff) ,
                child: AppBar(
                  backgroundColor: Color(0xffffffff) ,
                  toolbarHeight: 100.0,
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  title:  Text(
                    "Add Product",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height-Get.height*0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Container(
                        width: Get.width*0.9,
                        height: Get.height*0.05,
                        child: Text("Product name",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                      Center(
                        child: Container(
                          width: Get.width*0.9,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 8
                              )
                            ]
                          ),
                          child: TextFormField(

                            decoration: InputDecoration(
                              hintText: "Write product name ",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color(0xff696969)
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xff9C9C9C)
                                )
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff9C9C9C)
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Color(0xff9C9C9C)
                                  )
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.height*0.04,),
                  Container(
                    width: Get.width*0.9,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Price",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700
                              ),),
                              Text("(EGP)",
                                style: TextStyle(
                                    color: Color(0xff696969),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700
                                ),),
                            ],
                          ),
                          Row(
                            children: [
                               IconButton(onPressed: (){},
                                   icon: Icon(Icons.add,size: 30,color: Colors.black,)),
                              Container(
                                  width: Get.width*0.2,
                                  height: Get.height*0.04,
                                  decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade400,
                                            blurRadius: 8
                                        )
                                      ]
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(

                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xff9C9C9C)
                                          )
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xff9C9C9C)
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Color(0xff9C9C9C)
                                          )
                                      ),

                                    ),
                                  )),

                              IconButton(onPressed: (){},
                                  icon: Icon(Icons.remove,size: 30,color: Colors.black,))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height*0.1,),
                   Column(
                     children: [
                       DottedBorder(
                        color: Color(0xff535353), // Border color
                        strokeWidth:
                         2.5, // Border thickness
                        dashPattern: [17, 6], // Define the dash and gap lengths
                        borderType: BorderType.RRect, // Border shape (RRect, Oval, Rect, Circle)
                        radius: Radius.circular(10), // Border radius for RRect type
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            width: Get.width*0.8,
                            height: Get.height*0.07,
                            color: Colors.white,
                            alignment: Alignment.center,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.camera_alt,
                                color: Color(0xff696969),
                                size: 35,),
                                Text("Upload",
                                style: TextStyle(
                                  color: Color(0xff696969),
                                  fontSize: 19,
                                  fontWeight: FontWeight.w500
                                ),)
                              ],
                            ),
                          ),
                        ),
                                     ),
                       SizedBox(
                         height: Get.height*0.04,
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8.0),
                         child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: Get.width*0.02,
                                  height: Get.height*0.01,
                                  decoration: BoxDecoration(
                                    color: Color(0xff535353),
                                    borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                Text("  Maximum file size is 5 MB"),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: Get.width*0.02,
                                  height: Get.height*0.01,
                                  decoration: BoxDecoration(
                                      color: Color(0xff535353),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                ),
                                Text("  Limited to JPG, JPEG, PNG"),
                              ],
                            ),
                          ],
                                       ),
                       ),
                     ],
                   ),
                ],
              ),
              CustomContainerButton(text: 'Done',backgroundColor: Color(0xff8B5843), textColor:Color(0xffffffff),onTap: () {  },borderRaduis: 10,)
             ],
          ),
        ),
      ),
    );});
  }
}
