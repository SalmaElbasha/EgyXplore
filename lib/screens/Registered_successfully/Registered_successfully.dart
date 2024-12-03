import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_container_button.dart';

class RegisteredSuccessfully extends StatelessWidget {
  const RegisteredSuccessfully({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 200,
                height: 200,
                child: Image.asset(
                  'assets/images/🦆 icon _twitter verified badge_.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  "  Registered\nsuccessfully!",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomContainerButton(text: 'Continue', onTap: () {  },backgroundColor: Color(0xff8B5843),textColor: Colors.white,)
            ],
          ),
        ),
      ),
    );
  }
}
