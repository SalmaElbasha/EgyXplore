import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/welcome_controller.dart';
import 'package:egyxplore/screens/login_screen/login_screen.dart';
import 'package:egyxplore/screens/signup_screen/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      init: WelcomeController(),
      builder: (WelcomeController controller) {
        return Scaffold(
          appBar: AppBar(
            leading: null,
            backgroundColor: Colors.transparent,
            toolbarHeight: Get.height * 0.15,
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      "Explore the app",
                      style: TextStyle(
                        color: Color(0xff533528),
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: Get.width * 0.7,
                      height: Get.height * 0.065,
                      child: Text(
                        "Discover Egypt effortlessly with our tourism app.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff737373),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(LoginScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: Get.width * 0.45,
                      height: Get.height * 0.06,
                      decoration: BoxDecoration(
                        color: Color(0xff8B5843),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignupScreen());
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      width: Get.width * 0.45,
                      height: Get.height * 0.06,
                      decoration: BoxDecoration(
                        color: Color(0xff8B5843),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: Get.width,
                height: Get.height * 0.38,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/0qolgvI-removebg-preview 1.png",
                    ),
                  ),
                ),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    // Background gradient
                    Container(
                      width: Get.width,
                      height: Get.height * 0.38,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xff533528).withOpacity(0.13),
                            Color(0xff533528).withOpacity(0.15),
                            Color(0xff533528).withOpacity(0.35),
                            Color(0xff533528).withOpacity(0.45),
                            Color(0xff533528).withOpacity(0.55),
                            Color(0xff000000).withOpacity(0.45),
                            Color(0xff000000).withOpacity(0.55),
                            Color(0xff000000).withOpacity(0.75),
                          ],
                        ),
                      ),
                    ),
                    // Icon Button
                    IconButton(
                      onPressed: () {
                        controller.changeWidget();
                        print("uuuu");
                        setState(() {});
                      },
                      icon: controller.isClicked
                          ? Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 1,
                                width: Get.width * 0.42,
                                color: Colors.black,
                              ),
                              Text(
                                "OR",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              Container(
                                height: 1,
                                width: Get.width * 0.42,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                    image: AssetImage(
                                      "assets/images/🦆 icon _google circled_.png",
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image(
                                    image: AssetImage(
                                      "assets/images/🦆 icon _facebook squared_.png",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                          : Container(
                        color: Colors.transparent,
                        child: Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.black,
                          size: 45,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
