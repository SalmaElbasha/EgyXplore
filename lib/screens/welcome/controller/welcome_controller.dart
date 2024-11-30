import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController{
  Widget? change =Container(
      color:Colors.white70,
      child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 45,));
  bool isClicked=false;
  void changeWidget(){
    isClicked=!isClicked;
  update();

  }
}