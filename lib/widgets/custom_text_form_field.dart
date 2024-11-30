import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key,  required this.text, this.suffixIcon});
  final String text;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: Get.width * 0.7, // Example: 70% of the screen width
      height: 61,
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: suffixIcon??null,
          labelText: text,
          labelStyle: const TextStyle(

            color: Colors.brown,
            fontSize: 16,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
                color: Colors.brown,
                width: 2
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.brown,
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: Colors.brown,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
