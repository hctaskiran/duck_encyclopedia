import 'package:duck_encyclopedia/pages/tab_pages/duckmap.dart';
import 'package:duck_encyclopedia/pages/tab_pages/encyclopedia_page.dart';
import 'package:duck_encyclopedia/utilities/localizated_texts.dart';
import 'package:flutter/material.dart';
import '../pages/tab_pages/real_home_page.dart';

final List<Widget> pages = [
  const REALHomePage(),
  const EncyclopediaPage(),
  const DuckMap()
];

final List bnbPages = [
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
    label: LocalizatedTexts().duckMap
  )
];

final List<IconData> bnbicons = [
    Icons.home_outlined,
    Icons.home,
    Icons.book_outlined,
    Icons.book,
    Icons.map_outlined,
    Icons.map_sharp
  ];

