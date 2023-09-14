import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_bar_constants.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/init/locale_keys.g.dart';
import 'package:frontend_tutorial/components/cards/drawer.dart';
import '../../utilities/pages_list.dart';

class PageOrganizer extends StatefulWidget {
  const PageOrganizer({super.key});

  @override
  State<PageOrganizer> createState() => _PageOrganizerState();
}

class _PageOrganizerState extends State<PageOrganizer> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: abttStyle,
        title: Text(abTitle, style: abStyle),
      ),
      body: pages[activeIndex],
      drawer: CustomDrawer(),
      backgroundColor: pinkColor,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: pinkColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(bnbicons[0]),
            activeIcon: Icon(bnbicons[3]), 
            label: LocaleKeys.bottomNavigationBar_realHomePage.tr()
          ),
          BottomNavigationBarItem(
            icon: Icon(bnbicons[1]),
            activeIcon: Icon(bnbicons[4]), 
            label: LocaleKeys.bottomNavigationBar_encyclopediaPage.tr()
          ),
        ],
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
    );
  }
}