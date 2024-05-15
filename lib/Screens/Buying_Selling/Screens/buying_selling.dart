import 'package:dealsabaad/Screens/Buying_Selling/Screens/offer_details.dart';
import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';

class Buying_Selling extends StatelessWidget {
  final RxInt currentIndex = 2.obs;
  Buying_Selling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DAText.buyingselling,
          style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700),
        ),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            Image.asset('assets/figma1.png'),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(Offer_Detail());
                },
                child: Text(
                  DAText.GetOffer,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: DAColor.black),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(DAColor.lightGrey1),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/figma.png'),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 350,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // Get.to()
                },
                child: Text(
                  DAText.Selling,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: DAColor.black),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(DAColor.lightGrey1),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
              ),
            ),
          ],
        ),
      ),
             bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
    );
  }
}
