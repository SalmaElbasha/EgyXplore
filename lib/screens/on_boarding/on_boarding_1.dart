import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Column(
            children: [
              Container(
                child: Image(image: AssetImage("assets/images/Tour-guide-amico(1)1@2x.png")),
                decoration: BoxDecoration(
          
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 25,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff8B5843)
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
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color(0xff8B5843).withOpacity(0.5)
                    ),
                  ),
                ],
              )
            ],
          ),
    );
  }
}
