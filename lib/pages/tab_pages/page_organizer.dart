import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_bar_constants.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/components/cards/drawer.dart';
import 'package:frontend_tutorial/utilities/localizated_texts.dart';
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
            activeIcon: Icon(bnbicons[1]), 
            label: LocalizatedTexts().realHomePage
          ),
          BottomNavigationBarItem(
            icon: Icon(bnbicons[2]),
            activeIcon: Icon(bnbicons[3]), 
            label: LocalizatedTexts().encyclopediaPage
          ),
          BottomNavigationBarItem(
            icon: Icon(bnbicons[4]), 
            activeIcon: Icon(bnbicons[5]),
            label: 'alofis'
          )
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
