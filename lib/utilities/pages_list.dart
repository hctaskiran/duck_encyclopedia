import 'package:duck_encyclopedia/pages/tab_pages/duckmap.dart';
import 'package:duck_encyclopedia/pages/tab_pages/encyclopedia_page.dart';
import 'package:flutter/material.dart';
import '../pages/tab_pages/real_home_page.dart';

final List<Widget> pages = [
  const REALHomePage(),
  const EncyclopediaPage(),
  const DuckMap()
];

final List<IconData> bnbicons = [
    Icons.home_outlined,
    Icons.home,
    Icons.book_outlined,
    Icons.book,
    Icons.map_outlined,
    Icons.map_sharp
  ];

