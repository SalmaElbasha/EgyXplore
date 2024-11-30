import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../widgets/custom_back_button.dart';
import '../../widgets/custom_container_button.dart';

class EmailVerificationController extends GetxController {
  int timerValue = 20;
  bool canResend = false;
  Timer? countdownTimer;

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  @override
  void onClose() {
    countdownTimer?.cancel();
    super.onClose();
  }

  void startTimer() {
    canResend = false;
    timerValue = 20;
    update();
    countdownTimer?.cancel();
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timerValue > 0) {
        timerValue--;
        update();
      } else {
        timer.cancel();
        canResend = true;
        update();
      }
    });
  }

  void resetTimer() {
    if (canResend) {
      startTimer();
    }
  }
}

class EnterVerificationcodeScreen extends StatelessWidget {
  const EnterVerificationcodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EmailVerificationController());

    return Scaffold(
      appBar: CustomBackButton(onBackTap: () {}),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height*0.85,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(

                      'assets/images/Two factor authentication-rafiki 1.png',
                      fit: BoxFit.cover,

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10,bottom: 29),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Enter Verification code",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 7),
                        Text(
                          "      Secure your account by entering the\nunique verification code sent to your email\nfor a seamless and protected experience.",
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff737373),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: SizedBox(
                      width: Get.width,
                      height: 60,
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(width: Get.width * 0.08),
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: Get.width * 0.16,
                            height: Get.width * 0.2,
                            child: TextFormField(

                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1),  // Only one character
                              ],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0xFFD9BF9E),
                                    width: 2,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  GetBuilder<EmailVerificationController>(
                    builder: (controller) => Center(
                      child: GestureDetector(
                        onTap: controller.canResend ? controller.resetTimer : null,
                        child: Text(
                          "Resend code",
                          style: TextStyle(
                            fontSize: 14,
                            color: controller.canResend
                                ?const Color(0xff794B39)
                                : Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GetBuilder<EmailVerificationController>(
                    builder: (controller) => Center(
                      child: Text(
                        "00:${controller.timerValue.toString().padLeft(2, '0')}",
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: CustomContainerButton(
                      text: 'Verify',
                      onTap: () {},
                      backgroundColor: Color(0xff8B5843),textColor: Colors.white,
                    ),
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
