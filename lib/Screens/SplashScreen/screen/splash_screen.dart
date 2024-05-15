import 'package:dealsabaad/Screens/SplashScreen/controller/splash_controller.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder(
      init: SplashController(),
      builder: (_) => Scaffold(
        backgroundColor: DAColor.darkBlue,
        body: Image.asset(
          DAImages.SplashImage,
          fit: BoxFit.fitWidth,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    ));
  }
}
