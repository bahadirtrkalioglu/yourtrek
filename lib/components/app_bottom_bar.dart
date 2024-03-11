import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:yourtrek/pages/home_page.dart';

class CustomAppBottomBar extends StatefulWidget {
  const CustomAppBottomBar({super.key});

  @override
  State<CustomAppBottomBar> createState() => _CustomAppBottomBarState();
}

class _CustomAppBottomBarState extends State<CustomAppBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade800,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10), )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GNav(
          backgroundColor: Colors.blueGrey.shade800,
          tabBackgroundColor: Colors.blueGrey.shade600,
          gap: 12,
          padding: EdgeInsets.all(16),
          onTabChange: (index){
            if (index == 1){
              Get.to(HomePage());
            }
          },
          tabs: [
            GButton(
              icon: FontAwesomeIcons.house,
              text: "Ana Sayfa",
              iconColor: Colors.white,
              textColor: Colors.white,
              iconActiveColor: Colors.white,
            ),
            GButton(
              icon: FontAwesomeIcons.chartSimple,
              text: "Aktivite",
              iconColor: Colors.white,
              textColor: Colors.white,
              iconActiveColor: Colors.white,
            ),
            GButton(
              icon: FontAwesomeIcons.solidUser,
              text: "Profil",
              iconColor: Colors.white,
              textColor: Colors.white,
              iconActiveColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
