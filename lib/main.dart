
import 'package:egyxplore/screens/forget_password/forget_password_screen.dart';
import 'package:egyxplore/screens/login_screen/login_screen.dart';
import 'package:egyxplore/screens/please_check_your_email/please_check_your_email_screen.dart';
import 'package:egyxplore/screens/reset_password/reset_password_screen.dart';

import 'package:egyxplore/screens/signup_screen/signup_screen.dart';

import 'package:egyxplore/screens/splash/splash_Screen.dart';
import 'package:egyxplore/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'services/memory.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Get.putAsync(() => CacheHelper.init(), permanent: true); // تأكد من تهيئة الـ CacheHelper
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      title: 'EgyXplore',
      debugShowCheckedModeBanner: false,

      home: ResetPasswordScreen(),

    );
  }
}