import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  final RxInt currentIndex = 3.obs;
  Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DAColor.white,
      appBar: AppBar(
        surfaceTintColor: DAColor.white,
        backgroundColor: DAColor.white,
        title: Text(
          "Profile",
          style: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset(
                        DAImages.person,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Hi, Shaiby Siddique!',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Good Morning',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email',
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500, fontSize: 15),
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
                        hintText: 'shaiby@gmail.com',
                        hintStyle: TextStyle(color: DAColor.lightGrey2),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                      style: TextStyle(color: DAColor.lightGrey2),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mobile Number',
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500, fontSize: 15),
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
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w500, fontSize: 15),
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
                      obscureText: true,
                      cursorColor: DAColor.yellow,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Iconsax.eye),
                        suffixIconColor: DAColor.lightGrey2,
                        hintText: '............',
                        hintStyle: TextStyle(color: DAColor.lightGrey2),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(15),
                      ),
                      style: TextStyle(color: DAColor.lightGrey2),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
    );
  }
}
