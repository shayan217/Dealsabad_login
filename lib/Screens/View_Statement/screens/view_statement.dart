import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewStatement extends StatelessWidget {
  const ViewStatement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DAColor.white,
      appBar: AppBar(
        backgroundColor: DAColor.white,
        surfaceTintColor: DAColor.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: DAColor.darkBlue,
          ),
        ),
        title: Text(
          "View Statement",
          style: GoogleFonts.plusJakartaSans(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: DAColor.darkBlue),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Statement of Account",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: DAColor.darkBlue,
                    ),
                  ),
                  const Divider(
                    color: DAColor.grey2,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name:",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: DAColor.darkBlue,
                        ),
                      ),
                      Text(
                        "Mirza Ajmal Sharif",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: DAColor.lightGrey2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CNIC No:",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: DAColor.darkBlue,
                        ),
                      ),
                      Text(
                        "35200-6154139-3",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: DAColor.lightGrey2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mobile No:",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: DAColor.darkBlue,
                        ),
                      ),
                      Text(
                        "+0971-506227549",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: DAColor.lightGrey2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Registration No:",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: DAColor.darkBlue,
                        ),
                      ),
                      Text(
                        "OTR F-26",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: DAColor.lightGrey2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Booking Date:",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: DAColor.darkBlue,
                        ),
                      ),
                      Text(
                        "30-Apr-2024",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: DAColor.lightGrey2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Unit No:",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: DAColor.darkBlue,
                        ),
                      ),
                      Text(
                        "F-26",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: DAColor.lightGrey2,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Status:",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: DAColor.darkBlue,
                        ),
                      ),
                      Text(
                        "Active",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: DAColor.lightGrey2,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Expended Tiles//
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: DAColor.lightGrey1,
                ),
                child: ExpansionTile(
                  title: Row(
                    children: [
                      Text(
                        "Installment Monthly 1",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: DAColor.darkBlue,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.keyboard_arrow_down,
                    size: 28,
                    color: DAColor.darkBlue,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Amount (PKR):",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: DAColor.darkBlue),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                "75,000.00",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, color: DAColor.darkBlue),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Due Date:",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: DAColor.darkBlue),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                "30-Apr-2024",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, color: DAColor.darkBlue),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Paid Date:",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: DAColor.darkBlue),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                "24-Apr-2024",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, color: DAColor.darkBlue),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Type:",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: DAColor.darkBlue),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                "Monthly",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, color: DAColor.darkBlue),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Outstanding:",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: DAColor.darkBlue),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Text(
                                "67,500",
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, color: DAColor.darkBlue),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
