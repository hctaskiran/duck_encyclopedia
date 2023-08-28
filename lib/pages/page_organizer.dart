import 'package:flutter/material.dart';
import 'package:frontend_tutorial/constants/app_bar_constants.dart';
import 'package:frontend_tutorial/constants/colors.dart';
import 'package:frontend_tutorial/constants/text_theme_constants.dart';
import 'package:frontend_tutorial/utilities/drawer.dart';
import '../utilities/lists.dart';

class PageOrganizer extends StatefulWidget {
  const PageOrganizer({super.key});

  @override
  State<PageOrganizer> createState() => _PageOrganizerState();
}

class _PageOrganizerState extends State<PageOrganizer> {
  int activeIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.menu_book_rounded,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: abttStyle,
        title: Text(abTitle, style: abStyle),
      ),
      body: pages[activeIndex],
      drawer: const CustomDrawer(),
      backgroundColor: pinkColor,
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: grey200color,
      items:  [
      BottomNavigationBarItem(
        icon: Icon(_icons[0]), label: ev),    
      BottomNavigationBarItem(
          icon: Icon(_icons[1]), label: ansiklopedi),
      BottomNavigationBarItem(
          icon: Icon(_icons[2]), label: ayarlar),
    ],
    currentIndex: activeIndex,
    selectedIconTheme: const IconThemeData(color: greenColor),
    unselectedIconTheme: const IconThemeData(color: grey600color),
    onTap: (index) {
      setState(() {
        activeIndex = index;
      });
    },
    ),
      
    );
  }
}