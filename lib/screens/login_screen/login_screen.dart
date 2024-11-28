import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_container_button.dart';
import '../../widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackButton(
        onBackTap: () {},
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: Get.width * 0.7,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                  child:CustomTextFormField(text: 'Email',),
                ),
                  SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: CustomTextFormField(text: 'Password',),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){},
                       child: Text("Forget Password?",
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF565656),
                          decoration: TextDecoration.underline,

                        ),
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
            Column(
              children: [
                CustomContainerButton(text: 'Sign in', onTap: () {  }),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      "Sign up",
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
    );
  }
}
