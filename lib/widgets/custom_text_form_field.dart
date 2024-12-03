import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.suffixIcon,
    this.obscureText = false,
    this.onSuffixIconTap,
  });

  final String text;
  final Widget? suffixIcon;
  final bool obscureText;
  final VoidCallback? onSuffixIconTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.7,
      height: 61,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: onSuffixIconTap,
            child: suffixIcon,
          ),
          labelText: text,
          labelStyle: const TextStyle(
            color: Colors.brown,
            fontSize: 16,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.brown, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.brown, width: 2.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.brown, width: 2.0),
          ),
        ),
      ),
    );
  }
}

