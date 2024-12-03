import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScamScreen extends StatelessWidget {
  const ScamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: Get.width * 0.9,
              child: AppBar(
                toolbarHeight: 100.0,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                actions: [
                  Container(
                    width: 164,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xff8B5843),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Add Product",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(width: 8),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 25,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Scams",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "you’ll learn about the average prices of products in Egypt\nbased on what other tourists say so that you’re not\nexposed to scam and deception.",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff828282),
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 292,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    ),
                    style: TextStyle(fontSize: 16.0),
                    textInputAction: TextInputAction.search,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: 328,
                    height: 113,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F2F2),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 92,
                          height: 113,
                          child: Image.asset(
                            "assets/images/233c19bd4d2a969a1b0a669fd22e7b60 1.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Egyptian souvenir",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "12/5/2024",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff838383),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Average prices : 44 EGP",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 260,
                                height: 27,
                                decoration: BoxDecoration(
                                  color: Color(0xff8B5843),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                  child: Text(
                                    "Check reviews",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
