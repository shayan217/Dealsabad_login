import 'package:dealsabaad/Screens/Add_property/screen/add_property.dart';
import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';

class PayInstallmentProcessCheckout extends StatelessWidget {
    final RxInt currentIndex = 0.obs;
  PayInstallmentProcessCheckout({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DAColor.white,
      appBar: AppBar(
        surfaceTintColor: DAColor.white,
        backgroundColor: DAColor.white,
        title: Text(
          DAText.Hometext3,
          style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              DAImages.easyPaisa,
              width: 300,
            )),
            const SizedBox(
              height: 50,
            ),
            Text(
              DAText.Mobile_Number,
              style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: DAColor.lightGrey1,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                cursorColor: DAColor.yellow,
                decoration: InputDecoration(
                  hintText: '03113294872',
                  hintStyle: TextStyle(color: DAColor.lightGrey2),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(15),
                ),
                style: TextStyle(color: DAColor.lightGrey2),
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 450,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(AddProperty());
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
           bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
    );
  }
}
