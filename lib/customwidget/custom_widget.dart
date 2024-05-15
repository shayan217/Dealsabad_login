import 'package:dealsabaad/Screens/Add_property/screen/add_property.dart';
import 'package:dealsabaad/Screens/Buying_Selling/Screens/buying_selling.dart';
import 'package:dealsabaad/Screens/Home/screen/home_screen.dart';
import 'package:dealsabaad/Screens/Profile/Screens/profile_screen.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// class CustomBottomNavigationBar extends StatelessWidget {
//   final RxInt currentIndex;
//   CustomBottomNavigationBar({required this.currentIndex});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: BottomNavigationBar(
//         currentIndex: currentIndex.value,
//         selectedLabelStyle: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.bold, fontSize: 13),
//         unselectedLabelStyle: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.bold, fontSize: 13),
//         selectedItemColor: DAColor.darkBlue,
//         unselectedItemColor: Colors.grey,
//         onTap: (index) {
//           currentIndex.value = index;
//           switch (index) {
//             case 0:
//               Get.to(MainHome());
//               break;
//             case 1:
//               Get.to(AddProperty());
//               break;
//             case 2:
//               Get.to(Buying_Selling());
//               break;
//             case 3:
//               Get.to(Profile());
//               break;
//           }
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.home, 0),
//             label: 'Home',
          
//           ),
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.home, 1),
//             label: 'Add Property',
//           ),
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.home, 2),
//             label: 'Buying/Selling',
//           ),
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.profile, 3),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
//   Widget buildIcon(String asset, int index) {
//     return Obx(() {
//         bool isSelected = currentIndex.value == index;
//         if (isSelected) {
//             return ShaderMask(
//                 shaderCallback: (Rect bounds) {
//                     return LinearGradient(
//                         colors: [Color(0xff2F3F5A), Color(0xff1A202C)],
//                         begin: Alignment.topLeft,
//                         end: Alignment.bottomRight,
//                     ).createShader(bounds);
//                 },
//                 child: Image.asset(
//                     asset,
//                     height: 20,
//                 ),
//             );
//         } else {
//             return ColorFiltered(
//                 colorFilter: ColorFilter.mode(
//                     Colors.grey,
//                     BlendMode.srcIn,
//                 ),
//                 child: Image.asset(
//                     asset,
//                     height: 20,
//                 ),
//             );
//         }
//     });
// }
// }

// class CustomBottomNavigationBar extends StatelessWidget {
//   final RxInt currentIndex;
//   CustomBottomNavigationBar({required this.currentIndex});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 3,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: BottomNavigationBar(
//         currentIndex: currentIndex.value,
//         onTap: (index) {
//           currentIndex.value = index;
//           switch (index) {
//             case 0:
//               Get.to(MainHome());
//               break;
//             case 1:
//               Get.to(AddProperty());
//               break;
//             case 2:
//               Get.to(Buying_Selling());
//               break;
//             case 3:
//               Get.to(Profile());
//               break;
//           }
//         },
//         showSelectedLabels: true, // Ensure selected labels are shown
//         showUnselectedLabels: true, // Ensure unselected labels are shown
//         selectedItemColor: DAColor.darkBlue, // Selected item color
//         unselectedItemColor: Colors.grey, // Unselected item color
//         selectedLabelStyle: GoogleFonts.plusJakartaSans(
//           fontWeight: FontWeight.bold,
//           fontSize: 13,
//           color: DAColor.darkBlue, // Selected label color
//         ),
//         unselectedLabelStyle: GoogleFonts.plusJakartaSans(
//           fontWeight: FontWeight.bold,
//           fontSize: 13,
//           color: Colors.grey, // Unselected label color
//         ),
//         items: [
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.home, 0),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.home, 1),
//             label: 'Add Property',
//           ),
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.home, 2),
//             label: 'Buying/Selling',
//           ),
//           BottomNavigationBarItem(
//             icon: buildIcon(DAImages.profile, 3),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildIcon(String asset, int index) {
//     return Obx(() {
//       bool isSelected = currentIndex.value == index;
//       if (isSelected) {
//         return ShaderMask(
//           shaderCallback: (Rect bounds) {
//             return LinearGradient(
//               colors: [Color(0xff2F3F5A), Color(0xff1A202C)],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ).createShader(bounds);
//           },
//           child: Image.asset(
//             asset,
//             height: 20,
//           ),
//         );
//       } else {
//         return ColorFiltered(
//           colorFilter: ColorFilter.mode(
//             Colors.grey,
//             BlendMode.srcIn,
//           ),
//           child: Image.asset(
//             asset,
//             height: 20,
//           ),
//         );
//       }
//     });
//   }
// }


class CustomBottomNavigationBar extends StatelessWidget {
  final RxInt currentIndex;
  CustomBottomNavigationBar({required this.currentIndex});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex.value,
      onTap: (index) {
        currentIndex.value = index;
        switch (index) {
          case 0:
            Get.to(MainHome(), transition: Transition.noTransition);
            break;
          case 1:
            Get.to(AddProperty(), transition: Transition.noTransition);
            break;
          case 2:
            Get.to(Buying_Selling(), transition: Transition.noTransition);
            break;
          case 3:
            Get.to(Profile(), transition: Transition.noTransition);
            break;
        }
      },
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: DAColor.darkBlue,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold,
        fontSize: 13,
        color: DAColor.darkBlue,
      ),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.bold,
        fontSize: 13,
        color: Colors.grey,
      ),
      items: [
        BottomNavigationBarItem(
          icon: buildIcon(DAImages.home, 0, false),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: buildIcon(DAImages.property, 1, false),
          label: 'Add Property',
        ),
        BottomNavigationBarItem(
          icon: buildIcon(DAImages.buysell, 2, false),
          label: 'Buying/Selling',
        ),
        BottomNavigationBarItem(
          icon: buildIcon(DAImages.profile, 3, false),
          label: 'Profile',
        ),
      ],
    );
  }
  Widget buildIcon(String asset, int index, bool isSelected) {
    if (currentIndex.value == index) {
      return ShaderMask(
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [Color(0xff2F3F5A), Color(0xff1A202C)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds);
        },
        child: Image.asset(
          asset,
          height: 20,
        ),
      );
    } else {
      return ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.grey,
          BlendMode.srcIn,
        ),
        child: Image.asset(
          asset,
          height: 20,
        ),
      );
    }
  }
}
