import 'package:egyxplore/screens/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/Drawer.dart';
import '../../widgets/Hidden_gems_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
    builder: (HomeController controller) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height * 0.085,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded, color: Color(0xff533528),size: 40,),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Open the drawer
            },
          ),
        ),
        title: Text(
          "egyXplore",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff000000)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              child: Image(
                  image: AssetImage(
                      "assets/images/Follow-These-Steps-for-a-Flawless-Professional-Profile-Picture 1.png")),
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ],
      ),
      drawer: Setting(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: Get.width * 0.88,
                  height: Get.height * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "What would you like to discover?",
                      hintStyle: TextStyle(
                          color: Color(0xff5B5B5B),
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff5B5B5B),
                        size: 20,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Color(0xff533528),
                            width: 3),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color(0xff533528),
                              width: 3)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color(0xff533528),
                              width: 3)),
                    ),
                  ),
                ),
              ),
              Container(
                width: Get.width*0.9,
                height: Get.height*0.06,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Select Category ",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                    ),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 3,right: 2),
                width: Get.width,
                height: Get.height*0.18,
                child: ListView.separated(itemBuilder: (context,index)
                {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      width: Get.width*0.277,
                      height: Get.height*0.18,
                      decoration: BoxDecoration(
                        
                        image: DecorationImage(image: AssetImage(controller.imagePaths[index]),fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(

                            width: Get.width*0.277,
                            height: Get.height*0.06,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.15),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              )
                            ),
                            child: Center(
                              child: Text(controller.categoryName[index]
                                ,textAlign: TextAlign.center
                                ,style: TextStyle(
                                color:Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w500
                              ),),
                            ),

                          )
                        ],
                      ),
                    ),
                  );
                },
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context,index)
                    {
                      return Container(
                        width: Get.width*0.03,
                      );
                    },
                    itemCount: 10),
              ),
              Container(
                width: Get.width*0.92,
                height: Get.height*0.06,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Services ",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                      ),)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 3,right: 2),
                width: Get.width,
                height: Get.height*0.13,
                child: ListView.separated(itemBuilder: (context,index)
                {
                  return InkWell(
                    onTap: (){},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: Get.width*0.15,
                            height: Get.height*0.06,
                            decoration: BoxDecoration(
                              color: Color(0xff8B5843),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Center(
                              child: Image(image: AssetImage(controller.servicesImages[index]),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height:Get.height*0.057,
                          width: Get.width*0.15,
                          child: Text(controller.servicesNames[index],
                          textAlign: TextAlign.center
                          ,style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 11
                          ),),
                        )
                      ],
                    ),
                  );
                },
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context,index)
                    {
                      return Container(
                        width: Get.width*0.03,
                      );
                    },
                    itemCount: 6),
              ),
              Container(
                width: Get.width*0.92,
                height: Get.height*0.06,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Spots",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                      ),),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: Get.width*0.17,
                        height: Get.height*0.025,
                        decoration: BoxDecoration(
                          color: Color(0xff4F311E),
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text("See All",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400
                          ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10,top: 3,right: 2),
                width: Get.width,
                height: Get.height*0.24,
                child: ListView.separated(itemBuilder: (context,index)
                {
                  return InkWell(
                    onTap: (){},
                    child: Container(
                      width: Get.width*0.37,
                      height: Get.height*0.23,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(controller.popularSpotsImages[index]),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(

                            width: Get.width*0.37,
                            height: Get.height*0.055,
                            decoration: BoxDecoration(
                                color: Color(0xff421E07).withOpacity(0.75),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left:5.0,top: 2),
                                     child: Text(controller.popularSpotsNames[index],
                                     style: TextStyle(
                                       color: Colors.white,
                                       fontWeight: FontWeight.w400,
                                       fontSize: 11
                                     ),),
                                   ),
                                   Container(
                                     width: Get.width*0.36,
                                     child: Center(
                                       child: Row(
                                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                         children: [
                                           Padding(
                                             padding: const EdgeInsets.only(left: 7.0),
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                               children: [
                                                 Icon(Icons.star,color: Colors.amber,size: 15,),
                                                 Text(controller.popularSpotsRatings[index],style: TextStyle(  color: Colors.white,
                                                     fontWeight: FontWeight.w400,
                                                     fontSize: 10),),
                                               ],
                                             ),
                                           ),
                                           Row(
                                             children: [
                                              InkWell(
                                                onTap:(){},
                                                child: Icon(Icons.favorite_outline_rounded,color: Colors.white,size: 20,),
                                              ),
                                               InkWell(
                                                 onTap:(){},
                                                 child: Icon(Icons.bookmark_border_rounded,color: Colors.white,size: 20,),
                                               )
                                             ],
                                           )
                                         ],
                                       ),
                                     ),
                                   )
                                 ],
                            ),

                          )
                        ],
                      ),
                    ),
                  );
                },
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context,index)
                    {
                      return Container(
                        width: Get.width*0.03,
                      );
                    },
                    itemCount: 4),
              ),
              Container(
                width: Get.width*0.92,
                height: Get.height*0.06,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hidden Gems",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 25,
                          fontWeight: FontWeight.w500
                      ),),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: Get.width*0.17,
                        height: Get.height*0.025,
                        decoration: BoxDecoration(
                            color: Color(0xff4F311E),
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Center(
                          child: Text("See All",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w400
                            ),),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: HiddenGemsWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: HiddenGemsWidget(photoPath: "assets/images/ras_mohamed_2_s.png",placeName: "Ras Muhammad National Park",
                    colorGradient2: Color(0xff051B2F),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: HiddenGemsWidget(photoPath: "assets/images/Sans-titre-17 2.png",
                      placeName: "Grand Egyptian Museum (GEM)",
                      colorGradient2: Color(0xff624D32),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: HiddenGemsWidget(photoPath: "assets/images/newAlmin.png",
                      placeName: "New Alamein City",
                      colorGradient2: Color(0xff706E7B),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: HiddenGemsWidget(photoPath: "assets/images/grand-aquarium-hurghada 3.png",
                      placeName: "Grand Aquarium",
                      colorGradient2: Color(0xff067DB9),),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );});
  }
}
