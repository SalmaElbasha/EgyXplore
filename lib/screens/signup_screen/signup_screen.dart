import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_container_button.dart';
import '../../widgets/custom_text_form_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool selectedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackButton(
        onBackTap: () {},
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.transparent,
          height: Get.height-AppBar.preferredHeightFor(context,Size.fromHeight(101.0)),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'AndadaPro',
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    CustomTextFormField(text: 'User name',),
                    SizedBox(height: 40),
                    CustomTextFormField(text: 'Email',),
                    SizedBox(height: 40),
                    CustomTextFormField(text: 'Password',),
                  ],
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          activeColor: Color(0xff8B5843),
                          value: selectedValue,
                          onChanged: (bool? value) {
                            setState(() {
                              selectedValue = value!;
                            });
                          },
                        ),
                        Text(
                          "I accept terms & conditions",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomContainerButton(text: 'Sign up', onTap: () {  },),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF000000),
                        ),
                      ),
                      Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF8B5843),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
