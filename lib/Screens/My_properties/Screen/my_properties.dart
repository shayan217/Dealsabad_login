import 'package:dealsabaad/Screens/My_properties/Controller/my_property_controller.dart';
import 'package:dealsabaad/Screens/My_properties_Detail_page/Screens/my_properties_detail.page.dart';
import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class Myproperties extends StatelessWidget {
    final RxInt currentIndex = 0.obs;
  final PropertyController mypropertyController = PropertyController();
  Myproperties({super.key});

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
          DAText.MyProperty1,
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
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DAText.MyProperty2,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: DAColor.darkBlue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(() => Card(
                          child: DropdownButtonHideUnderline(
                            child: Container(
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: DAColor.lightGrey1,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4.5,
                                ),
                                child: DropdownButton(
                                  dropdownColor: DAColor.lightGrey1,
                                  value: mypropertyController
                                      .selectbranchOption.value,
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: DAColor.darkBlue),
                                  onChanged: (newValue) {
                                    mypropertyController
                                        .selectbranchOption(newValue!);
                                  },
                                  items: mypropertyController
                                      .selectbranchDropdown
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: DAColor.darkBlue),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      DAText.MyProperty3,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: DAColor.darkBlue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(() => Card(
                          child: DropdownButtonHideUnderline(
                            child: Container(
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: DAColor.lightGrey1,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4.5,
                                ),
                                child: DropdownButton(
                                  dropdownColor: DAColor.lightGrey1,
                                  value: mypropertyController
                                      .selectbranchOption.value,
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: DAColor.darkBlue),
                                  onChanged: (newValue) {
                                    mypropertyController
                                        .selectbranchOption(newValue!);
                                  },
                                  items: mypropertyController
                                      .selectbranchDropdown
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: DAColor.darkBlue),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      DAText.MyProperty4,
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: DAColor.darkBlue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(() => Card(
                          child: DropdownButtonHideUnderline(
                            child: Container(
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: DAColor.lightGrey1,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 4.5,
                                ),
                                child: DropdownButton(
                                  dropdownColor: DAColor.lightGrey1,
                                  value: mypropertyController
                                      .selectbranchOption.value,
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: DAColor.darkBlue),
                                  onChanged: (newValue) {
                                    mypropertyController
                                        .selectbranchOption(newValue!);
                                  },
                                  items: mypropertyController
                                      .selectbranchDropdown
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: DAColor.darkBlue),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 380,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(MyProperties_detail_page());
                        },
                        child: Text(
                          DAText.MyProperty5,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: DAColor.black),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(DAColor.yellow),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
    );
  }
}
