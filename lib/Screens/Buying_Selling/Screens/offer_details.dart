import 'package:dealsabaad/Screens/price_list/Screens/price_list.dart';
import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';

class Offer_Detail extends StatelessWidget {
    final RxInt currentIndex = 2.obs;
   Offer_Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          DAText.OfferDetails,
          style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          children: [
            DottedBorder(
              borderType: BorderType.RRect,
              radius: const Radius.circular(10),
              color: const Color.fromARGB(255, 228, 41, 181),
              dashPattern: const [4, 4],
              strokeWidth: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 310,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DAText.Project,
                            style: GoogleFonts.plusJakartaSans(
                                color: DAColor.darkBlue,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                          Text('GFS Builder',
                              style: GoogleFonts.plusJakartaSans(
                                  color: DAColor.darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(DAText.UnitNumber,
                              style: GoogleFonts.plusJakartaSans(
                                  color: DAColor.darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          Text('T-91',
                              style: GoogleFonts.plusJakartaSans(
                                  color: DAColor.darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(DAText.YourUnitPrice,
                              style: GoogleFonts.plusJakartaSans(
                                  color: DAColor.darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          Text('Rs. 2,415,000/-',
                              style: GoogleFonts.plusJakartaSans(
                                  color: DAColor.darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(DAText.OfferPrice,
                              style: GoogleFonts.plusJakartaSans(
                                  color: DAColor.darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                          Text('Rs. 2,950,000/-',
                              style: GoogleFonts.plusJakartaSans(
                                  color: DAColor.Green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        DAText.EXPECTEDPROFIT,
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          gradient: DAColor.linearGradient,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            disabledForegroundColor:
                                Colors.transparent.withOpacity(0.38),
                            disabledBackgroundColor:
                                Colors.transparent.withOpacity(0.12),
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: const Center(
                            child: Text(
                              '7535,33',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffffffff),
                                letterSpacing: -0.3858822937011719,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                  Get.to(Price_List());
                },
                child: Text(
                  DAText.AvailOffer,
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
