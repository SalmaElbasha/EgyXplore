import 'package:egyxplore/widgets/custom_back_button.dart';
import 'package:egyxplore/widgets/custom_container_button.dart';
import 'package:egyxplore/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackButton(onBackTap: (){}),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Forget Password?",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 7,),
                    Text(
                      "No problem, we've got you covered.\nEnter your email to reset your password.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff737373),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Center(child: CustomTextFormField(text: 'Email',)),
            ],
          ),
          Column(
            children: [
              CustomContainerButton(text: 'Send Code', onTap: () {  },backgroundColor: Color(0xffC3AC8E),),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Remember your password?",
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
    );
  }
}
