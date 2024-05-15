import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dealsabaad/Screens/Home/screen/home_screen.dart';
import 'package:dealsabaad/Screens/Login/controller/controller.dart';
import 'package:dealsabaad/Screens/Login/model/model.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

// class LoginScreen extends StatelessWidget {
//   final TextEditingController contactNoController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   LoginScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         statusBarIconBrightness: Brightness.dark,
//       ),
//     );
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             child: Image.asset(
//               DAImages.bubbles,
//             ),
//           ),
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(22.0),
//               child: Column(
//                 children: [
//                   const SizedBox(
//                     height: 190,
//                   ),
//                   Container(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           DAText.LoginTitle,
//                           style: GoogleFonts.plusJakartaSans(
//                             fontSize: 45,
//                             fontWeight: FontWeight.bold,
//                             color: DAColor.darkBlue,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                           DAText.LoginSubTitle,
//                           style: GoogleFonts.plusJakartaSans(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: DAColor.lightGrey2,
//                           ),
//                         ),
//                         Text(
//                           DAText.LoginSubTitle1,
//                           style: GoogleFonts.plusJakartaSans(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: DAColor.lightGrey2,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 35,
//                         ),
//                         Text(
//                           DAText.LoginSubTitle2,
//                           style: GoogleFonts.plusJakartaSans(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: DAColor.darkBlue,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 18,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: DAColor.lightGrey1,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: TextFormField(
//                             controller: contactNoController,
//                             cursorColor: DAColor.yellow,
//                             decoration: InputDecoration(
//                               hintText: '03113294872',
//                               hintStyle: TextStyle(color: DAColor.lightGrey2),
//                               border: InputBorder.none,
//                               contentPadding: EdgeInsets.all(15),
//                             ),
//                             style: TextStyle(color: DAColor.lightGrey2),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Text(
//                           DAText.LoginSubTitle3,
//                           style: GoogleFonts.plusJakartaSans(
//                             fontSize: 15,
//                             fontWeight: FontWeight.w500,
//                             color: DAColor.darkBlue,
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 18,
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             color: DAColor.lightGrey1,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: TextFormField(
//                             controller: passwordController,
//                             obscureText: true,
//                             cursorColor: DAColor.yellow,
//                             decoration: InputDecoration(
//                               suffixIcon: Icon(Iconsax.eye),
//                               suffixIconColor: DAColor.lightGrey2,
//                               hintText: 'Password',
//                               hintStyle: TextStyle(color: DAColor.lightGrey2),
//                               border: InputBorder.none,
//                               contentPadding: EdgeInsets.all(15),
//                             ),
//                             style: TextStyle(color: DAColor.lightGrey2),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Text(
//                               DAText.LoginSubTitle4,
//                               style: GoogleFonts.plusJakartaSans(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w400,
//                                 color: DAColor.lightGrey2,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(
//                           height: 25,
//                         ),
//                         SizedBox(
//                           width: 380,
//                           height: 60,
//                           child: ElevatedButton(
//                             onPressed: () {
//                               String contactNo = contactNoController.text;
//                               String password = passwordController.text;
//                               ApiController.loginUser(
//                                   context, contactNo, password);
//                             },
//                             child: Text(
//                               DAText.LoginTitle,
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 18,
//                                 color: DAColor.black,
//                               ),
//                             ),
//                             style: ButtonStyle(
//                               backgroundColor:
//                                   MaterialStateProperty.all(DAColor.yellow),
//                               shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class LoginScreen extends StatelessWidget {
  final TextEditingController contactNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(
              DAImages.bubbles,
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 190,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DAText.LoginTitle,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: DAColor.darkBlue,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          DAText.LoginSubTitle,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: DAColor.lightGrey2,
                          ),
                        ),
                        Text(
                          DAText.LoginSubTitle1,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: DAColor.lightGrey2,
                          ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Text(
                          DAText.LoginSubTitle2,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: DAColor.darkBlue,
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: DAColor.lightGrey1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: contactNoController,
                            cursorColor: DAColor.yellow,
                            decoration: InputDecoration(
                              hintText: '03113294872',
                              hintStyle: TextStyle(color: DAColor.lightGrey2),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                            ),
                            style: TextStyle(color: DAColor.lightGrey2),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          DAText.LoginSubTitle3,
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: DAColor.darkBlue,
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: DAColor.lightGrey1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            cursorColor: DAColor.yellow,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Iconsax.eye),
                              suffixIconColor: DAColor.lightGrey2,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: DAColor.lightGrey2),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                            ),
                            style: TextStyle(color: DAColor.lightGrey2),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              DAText.LoginSubTitle4,
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: DAColor.lightGrey2,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 380,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              String contactNo = contactNoController.text;
                              String password = passwordController.text;
                              ApiController.loginUser(
                                  context, contactNo, password);
                            },
                            child: Text(
                              DAText.LoginTitle,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: DAColor.black,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(DAColor.yellow),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
