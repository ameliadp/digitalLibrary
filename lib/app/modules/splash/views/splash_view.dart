import 'package:digitallibrary/app/modules/login/controllers/login_controller.dart';
import 'package:digitallibrary/app/modules/login/views/login_view.dart';
import 'package:digitallibrary/app/modules/utils/color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  final LoginController loginController = Get.put(LoginController());
  SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            'assets/images/logoP.png',
            // width: 250.0,
            height: 220.0,
            fit: BoxFit.contain,
          ),
        ],
      ),
      backgroundColor: colorPrimary,
      nextScreen: LoginView(),
      splashIconSize: 250,
      duration: 1000,
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
