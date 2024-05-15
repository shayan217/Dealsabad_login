import 'package:dealsabaad/Screens/Login/screen/Login_screen.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: Image.asset(DAImages.OnBoarding),
              ),
              Center(
                child: Text(
                  DAText.OnBoardingTitle1,
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                DAText.OnBoardingTitle2,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                ),
              ),
              Text(
                DAText.OnBoardingTitle3,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 350,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    DAText.OnBoardingTitle4,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: DAColor.black),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(DAColor.yellow),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
