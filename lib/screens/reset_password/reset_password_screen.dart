import 'package:egyxplore/widgets/custom_back_button.dart';
import 'package:egyxplore/widgets/custom_container_button.dart';
import 'package:egyxplore/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackButton(onBackTap: () {}),
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
                      "Reset Password",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Secure your account with a new password\n1-Mix symbols, numbers, and letters.\n2-Longer is stronger.\n3-Avoid common words.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff737373),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: CustomTextFormField(
                  text: 'New Password',
                  obscureText: !_isPasswordVisible,
                  suffixIcon: Icon(
                    _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.brown,
                  ),
                  onSuffixIconTap: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              SizedBox(height: 50),
              Center(
                child: CustomTextFormField(
                  text: 'Confirm Password',
                  obscureText: !_isConfirmPasswordVisible,
                  suffixIcon: Icon(
                    _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Colors.brown,
                  ),
                  onSuffixIconTap: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                CustomContainerButton(
                  text: 'Reset',
                  onTap: () {},
                  backgroundColor: Color(0xffC3AC8E),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

