import 'package:carousel_slider/carousel_slider.dart';
import 'package:dealsabaad/Screens/Buying_Selling/Screens/buying_selling.dart';
import 'package:dealsabaad/Screens/Buying_Selling/Screens/offer_details.dart';
import 'package:dealsabaad/Screens/Login/screen/Login_screen.dart';
import 'package:dealsabaad/Screens/Receipt_Info/screen/receipt_info.dart';
import 'package:dealsabaad/customwidget/custom_widget.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

// class MainHome extends StatelessWidget {
//   final RxInt currentIndex = 0.obs;
//   MainHome({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: DAColor.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(22.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 45,
//               ),
//               Row(
//                 children: [
//                   Container(
//                     width: 55,
//                     height: 55,
//                     decoration: const BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.transparent,
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(30),
//                       child: Image.asset(
//                         DAImages.person,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   const Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         DAText.Hometext1,
//                         style: TextStyle(
//                           fontWeight: FontWeight.w600,
//                           fontSize: 28,
//                         ),
//                       ),
//                       Text(
//                         DAText.Hometext2,
//                         style: TextStyle(
//                           fontSize: 15,
//                           color: DAColor.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               CarouselSlider(
//                 options: CarouselOptions(
//                   height: 130.0,
//                   enlargeCenterPage: true,
//                   autoPlay: true,
//                   autoPlayInterval: const Duration(seconds: 3),
//                   aspectRatio: 16 / 9,
//                   autoPlayAnimationDuration: const Duration(milliseconds: 800),
//                   viewportFraction: 1,
//                 ),
//                 items: [
//                   DAImages.homeScreenTop,
//                   DAImages.homeScreenTop,
//                   DAImages.homeScreenTop,
//                 ].map((imagePath) {
//                   return Builder(
//                     builder: (BuildContext context) {
//                       return ClipRRect(
//                         borderRadius: BorderRadius.circular(15.0),
//                         child: Image.asset(
//                           imagePath,
//                           fit: BoxFit.cover,
//                           width: 1000,
//                         ),
//                       );
//                     },
//                   );
//                 }).toList(),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(15.0),
//                 child: GestureDetector(
//                   onTap: () => Get.to(Offer_Detail()),
//                   child: Image.asset(
//                     DAImages.home1,
//                     fit: BoxFit.cover,
//                     width: 500,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     height: 140,
//                     width: 170,
//                     decoration: BoxDecoration(
//                       color: DAColor.white,
//                       borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           spreadRadius: 1,
//                           blurRadius: 7,
//                           offset: Offset(0, 3)
//                         )
//                       ]
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           DAImages.homeleft1,
//                           width: 120,
//                           height: 80,
//                         ),
//                         const SizedBox(height: 8),
//                         Text(DAText.Hometext4,
//                             style: GoogleFonts.plusJakartaSans(
//                                 fontSize: 16, fontWeight: FontWeight.w500)),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 5), // Space between containers
//                   Container(
//                     height: 140,
//                     width: 170,
//                     decoration: BoxDecoration(
//                       color: DAColor.white,
//                       borderRadius: BorderRadius.circular(16),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey,
//                           spreadRadius: 1,
//                           blurRadius: 7,
//                           offset: Offset(0, 3)

//                         )
//                       ]
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Image.asset(
//                           DAImages.homeright1,
//                           width: 80,
//                           height: 80,
//                         ),
//                         const SizedBox(height: 8),
//                         Text(DAText.Hometext3,
//                             style: GoogleFonts.plusJakartaSans(
//                                 fontSize: 16, fontWeight: FontWeight.w500)),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 30,
//               ),
//               SizedBox(
//                 width: 380,
//                 height: 55,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     Get.to(Receipt(), transition: Transition.fadeIn);
//                   },
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Add Property",
//                         style: TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 18,
//                             color: DAColor.black),
//                       ),
//                       Icon(Icons.arrow_right_alt_outlined),
//                     ],
//                   ),
//                   style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStateProperty.all(DAColor.lightGrey1),
//                       shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10)))),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(15.0),
//                 child: GestureDetector(
//                   onTap: () => Get.to(Buying_Selling()),
//                   child: Image.asset(
//                     DAImages.home3,
//                     fit: BoxFit.cover,
//                     width: 1000,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar:
//           CustomBottomNavigationBar(currentIndex: currentIndex),
//     );
//   }
// }


class MainHome extends StatelessWidget {
  final RxInt currentIndex = 0.obs;
  MainHome({super.key});
  // void logout() async {
  //   // Clear session data
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.clear();
  //   Get.offAll(LoginScreen());
  // }
  void logout() async {
  // Clear session data
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
  Get.offAll(LoginScreen());
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DAColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        DAImages.person,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        DAText.Hometext1,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        DAText.Hometext2,
                        style: TextStyle(
                          fontSize: 15,
                          color: DAColor.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: 130.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  aspectRatio: 16 / 9,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 1,
                ),
                items: [
                  DAImages.homeScreenTop,
                  DAImages.homeScreenTop,
                  DAImages.homeScreenTop,
                ].map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: GestureDetector(
                  onTap: () => Get.to(Offer_Detail()),
                  child: Image.asset(
                    DAImages.home1,
                    fit: BoxFit.cover,
                    width: 500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: 170,
                    decoration: BoxDecoration(
                      color: DAColor.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3)
                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          DAImages.homeleft1,
                          width: 120,
                          height: 80,
                        ),
                        const SizedBox(height: 8),
                        Text(DAText.Hometext4,
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                  SizedBox(width: 5), // Space between containers
                  Container(
                    height: 140,
                    width: 170,
                    decoration: BoxDecoration(
                      color: DAColor.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3)

                        )
                      ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          DAImages.homeright1,
                          width: 80,
                          height: 80,
                        ),
                        const SizedBox(height: 8),
                        Text(DAText.Hometext3,
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 380,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(Receipt(), transition: Transition.fadeIn);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Property",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: DAColor.black),
                      ),
                      Icon(Icons.arrow_right_alt_outlined),
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(DAColor.lightGrey1),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: GestureDetector(
                  onTap: () => Get.to(Buying_Selling()),
                  child: Image.asset(
                    DAImages.home3,
                    fit: BoxFit.cover,
                    width: 1000,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomNavigationBar(currentIndex: currentIndex),
        floatingActionButton: FloatingActionButton(
        onPressed: logout,
        child: Icon(Icons.logout),
      ),
    );
  }
}
