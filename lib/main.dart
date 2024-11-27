import 'package:egyxplore/screens/on_boarding/on_boarding_1.dart';
import 'package:egyxplore/screens/splash/splash_Screen.dart';
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
      home: OnBoarding1(),
    );
  }
}