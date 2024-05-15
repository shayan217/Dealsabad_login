import 'package:dealsabaad/Screens/Home/screen/home_screen.dart';
import 'package:dealsabaad/Screens/Profile/Screens/profile_screen.dart';
import 'package:dealsabaad/utils/constent_color.dart';
import 'package:dealsabaad/utils/constent_image.dart';
import 'package:dealsabaad/utils/constent_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  List<Widget> pages = [
     MainHome(),
     MainHome(),
     MainHome(),
     Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: pages.elementAt(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: DAColor.white,
          type: BottomNavigationBarType.fixed,
          onTap: ((value) {
            setState(() {
              _currentIndex = value;
            });
          }),
          items: [
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.home,
                    height: myHeight * 0.03,
                    color: Colors.grey,
                  ),
                  Text(
                    DAText.Home,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
              label: '',
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.home,
                    height: myHeight * 0.03,
                    color: DAColor.black,
                  ),
                  Text(
                    DAText.Home,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.property,
                    height: myHeight * 0.03,
                    color: Colors.grey,
                  ),
                  Text(
                    DAText.Addproperty,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
              label: '',
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.property,
                    height: myHeight * 0.03,
                    color: DAColor.black,
                  ),
                  Text(
                    DAText.Addproperty,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.buysell,
                    height: myHeight * 0.03,
                    color: Colors.grey,
                  ),
                  Text(
                    DAText.BuyingSelling,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
              label: '',
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.buysell,
                    height: myHeight * 0.03,
                    color: DAColor.black,
                  ),
                  Text(
                    DAText.BuyingSelling,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.profile,
                    height: myHeight * 0.03,
                    color: Colors.grey,
                  ),
                  Text(
                    DAText.Profile,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
              label: '',
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    DAImages.profile,
                    height: myHeight * 0.03,
                    color: DAColor.black,
                  ),
                  Text(
                    DAText.Profile,
                    style: GoogleFonts.plusJakartaSans(
                        color: DAColor.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
