import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_container_button.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});
  final categories = [
    "History",
    "Adventure",
    "Beaches",
    "Culture",
    "Desert",
    "Shopping",
    "Nature",
    "Nightlife",
    "Treatment",
    "Arts",
    "Diving",
    "Oasis",
    "Villages",
    "Museums",
    "Festivals",
    "Death tourism"
  ]; // Added more categories for demonstration.

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  List<bool> selectedValues = [];
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();
    selectedValues = List.generate(widget.categories.length, (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = Get.width;
    final double screenHeight = Get.height;

    return Scaffold(
      appBar: CustomBackButton(
        onBackTap: () {},
        skipText: "Skip",
        onSkipTap: () {},
        backGround: const Color(0xFFE4CBAF),
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE4CBAF), Color(0xFFF8E3D3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.03),
              Column(
                children: [
                  Text(
                    "Welcome to our App!",
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    "What type of activities do you enjoy\nduring vacations in Egypt?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Column(
                children: [
                  SizedBox(
                    width: screenWidth * 0.8,
                    height: isExpanded ? null : screenHeight * 0.4,
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 3.5,
                      ),
                      itemCount: isExpanded ? widget.categories.length : 10, // Show limited or all items
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Checkbox(
                              activeColor: const Color(0xff8B5843),
                              value: selectedValues[index],
                              onChanged: (bool? value) {
                                setState(() {
                                  selectedValues[index] = value!;
                                });
                              },
                            ),
                            Flexible(
                              child: Text(
                                widget.categories[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isExpanded = !isExpanded;
                      });
                    },
                    child: Text(
                      isExpanded ? "Show less" : "See more",
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: const Color(0xff794B39),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              Column(
                children: [
                  Text(
                    "Your answer will help us recommend\nthe most suitable Places for you",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth * 0.03,
                      color: const Color(0xff5B5B5B),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  CustomContainerButton(
                    text: 'Submit',
                    onTap: () {},
                    textColor: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
