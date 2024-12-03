import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomContainerButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final double? borderRaduis;
  const CustomContainerButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor = const Color(0xFFC3AC8E),
    this.textColor = Colors.black, this.borderRaduis,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: Get.width * 0.7, // Example: 70% of the screen width
        height:61,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(borderRaduis??40),
          border: Border.all(color: Color(0xFFC3AC8E), width: 2),
          color: backgroundColor,
        ) ,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: textColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
