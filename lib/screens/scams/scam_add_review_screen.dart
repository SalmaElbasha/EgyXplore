import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../widgets/custom_container_button.dart';

class ScamAddReviewScreen extends StatelessWidget {
  const ScamAddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: Get.width * 0.89,
              child: AppBar(
                toolbarHeight: 100.0,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                title: Text(
                  "Add Reviews",
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
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height-Get.height*0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 5),
                child: Column(

                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 45,
                          height: 57,
                          decoration:
                              BoxDecoration(borderRadius: BorderRadius.circular(10)),
                          child: Image.asset(
                            "assets/images/dinafarm_07.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dina Farms Milk",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(height: 7,),
                              Text(
                                "Average prices : 44 EGP",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How do you rate this produuct?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 200,
                          height: 60,
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 40,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Write a product review",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Review title",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: Get.width,
                          height: 44,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'What would you like to highlight?',
                              contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                              border: OutlineInputBorder(),
                            ),
                            style: TextStyle(fontSize: 16),
                            maxLines: 1,
                            controller: TextEditingController(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20,),
                        Text(
                          "Your review ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: Get.width,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextFormField(
                            expands: true,
                            maxLines: null,
                            textAlignVertical: TextAlignVertical.top,
                            decoration: InputDecoration(

                              hintText: 'What would you like to highlight?',

                                contentPadding: EdgeInsets.only(top: 8, left: 8),
                              border: OutlineInputBorder(),
                            ),
                            style: TextStyle(fontSize: 16),
                            controller: TextEditingController(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(child: CustomContainerButton(borderRaduis: 10,text: 'Done', onTap: () {  },textColor: Colors.white,backgroundColor: Color(0xff8B5843),)),
          
            ],
          ),
        ),
      ),
    );
  }
}
